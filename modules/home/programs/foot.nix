{ ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Caskaydia Cove NF:size=10";
        pad = "16x16";
      };
      colors = {
        # This is the Gruvbox Material color scheme, created by @sainnhe.
        # Code taken from https://gist.github.com/rehanzo/71f882adb28b7870b6643cd9eb0e944a
        background="282828";
        foreground="d4be98";

        regular0="3c3836";
        regular1="ea6962";
        regular2="a9b665";
        regular3="d8a657";
        regular4="7daea3";
        regular5="d3869b";
        regular6="89b482";
        regular7="d4be98";

        # Bright colors are the same as non-bright ones.
        # See https://github.com/sainnhe/gruvbox-material/issues/152 for more information.
        bright0="3c3836";
        bright1="ea6962";
        bright2="a9b665";
        bright3="d8a657";
        bright4="7daea3";
        bright5="d3869b";
        bright6="89b482";
        bright7="d4be98";
      };
    };
  };
}
