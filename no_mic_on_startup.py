"""Makes that there is no mic selected when talon starts up

allows me to preboot it without accidential recognitions

"""

from talon import Context, Module, actions, settings, app



def on_launch(): 

    actions.sound.set_microphone("None")
    print("Set Mic to nothing")
    import platform
    print("trying to open the logs in a seperate window")
    if platform.system() == "Windows":

        try:
            import subprocess
            import os
            # Expand the user's home directory
            home_dir = os.path.expanduser("~")
            log_file_path = os.path.join(home_dir, "AppData", "Roaming", "talon", "talon.log")


            print("Log File exists:", os.path.exists(log_file_path))

            # PowerShell command with -NoExit to keep the window open
            command = f'Get-Content -Path "{log_file_path}" -Tail 50 -Wait; pause'

            subprocess.run(
                ["powershell", "-NoExit", "-Command", command],
                shell=True,
                creationflags=subprocess.DETACHED_PROCESS,
                close_fds=True
            )
            print("Success opening log file")
            
        except Exception as e:
            print(f"An error occurred when trying to open the logs: {e}")



app.register("launch", on_launch)