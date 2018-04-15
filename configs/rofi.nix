let
  colors = import ../modules/colors.nix;
in {
  # font = "Terminus 18";
  scrollbar = false;
  separator = "none";

  colors = {
    window = {
      background = colors.black;
      border = colors.black;
      separator = colors.darkestGray;
    };

    rows = {
      normal = {
        background = colors.black;
        foreground = colors.white;
        backgroundAlt = colors.darkestGray;
        highlight = {
          background = colors.red;
          foreground = colors.white;
        };
      };
    };
  };
}
