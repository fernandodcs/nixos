{ inputs, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    # The Home Manager backs up existing configuration files before overwriting them.
    # This option allows you to set a custom file extension for those backed up files.
    backupFileExtension = "backup";

    # Pass flake inputs (like 'inputs.nixpkgs', 'inputs.home-manager') to your
    # home configuration files if they need to reference them directly.
    extraSpecialArgs = { inherit inputs; };

    # Allows home.nix to access the system's nixpkgs via 'pkgs'.
    useGlobalPkgs = true;

    # Allows Home Manager to manage packages for users.
    useUserPackages = true;

    # Define your user for Home Manager and configure it.
    users.fernando = {
      imports = [ ./../home ];
      home.username = "fernando";
      home.homeDirectory = "/home/fernando";
      home.stateVersion = "25.11"; # Do not change this value.

      # Let Home Manager install and manage itself.
      programs.home-manager.enable = true;
    };
  };

  # Define a user account for NixOS.
  users.users.fernando = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
  };
}
