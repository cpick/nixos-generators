{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  system.build.raw = import "${toString modulesPath}/../lib/make-efi-stub-disk-image.nix" {
    inherit config lib pkgs;
  };

  formatAttr = "raw";
}
