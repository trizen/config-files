#!/usr/bin/perl

# obbrowser - configuration file
# This file is updated automatically.
# Any additional comment and/or indentation will be lost.

=for comment

# ICON SETTINGS

    | use_gtk3         : Use the Gtk3 library for resolving the icon-paths. (default: 0)
    | with_icons       : Use icons for files and directories.
    | mime_ext_only    : Determine the mimetype by extension only. (may improve performance)

    | icon_size        : Preferred size for icons. (default: 48)
    | generic_fallback : Try to shorten icon name at '-' characters before looking at inherited themes. (default: 1)
    | force_icon_size  : Always get the icon scaled to the requested size. (default: 0)
    | gtk_rc_filename  : Absolute path to the GTK configuration file.

# MENU

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
  file_manager      => "thunar",
  file_manager_icon => "folder-open",
  force_icon_size   => 0,
  generic_fallback  => 1,
  gtk_rc_filename   => "$ENV{HOME}/.gtkrc-2.0",
  icon_size         => 48,
  ignore_dotfiles   => 1,
  mime_ext_only     => 1,
  start_path        => "$ENV{HOME}",
  terminal          => "tilix --working-directory",
  terminal_icon     => "utilities-terminal",
  terminal_label    => "Terminal here...",
  use_gtk3          => 1,
  VERSION           => 0.12,
  with_icons        => 1,
  with_terminal     => 1,
}
