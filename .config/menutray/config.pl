#!/usr/bin/perl

# menutray - configuration file
# This file will be updated automatically.
# Any additional comment and/or indentation will be lost.

=for comment

|| FILTERING
    | skip_filename_re    : Skip a .desktop file if its name matches the regex.
                            Name is from the last slash to the end. (e.g.: filename.desktop)
                            Example: qr/^(?:gimp|xterm)\b/,    # skips 'gimp' and 'xterm'

    | skip_entry          : Skip a destkop file if the value from a given key matches the regex.
                            Example: [
                                {key => 'Name', re => qr/(?:about|terminal)/i},
                                {key => 'Exec', re => qr/^xterm/},
                            ],

    | substitutions       : Substitute, by using a regex, in the values of the desktop files.
                            Example: [
                                {key => 'Exec', re => qr/xterm/, value => 'tilix'},
                            ],

|| ICON SETTINGS
    | icon_type           : Menu icon type (menu, dnd, small-toolbar, large-toolbar, button, dialog)
    | icon_size           : Icon size in pixels (only for absolute icon paths) (default: [16, 16])
    | missing_image       : Use this icon for missing icons (default: gtk-missing-image)

|| PATHS
    | desktop_files_paths   : Absolute paths which contain .desktop files.
                              Example: [
                                '/usr/share/applications',
                                "$ENV{HOME}/.local/share/applications",
                                glob("$ENV{HOME}/.local/share/applications/wine/Programs/*"),
                              ],

=cut

our $CONFIG = {
  "editor"              => "geany",
  "icon_size"           => [24, 24],
  "icon_type"           => "large-toolbar",
  "Linux::DesktopFiles" => {
                             desktop_files_paths     => [
                                                          "/usr/share/applications",
                                                          "/usr/local/share/applications",
                                                          "$ENV{HOME}/.local/share/applications",
                                                          "$ENV{HOME}/Desktop",
                                                        ],
                             keep_unknown_categories => 1,
                             skip_entry              => [
                                                          {
                                                            key => "Name",
                                                            re  => qr/^(?:Avahi|Qt4?\b|Hardware Locality|File Manager|HDSP|Echomixer|Envy24 |HDAJack|Hwmix|FFADO Mixer)/,
                                                          },
                                                          { key => "OnlyShowIn", re => qr/XFCE/ },
                                                        ],
                             skip_filename_re        => qr/^(?:exo-|xfce4-about|Terminal|avahi|b(?:ssh|vnc)|dconf|ffadomixer|gconf|mplayer|tilix|compton|picom|conky)/,
                             substitutions           => undef,
                             terminal                => "tilix",
                             terminalization_format  => "%s -e '%s'",
                             terminalize             => 1,
                             unknown_category_key    => "other",
                           },
  "locale_support"      => 1,
  "menutray_icon"       => "archlinux",
  "menutray_title"      => "menutray",
  "menutray_tooltip"    => "Applications",
  "missing_image"       => "gtk-missing-image",
  "popup_at_cursor"     => 1,
  "tooltips"            => 1,
  "VERSION"             => 0.53,
}
