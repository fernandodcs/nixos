{ pkgs, ... }:

{
  # Install Nix packages into your environment.
  home.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    xournalpp
  ];
}
