{ ... }:

{
  imports = [ ./bash.nix ./foot.nix ./git.nix ./vim.nix ./yazi.nix ];
  
  # Enable simple user programs through Home Manager
  programs = {
    firefox.enable = true;
    fuzzel.enable = true;
    gradle.enable = true;
    zathura.enable = true;
  };
}
