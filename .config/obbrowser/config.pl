#!/usr/bin/perl

# obbrowser - configuration file
# This file is updated automatically.
# Any additional comment and/or indentation will be lost.

=for comment

|| ICON SETTINGS
    | with_icons       : A true value will make the script to use icons for files and directories.
                         This option may be slow, depending on the configuration of your system.

    | mime_ext_only    : A true value will make the script to get the mimetype by extension only.
                         This will improve the performance, as no content will be read from files.

    | icon_size        : Preferred size for icons. (default: 48)
    | generic_fallback : Try to shorten icon name at '-' characters before looking at inherited themes. (default: 1)

|| MENU
    | terminal         : Command to a terminal emulator for opening directories.
    | file_manager     : Command to a file manager for opening files and directories.
    | browse_label     : Label for "Browse here..." action.
    | terminal_label   : Laber for "Terminal here..." action.
    | with_terminal    : Include the "Terminal here..." menu entry, to open directories in a terminal.
    | start_path       : Absolute path from which to start to browse the filesystem.
    | dirs_first       : Order directories before files.
    | ignore_dotfiles  : Ignore files starting with a dot.

=cut

our $CONFIG = {
  browse_label      => "Browse here...",
  dirs_first        => 1,
  file_manager      => "pcmanfm",
  file_manager_icon => "folder-open",
  generic_fallback  => 1,
  icon_size         => 48,
  ignore_dotfiles   => 1,
  mime_ext_only     => 1,
  start_path        => "$ENV{HOME}",
  terminal          => "tilix --working-directory",
  terminal_icon     => "utilities-terminal",
  terminal_label    => "Terminal here...",
  VERSION           => 0.09,
  with_icons        => 1,
  with_terminal     => 1,
}
