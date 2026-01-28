{
  inputs = {
    # Use NixOS's unstable branch.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      # Home Manager release for NixOS's unstable branch.
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { host = "nixos"; inherit self inputs; };

        # Import the system's configuration file.
        modules = [ 
          ./configuration.nix 
        ];
      };
    };
}
