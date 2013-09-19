#!/usr/bin/perl

# obbrowser - configuration file
# This file is updated automatically every time when is needed.
# Any additional comment and/or indentation will be lost.

=for comment

file_manager (STRING)
    - command to your file manager for opening files and directories.

with_icons (BOOL)
    - a true value will make the script to use icons for files and dirs.
    - this option may be slow, depending on your system configuration.

icon_dirs_first (ARRAY_REF) ['dir', ...]
    - when looking for icons, look in this directories first.

icon_dirs_last (ARRAY_REF) ['dir', ...]
    - when looking for icons, look in this directories last.

dirs_first (BOOL)
    - a true value will make the script to order directories before files.

gtk_rc_filename (STRING)
    - path to your Gtk RC file.
    - this file is used to get the current icon theme name.
    - if the value is undefined (undef), it assumes '/home/swampyx/.gtkrc-2.0'
    - if you're using Gtk3, change its value to: '/home/swampyx/.config/gtk-3.0/settings.ini'

VERSION (NUMBER)
    - version of obbrowser.

=cut

our $CONFIG = {
  dirs_first      => 0,
  file_manager    => "stuurman",
  gtk_rc_filename => undef,
  icon_dirs_first => undef,
  icon_dirs_last  => undef,
  start_path      => "/home/swampyx",
  VERSION         => 0.02,
  with_icons      => 1,
}
