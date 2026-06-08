start recording:
    speech.disable()
    user.history_clear()
    # user.clear_subtitles() # does not seem relevant in community/knausj
    user.recording_start()

stop recording:
    user.recording_stop()
