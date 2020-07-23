nixpkgs.config = {
  allowUnfree = true;
  chromium.enableWideVine = true;
}

environment.systemPackages =
  [ pkgs.chromium ];
