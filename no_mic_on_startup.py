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
            log_file_path = r"~/AppData\Roaming\talon\talon.log"

            command = f'Get-Content -Path "{log_file_path}" -Tail 50 -Wait'

            import subprocess
            subprocess.run(
                ["powershell", "-Command", command], 
                check=True,
                creationflags=subprocess.DETACHED_PROCESS,
                close_fds=True  
                )
        except Exception as e:
            print(f"An error occurred when trying to open the logs: {e}")



app.register("launch", on_launch)