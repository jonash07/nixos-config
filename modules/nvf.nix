{ ... }:

# to add: statusline, tabufline, colorify, telescope, nvim-tree, autocompletion & lsp, git integration, 

{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "catppuccin";
          style = "macchiato";

        };

        languages = {
          nix.enable = true;
          python.enable = true;
          json.enable = true;

        };

        vimAlias = false;
        filetree.nvimTree.enable = true;
        ui.colorizer.enable = true;
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        git.enable = true;
        lsp.enable = true;

      };

    };

  };

}

