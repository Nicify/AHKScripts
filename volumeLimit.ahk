#SingleInstance force
SetTimer "volumeLimit", 300

volumeLimit()
{
    default_device := SoundGetName()
    if (RegExMatch(default_device, "HM|DAC") == 0) {
        return
    }

    master_volume := SoundGetVolume()
    if (master_volume > 30) {
        SoundSetVolume 24
        TrayTip "" default_device " connected, limit volume to 24", "Master volume", "Iconi Mute"
    }
}