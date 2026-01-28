{ pkgs, ... }:

{
  nix.settings = {
    # Removes duplicate files in NixOS's store directory.
    auto-optimise-store = true;

    # Enable flakes for the system configuration.
    experimental-features = [ "nix-command" "flakes" ];
  };

  # Install commonly-used linux packages.
  environment.systemPackages = with pkgs; [
    gnutar
    p7zip
    unrar
    unzip
  ]; 

  # Set your time zone and internationalisation properties.
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "en_US.UTF-8";
  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2";
  };
  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true;
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.11"; # Do not change this.
}
