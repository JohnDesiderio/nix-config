{ username, ... }:
{
  services = {
    xserver = {
      enable = true;

      xkb = {
        layout = "us";
        variant = "";
      };
     
      desktopManager.gnome.enable = true;

      displayManager = {
        gdm.enable = true;

        autoLogin = {
          enable = true;
          user = "${username}";
        };
      };
      

    #  displayManager.autoLogin = {
    #    enable = true;
    #    user = "${username}";
    #  };
    # Enable touchpad support, prolly won't need this for a while  
    #   libinput = {
    #     enable = true; 
    #   };
    };
  };
}
