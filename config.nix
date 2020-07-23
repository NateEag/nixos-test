{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;

    chromium.enableWideVine = true;
  };

  environment.systemPackages = with pkgs; [
    # Looks like Chromium is massively out of date on nixos 18, and is labeled
    # as "broken". Somewhere around version 64 (current is apparently 84). I
    # tried setting 'allowBroken = true;', per the error message I got, but
    # that failed.
    #
    # Guess I'll have to try this on a NixOS 20 box (which doesn't seem to
    # support Vagrant correctly).
    #
    # When I commented chromium out, installing just vim worked flawlessly.
    # That's something, I guess.
    chromium
    vim
  ];
}
