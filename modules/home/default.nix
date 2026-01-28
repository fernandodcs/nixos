{ ... }:

{
  imports = [ ./packages ./programs ./services ];

  # Manage plain text dotfiles.
  home.file = {
    ".config/niri/config.kdl".source = ./niri/config.kdl;
  };

  # Manage user session variables.
  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
}
