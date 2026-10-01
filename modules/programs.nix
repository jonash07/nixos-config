{ pkgs, ... }:

{
  programs = {
    git.enable = true;

    steam.enable = true;

    localsend.enable = true;

    obs-studio = {
      enable = true;
      package = (
        pkgs.obs-studio.override {
          cudaSupport = true;
        }
      );

    };

  };

}

