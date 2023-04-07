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
      hms = "home-manager switch";
      hmp = "home-manager packages";
      hme = "home-manager edit";
      c = "clear";
      glo = "git log --color --pretty=format:\"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\" --abbrev-commit";
      ggpush = "git push origin $(git rev-parse --abbrev-ref HEAD)";
    };
    shellAbbrs = {
      gst = "git status";
      gb = "git branch";
      grv = "git remote -v";
      gd = "git diff";
      gaa = "git add --all";
    };
  };
}