#!/usr/bin/perl

# obbrowser - configuration file
# This file is updated automatically every time when is needed.
# Any additional comment and/or indentation will be lost.

=for comment

|| ICON SETTINGS
    | icon_dirs_first     : When looking for icons, look in this directories first,
                            before looking in the directories of the current icon theme.
                            Example: [
                                "$ENV{HOME}/My icons",
                            ],

    | icon_dirs_last      : Look in this directories at the very last, after looked in
                            /usr/share/pixmaps, /usr/share/icons/hicolor and some other
                            directories.
                            Example: [
                                "/usr/share/icons/Tango",
                            ],

    | with_icons          : A true value will make the script to use icons for files and dirs.
                            This option may be slow, depending on your system configuration.

    | gtk_rc_filename     : Absolute path to your gtk-rc file.
                            This file is used to get the current icon theme name.


|| MENU
    | file_manager        : Command to your file manager for opening files and directories.
    | start_path          : An absolute path from which we start to browse the filesystem.
    | dirs_first          : A true value will make the script to order directories before files.

=cut

our $CONFIG = {
  "dirs_first"          => 0,
  "file_manager"        => "pcmanfm",
  "Linux::DesktopFiles" => {
                             gtk_rc_filename => "/home/swampyx/.gtkrc-2.0",
                             icon_dirs_first => undef,
                             icon_dirs_last  => undef,
                             skip_svg_icons  => 0,
                           },
  "start_path"          => "/home/swampyx",
  "VERSION"             => 0.04,
  "with_icons"          => 1,
}