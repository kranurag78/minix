{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  
  home = {
    username = builtins.getEnv "USER";
    homeDirectory = "/home/${username}";
    stateVersion = "22.11";
    file = {

    };
    sessionVariables = {
      EDITOR = "hx";
      NAME = "Anurag";
    };
  };
}
