{ pkgs, ... }:

{
  # Set up Niri as the default Wayland compositor.
  programs.niri.enable = true;

  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

  services = {
    gnome.gnome-keyring.enable = true;

    # Enable touchpad support.
    libinput.enable = true;
  };

  # Default, system-wide fonts.
  fonts.packages = with pkgs; [
    dejavu_fonts
    liberation_ttf
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];

  environment.systemPackages = with pkgs; [ 
    wl-clipboard

    # Necessary for XWayland support.
    xwayland-satellite
  ];

  programs.xwayland.enable = true;
}
