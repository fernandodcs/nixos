{ ... }:

{
  imports = [ 
    ./audio.nix
    ./bootloader.nix
    ./gaming.nix
    ./network.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
  ];
}
