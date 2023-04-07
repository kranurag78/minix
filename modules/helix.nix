{pkgs, ...}: let 

in {
  config.programs.helix = {
    enable = true;
    package = pkgs.helix;
    settings = {
      editor = {
        gutters = ["diff" "line-numbers" "spacer" "diagnostics"];
        cursorline = true;
        cursor-shape.insert = "bar";
        true-color = true;
        lsp.display-messages = true;
        lsp.display-inlay-hints = false;
      };
    };
  };
}