{ pkgs, ... }:

{
  services = {
    # Make sure PulseAudio is disabled as it can conflict with PipeWire.
    pulseaudio.enable = false;
    pipewire = {
      enable = true;

      # Enable PipeWire compatibility layers.
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [ pulseaudioFull ];
}
