#!/usr/bin/perl

# menutray - configuration file
# This file will be updated automatically every time when is needed.
# Any additional comment and/or indentation will be lost.

=for comment

|| FILTERING
    | skip_filename_re    : Skip a .desktop file if its name matches the regex.
                            Name is from the last slash to the end. (filename.desktop)
                            Example: qr/^(?:gimp|xterm)\b/,    # skips 'gimp' and 'xterm'

    | skip_entry          : Skip a destkop file if the value from a given key matches the regex.
                            Example: [
                                {key => 'Name', re => qr/(?:about|terminal)/i},
                                {key => 'Exec', re => qr/^xterm/},
                            ],

    | substitutions       : Substitute, by using a regex, in the values of the desktop files.
                            Example: [
                                {key => 'Exec', re => qr/xterm/, value => 'sakura'},
                                {key => 'Exec', re => qr/\\\\/,  value => '\\', global => 1},    # for wine apps
                            ],


|| ICON SETTINGS
    | icon_type           : Menu icon type (menu, small-toolbar, large-toolbar, button, dialog)
    | icon_size           : Icon size in pixels (only for absolute icon paths) (default: [16, 16])
    | missing_image       : Use this icon for missing icons (default: gtk-missing-image)


|| KEYS
    | tooltip_keys        : Valid keys for the tooltip text.
                            Example: ['Comment[es]', 'Comment'],

    | name_keys           : Valid keys for the item names.
                            Example: ['Name[fr]', 'GenericName[fr]', 'Name'],   # french menu


|| PATHS
    | desktop_files_paths   : Absolute paths which contains .desktop files.
                              Example: [
                                '/usr/share/applications',
                                "$ENV{HOME}/.local/share/applications",
                                glob("$ENV{HOME}/.local/share/applications/wine/Programs/*"),
                              ],


|| NOTES
    | Regular expressions:
        * use qr/RE/ instead of 'RE'
        * use qr/RE/i for case insenstive mode

=cut

our $CONFIG = {
  "editor"                 => "geany",
  "gdk_interpolation_type" => "hyper",
  "icon_size"              => [16, 16],
  "icon_type"              => "menu",
  "Linux::DesktopFiles"    => {
                                desktop_files_paths     => [
                                                             "/usr/share/applications",
                                                             "/home/swampyx/.local/share/applications",
                                                           ],
                                keep_empty_categories   => 0,
                                keep_unknown_categories => 1,
                                skip_entry              => undef,
                                skip_filename_re        => qr/^(?:exo-|xfce4-about|Terminal|avahi|b(?:ssh|vnc)|dconf|ffadomixer|gconf|mplayer)/,
                                substitutions           => [
                                                             { global => 1, key => "Exec", re => qr/\\\\/, value => "\\" },
                                                           ],
                                terminal                => "sakura",
                                terminalization_format  => "%s -e '%s'",
                                terminalize             => 1,
                                unknown_category_key    => "other",
                              },
  "missing_image"          => "gtk-missing-image",
  "name_keys"              => ["Name"],
  "set_tooltips"           => 1,
  "tooltip_keys"           => ["Comment"],
  "VERSION"                => 0.42,
}