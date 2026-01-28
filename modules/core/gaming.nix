{ pkgs, ... }:

{ 
  # Enable Steam for game launching.
  programs.steam.enable = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      # Driver for VA-API: Use intel-media-driver for newer GPUs.
      intel-media-driver
      # Optional: For OpenCL features.
      intel-compute-runtime 
    ];
  };
}
