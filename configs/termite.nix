let
  colors = import ../modules/colors.nix;
in {
  iconName = "utilities-terminal";
  scrollbackLines = 10000;
  clickableUrl = true;
  font = "Iosevka 13";
  foregroundColor = colors.lightGray;
  foregroundBoldColor = colors.lightGray;
  backgroundColor = "rgba(43, 48, 59, 1)";
  colorsExtra = ''
    #black
    color0  = ${colors.black}
    color8  = ${colors.gray}

    # red
    color1  = ${colors.red}
    color9  = ${colors.red}

    # green
    color2  = ${colors.green}
    color10 = ${colors.green}

    # yellow
    color3  = ${colors.yellow}
    color11 = ${colors.yellow}

    # blue
    color4  = ${colors.blue}
    color12 = ${colors.blue}

    # magenta
    color5  = ${colors.purple}
    color13 = ${colors.purple}

    # cyan
    color6  = ${colors.lemon}
    color14 = ${colors.lemon}

    # white
    color7  = ${colors.white}
    color15 = ${colors.white}
  '';
}
