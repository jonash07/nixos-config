{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    davinci-resolve
    btop-cuda
    mangohud

    # redbot testing
    javaPackages.compiler.openjdk17
  ];
}
