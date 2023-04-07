{pkgs, ...}: let
  core = with pkgs;
    [
      exa
      fd
      git
      jq
      ripgrep
      sd
    ];
  in {
    home.packages = 
      core;
  }

