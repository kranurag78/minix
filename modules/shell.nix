{
  config,
  pkgs,
  ...
}: let 

in {
    programs.fish = {
    enable = true;
    shellAliases = {
      hm = "home-manager";
      c = "clear";
    };
  };
}