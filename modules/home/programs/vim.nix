{ pkgs, ... }:

{
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ gruvbox-material vimtex ];
    settings = { 
      ignorecase = true; 
      smartcase = true; 
      background = "dark"; 
      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
    };
    extraConfig = ''
      " This is necessary for VimTeX to load properly. The "indent" is optional.
      filetype plugin indent on

      " This enables Vim's and neovim's syntax-related features. Without this, some
      " VimTeX features will not work (see ":help vimtex-requirements" for more info).
      syntax enable

      " Viewer options: One may configure the viewer either by specifying a built-in
      " viewer method:
      let g:vimtex_view_method = 'zathura'

      " VimTeX requires a server for inverse search.
      if empty(v:servername) && exists('*remote_startserver')
        call remote_startserver('VIM')
      endif

      " Enable the gruvbox-material color scheme from @sainnhe.
      colorscheme gruvbox-material
    '';
  };
}
