    { ... }:

    {
      xdg.mime = {
        enable = true;

        defaultApplications = {
          "text/html" = [ "firefox.desktop" ];
          "application/xhtml+xml" = [ "firefox.desktop" ];
          "application/xml" = [ "firefox.desktop" ];
          "x-scheme-handler/http" = [ "firefox.desktop" ];
          "x-scheme-handler/https" = [ "firefox.desktop" ];
          "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
          "image/png" = [ "org.gnome.Loupe.desktop" ];
          "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
          "image/gif" = [ "org.gnome.Loupe.desktop" ];
          "image/webp" = [ "org.gnome.Loupe.desktop" ];
          "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
          "video/mp4" = [ "org.gnome.Totem.desktop" ];
          "video/webm" = [ "org.gnome.Totem.desktop" ];
          "video/x-matroska" = [ "org.gnome.Totem.desktop" ];
          "audio/mpeg" = [ "org.gnome.Totem.desktop" ];
          "audio/ogg" = [ "org.gnome.Totem.desktop" ];
          "audio/flac" = [ "org.gnome.Totem.desktop" ];
          "text/plain" = [ "vscodium.desktop" ];

          # dont have anything for this
          #"application/pdf" = [ "org.gnome.Evince.desktop" ];
          #"application/epub+zip" = [ "org.gnome.Evince.desktop" ];
        };
      };
    }
