{pkgs, ...}: let 

in {
  config.programs.helix = {
    enable = true;
    package = pkgs.helix;
    settings = {
      theme = "base16_transparent";
      editor = {
        line-number = "relative";
        soft-wrap.enable = true;
        color-modes = true;
        bufferline = "multiple";
        gutters = ["diff" "line-numbers" "spacer" "diagnostics"];
        cursorline = true;
        cursor-shape.insert = "bar";
        true-color = true;
        lsp.display-messages = true;
        lsp.display-inlay-hints = false;
        statusline.mode.normal = "NORMAL";
        statusline.mode.insert = "INSERT";
        statusline.mode.select = "SELECT";
        indent-guides = {
          render = true;
          character = "┊";
          skip-levels = 1;
        };
      };
    };
  };
}