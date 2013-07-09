#!/usr/bin/perl

# menutray - configuration file

# desktop_files_paths    : Example: [ "$ENV{'HOME'}/.local/share/applications", '/my/path' ]
# skip_file_name_re      : Skip .desktop files if their file names will match the regex.
# skip_app_name_re       : Skip .desktop files based on the value of "Name"
# skip_app_command_re    : Skip .desktop files based on the value of "Exec"
# skip_file_content_re   : Skip .desktop files if the regex matches anywhere in the [Desktop Entry] section
# clean_command_name_re  : Anything matched by this regex in the values of "Exec" will be replaced with nothing.
# icon_type              : Menu icon type (ex: menu, small-toolbar, large-toolbar, button, dialog)
# icon_size              : Icon size in pixels (for full path icons) (default: [16, 16])
# missing_image          : Use this icon when an icon is missing (default: gtk-missing-image)

# For regular expressions
#    * is better to use qr/REGEX/ instead of 'REGEX'

# Regular expression example:
# skip_file_name_re => qr/^(?:avahi|b(?:ssh|vnc))/,
#  `- it will skip any .desktop file which begins with "avahi", "bssh" or "bvnc"

our $CONFIG = {
  categories_case_sensitive => 0,
  clean_command_name_re     => undef,
  desktop_files_paths       => [
                                 "/usr/share/applications",
                                 "/home/swampyx/.local/share/applications",
                               ],
  editor                    => "geany",
  gdk_interpolation_type    => "hyper",
  gtk_rc_filename           => undef,
  icon_size                 => [16, 16],
  icon_type                 => "menu",
  missing_image             => "gtk-missing-image",
  set_tooltips              => 1,
  skip_app_command_re       => undef,
  skip_app_name_re          => undef,
  skip_file_content_re      => undef,
  skip_file_name_re         => qr/^(?:Terminal|avahi|b(?:ssh|vnc)|dconf|ffadomixer|gconf|mplayer|pcmanfm|sakura)/,
  terminal                  => "sakura",
  VERSION                   => 0.38,
}