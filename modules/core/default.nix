{ ... }:

{
  imports = [ 
    ./audio.nix
    ./bootloader.nix
    ./network.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
  ];
}
