{ pkgs,... }:

{
    programs.niri.enable = true;
    programs.niri.package = pkgs.niri;

    xdg.configFile."niri/config.kdl".text = ''
    include "~/.config/niri/noctalia.kdl"
    spawn-at-startup "noctalia"
    workspace "1"
    workspace "2"
    workspace "3"
    workspace "4"
    workspace "5"
    workspace "I"
    workspace "N"
    workspace "D"
    workspace "T"
    workspace "$"
    workspace "B"

    cursor {
        xcursor-theme "Bibata-Modern-Classic"
        xcursor-size 18
    }

    screenshot-path "~/Nextcloud/Personal/Screenshots/Linux/%Y-%m/%d_%H-%M-%S.png"

    binds {

        

        // Applications
        Mod+Return hotkey-overlay-title="Open Terminal: kitty" {
            spawn "kitty";
        }

        Mod+Space hotkey-overlay-title="Open App Launcher: noctalia launcher" {
            spawn-sh "noctalia msg panel-open launcher";
        }

        Mod+ALT+L hotkey-overlay-title="Lock Screen: noctalia lock" {
            spawn-sh "noctalia msg session lock";
        }

        Mod+Shift+Q hotkey-overlay-title="Session Menu: noctalia sessionMenu" {
            spawn-sh "noctalia msg panel-open session";
        }

        Mod+E hotkey-overlay-title="File Manager: Nautilus" {
            spawn "nautilus";
        }


        // Media Controls
        XF86AudioRaiseVolume allow-when-locked=true {
            spawn-sh "noctalia msg volume-up 5";
        }

        XF86AudioLowerVolume allow-when-locked=true {
            spawn-sh "noctalia msg volume-down 5";
        }

        XF86AudioMute allow-when-locked=true {
            spawn-sh "noctalia msg volume-mute";
        }

        XF86AudioMicMute allow-when-locked=true {
            spawn-sh "noctalia msg mic-mute";
        }

        XF86AudioNext allow-when-locked=true {
            spawn-sh "noctalia msg media next";
        }

        XF86AudioPrev allow-when-locked=true {
            spawn-sh "noctalia msg media previous";
        }

        XF86AudioPlay allow-when-locked=true {
            spawn-sh "noctalia msg media toggle";
        }

        XF86AudioPause allow-when-locked=true {
            spawn-sh "noctalia msg media toggle";
        }


        // Brightness
        XF86MonBrightnessUp allow-when-locked=true {
            spawn-sh "noctalia msg brightness-up eDP-1 5";
        }

        XF86MonBrightnessDown allow-when-locked=true {
            spawn-sh "noctalia msg brightness-down eDP-1 5";
        }


        // Window Movement and Focus
        Mod+Q {
            close-window;
        }

        Mod+Left {
            focus-column-left;
        }

        Mod+Right {
            focus-column-right;
        }

        Mod+Up {
            focus-window-up;
        }

        Mod+Down {
            focus-window-down;
        }

        Mod+Shift+Down {
            move-window-down;
        }

        Mod+Shift+Up {
            move-window-up;
        }

        Mod+Home {
            focus-column-first;
        }

        Mod+End {
            focus-column-last;
        }

        Mod+CTRL+Home {
            move-column-to-first;
        }

        Mod+CTRL+End {
            move-column-to-last;
        }


        // Workspace Switching
        Mod+WheelScrollDown cooldown-ms=150 {
            focus-workspace-down;
        }

        Mod+WheelScrollUp cooldown-ms=150 {
            focus-workspace-up;
        }

        Mod+CTRL+WheelScrollDown cooldown-ms=150 {
            move-column-to-workspace-down;
        }

        Mod+CTRL+WheelScrollUp cooldown-ms=150 {
            move-column-to-workspace-up;
        }

        Mod+WheelScrollRight {
            focus-column-right;
        }

        Mod+WheelScrollLeft {
            focus-column-left;
        }

        Mod+CTRL+WheelScrollRight {
            move-column-right;
        }

        Mod+CTRL+WheelScrollLeft {
            move-column-left;
        }

        Mod+Shift+WheelScrollDown {
            focus-column-right;
        }

        Mod+Shift+WheelScrollUp {
            focus-column-left;
        }

        Mod+CTRL+Shift+WheelScrollDown {
            move-column-right;
        }

        Mod+CTRL+Shift+WheelScrollUp {
            move-column-left;
        }

        Mod+Shift+Ctrl+Left {
            move-workspace-to-monitor-left;
        }

        Mod+Shift+Ctrl+Right {
            move-workspace-to-monitor-right;
        }


        // Workspaces
        Mod+1 {
            focus-workspace "1";
        }

        Mod+Shift+1 {
            move-column-to-workspace "1";
        }

        Mod+2 {
            focus-workspace "2";
        }

        Mod+Shift+2 {
            move-column-to-workspace "2";
        }

        Mod+3 {
            focus-workspace "3";
        }

        Mod+Shift+3 {
            move-column-to-workspace "3";
        }

        Mod+4 {
            focus-workspace "4";
        }

        Mod+Shift+4 {
            move-column-to-workspace "4";
        }

        Mod+5 {
            focus-workspace "5";
        }

        Mod+Shift+5 {
            move-column-to-workspace "5";
        }

        Mod+I {
            focus-workspace "I";
        }

        Mod+Shift+I {
            move-column-to-workspace "I";
        }

        Mod+B {
            focus-workspace "B";
        }

        Mod+Shift+B {
            move-column-to-workspace "B";
        }

        Mod+T {
            focus-workspace "$";
        }

        Mod+Shift+T {
            move-column-to-workspace "$";
        }

        Mod+D {
            focus-workspace "D";
        }

        Mod+Shift+D {
            move-column-to-workspace "D";
        }

        Mod+M {
            focus-workspace "T";
        }

        Mod+Shift+M {
            move-column-to-workspace "T";
        }

        Mod+N {
            focus-workspace "N";
        }

        Mod+Shift+N {
            move-column-to-workspace "N";
        }


        // Layout
        Mod+CTRL+F {
            expand-column-to-available-width;
        }

        Mod+Minus {
            set-column-width "-10%";
        }

        Mod+Plus {
            set-column-width "+10%";
        }

        Mod+Shift+Minus {
            set-window-height "-10%";
        }

        Mod+Shift+Plus {
            set-window-height "+10%";
        }


        // Modes
        Mod+CTRL+T {
            toggle-window-floating;
        }

        Mod+O repeat=false {
            toggle-overview;
        }

        Mod+F {
            maximize-column;
        }

        Mod+Shift+Left {
            consume-or-expel-window-left;
        }

        Mod+Shift+Right {
            consume-or-expel-window-right;
        }


        // Screenshots
        CTRL+Shift+1 {
            screenshot;
        }

        CTRL+Shift+2 {
            screenshot-screen;
        }

        CTRL+Shift+3 {
            screenshot-window;
        }
    }




    input {
        focus-follows-mouse max-scroll-amount="33%"
        touchpad {
            natural-scroll
            tap
            tap-button-map "left-right-middle"
            click-method "clickfinger"
        }
    }


    layout {
        gaps 8

        focus-ring

        shadow

        default-column-width {
            proportion 0.5;
        }
    }



    animations {
        off
    }

    output "eDP-1" {
        mode "1920x1080@60.020"
        scale 1.2
        transform "normal"
        position x=0 y=0
        variable-refresh-rate
    }

    output "Samsung Electric Company Odyssey G40B HNMW200062" {
        mode "1920x1080@239.760"
        scale 1
        transform "normal"
        position x=1600 y=0
    }



    hotkey-overlay {
        skip-at-startup
    }



    window-rule {
        draw-border-with-background false
    }



    window-rule {
        match app-id=r"kitty"

        open-maximized true
    }

    window-rule {
        match app-id=r"org.gnome.Nautilus" title=r"Bildgröße anpassen"

        focus-ring {
            off
        }
    }

    window-rule {
        match app-id=r"org.gnome.Nautilus" title=r"Bilder drehen"

        focus-ring {
            off
        }
    }



    gestures {
        hot-corners {
            off
        }
    }



    overview {
        workspace-shadow {
            off
        }
    }
    '';
}
