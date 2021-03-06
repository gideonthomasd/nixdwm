# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Set your time zone.
  time.timeZone = "Europe/London";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s3.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
     font = "Lat2-Terminus16";
     keyMap = "uk";
  };

  

  # Configure keymap in X11
  services.xserver.layout = "gb";
  services.xserver.xkbOptions = "eurosign:e";

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.brlaser ];

  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.desktopManager.xfce.noDesktop = true;
  services.xserver.desktopManager.xfce.enableXfwm = false;

  nixpkgs.overlays = [
	(self: super: {
		dwm = super.dwm.overrideAttrs (_: {
	src = builtins.fetchGit https://github.com/gideonthomasd/mydwm.git;
	});
 })
 ];
 
 services.xserver.displayManager.defaultSession = "none+dwm";
 services.xserver.windowManager.dwm.enable = true;
 
 #####i3#################################

 boot.supportedFilesystems = [ "ntfs" ];

 environment.pathsToLink = [ "/libexec" ];
 services.xserver.windowManager.i3 = {
 enable = true;
 extraPackages = with pkgs; [
	i3status
	i3blocks
	];
	};
services.xserver.windowManager.i3.package = pkgs.i3-gaps;	

######Fonts##############################
fonts.fonts = with pkgs; [
noto-fonts
cantarell-fonts
google-fonts
noto-fonts-emoji
(nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })

];
########## bspwm ###########
services.xserver.windowManager.bspwm = {
enable = true;


};
########## openbox ##########
services.xserver.windowManager.openbox.enable = true;



#xsession.windowManager.bspwm.startupPrograms = [ "sxhkd -c /home/phil/.config/bspwm/sxhkdrc" ];

  # Enable sound.
 sound.enable = true;
 hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.phil = {
     isNormalUser = true;
     extraGroups = [ "wheel" "phil" ]; # Enable ‘sudo’ for the user.
  };
  
  nixpkgs.config.allowUnfree = true;
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     wget vim
     firefox
git
geany
termite
pcmanfm
xfce.thunar
xfce.thunar-volman
gvfs
jgmenu
xcompmgr
sxhkd
clipit
feh
lxappearance
dmenu
lxtask
rofi
mfcj6510dwlpr
bspwm
openbox
tint2
xarchiver
openbox-menu
menumaker
xterm
plank
obconf
unzip
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.09"; # Did you read the comment?

}

