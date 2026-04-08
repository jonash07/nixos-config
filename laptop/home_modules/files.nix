{ ... }:

{
  home.file.".config/.mischypr/misc.conf" = {
    enable = true;
    text = ''
#############
### INPUT ###
#############

# https://wiki.hypr.land/Configuring/Variables/#input
input {
  touchpad {
    disable_while_typing=false
    natural_scroll=false
  }
  follow_mouse=1
  kb_layout=pl
  kb_model=
  kb_options=
  kb_rules=
  kb_variant=
  sensitivity=0
}

# See https://wiki.hypr.land/Configuring/Gestures
# gesture = 3, horizontal, workspace

device {
  name=epic-mouse-v1
  sensitivity=-0.5
}

################
### MONITORS ###
################

# See https://wiki.hypr.land/Configuring/Monitors/
monitor=eDP-1, 1920x1080@60, 0x0, 1
    '';
  
  };

}

