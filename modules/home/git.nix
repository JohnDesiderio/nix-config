{ pkgs, username, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "JohnDesiderio";
        email = "johnfrancisdesiderio@gmail.com";
      };

      init.defaultBranch = "main";
      merge.conflictStyle = "diff3";
      diff.colorMoved = "default";
      pull.ff = "only";
      color.ui = true;
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;

    options = {
      line-numbers = true;
      side-by-side = true;
      diff-so-fancy = true;
      navigate = true;
    };
  };

  home.packages = with pkgs; [
    gh
    serie
  ];

  xdg.configFile."git/.gitignore".text = ''
    .vscode
  '';

  # Gotta figure out aliases I guess
}
