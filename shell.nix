{pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
        zig
        zls
        pkg-config

        dbus.dev # dbus-1 - dbus/dbus.h
        libGL.dev # GLESv2 - GLES2/gl2platform.h
        libusb1.dev # libusb-1.0
        libdecor.dev # libdecor-0
        ibus.dev # ibus-1.0
        libdrm.dev # libdrm

        udev.dev
        mesa.dev # gbm
        liburing.dev

        wayland.dev
        libxkbcommon.dev

        wayland
        wayland-protocols
        wayland-scanner
        wayland-scanner.dev
        libxkbcommon 

        xorg.libX11.dev
        xorg.libXext.dev
        xorg.libXcursor.dev
        xorg.libXi
        xorg.libXrandr.dev
        xorg.libXScrnSaver

        jack2.dev
        pipewire.dev
        pulseaudio.dev
        alsa-lib.dev
        sndio

        # libunwind
        # libiconv
    ];

    shellHook = ''
        export SDL_VIDEODRIVER=wayland
    '';
}
