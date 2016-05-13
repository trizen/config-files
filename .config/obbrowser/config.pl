#!/usr/bin/perl

# obbrowser - configuration file
# This file is updated automatically.
# Any additional comment and/or indentation will be lost.

=for comment

|| ICON SETTINGS
    | icon_dirs_first  : While searching for icons, look in this directories first,
                         before looking in the directories of the current icon theme.
                         Example: [
                            "$ENV{HOME}/My icons",
                         ],

    | icon_dirs_last   : While searching for icons, also look in this icon directories.
                         Example: [
                            "/usr/share/icons/Tango",
                         ],

    | with_icons       : A true value will make the script to use icons for files and directories.
                         This option may be slow, depending on the configuration of your system.

    | mime_ext_only    : A true value will make the script to get the mimetype by extension only.
                         This will improve the performance, as no content will be read from files.

    | gtk_rc_filename  : Absolute path to the gtkrc file.
                         This file is used to get the name of the current icon theme.


|| MENU
    | file_manager     : Command to your file manager for opening files and directories.
    | browse_label     : Label for browse here action.
    | start_path       : An absolute path from which to start to browse the filesystem.
    | dirs_first       : A true value will make the script to order directories before files.

=cut

our $CONFIG = {
               "browse_label"        => "Browse here...",
               "dirs_first"          => 0,
               "file_manager"        => "pcmanfm",
               "Linux::DesktopFiles" => {
                                         gtk_rc_filename => "/home/swampyx/.gtkrc-2.0",
                                         icon_dirs_first => undef,
                                         icon_dirs_last  => undef,
                                         skip_svg_icons  => 0,
                                        },
               "mime_ext_only" => 1,
               "start_path"    => "/home/swampyx",
               "VERSION"       => 0.06,
               "with_icons"    => 1,
              }
