#!/usr/bin/perl

# menutray schema file

# SCHEMA supports the following keys: item, cat, begin_cat, end_cat,
#                                     exit, raw, sep, menutray
#
# Posible values for each of this types are:
# For 'item' : [COMMAND, LABEL, ICON] - icon is optional
# For 'sep'  : A string representing the LABEL for the separator or undef for none
# For 'cat'  : Any of the possible categories. 'cat => [CATEGORY, LABEL, ICON]'
# For 'exit' : undef - default "Exit" action
# For 'tree' : [ARRAY_REF, CAT_NAME, ICON] - ARRAY_REF must contain at least
#                                            one HASH_REF, which contains
#                                            Exec, Name and Icon keys
# For 'raw'  : A hardcoded XML line in the Openbox's menu.xml file format

=for comment                -- raw usage example --
    {raw => <<'CODE'
    $all_apps = Gtk2::Menu->new;
    my $submenu_001 = 'Gtk2::ImageMenuItem'->new('Submenu with items');
    $submenu_001->set_image('Gtk2::Image'->new_from_icon_name('applications-system','menu'));
    my $term_item = Gtk2::ImageMenuItem->new('Terminal');
    $term_item->set_image('Gtk2::Image'->new_from_icon_name('terminal','menu'));
    $term_item->signal_connect('activate',sub {system 'xterm &'});
    $all_apps->append($term_item);
    $submenu_001->set_submenu($all_apps);
    $menu->append($submenu_001);
CODE
    },
=cut

# Special variables: $all_apps : Gtk2::Menu with applications for a submenu
#                    $menu     : Main Gtk2::Menu which contains submenus

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to a icon or a valid icon name
#    * Category names are case insensitive. (ex: X-XFCE and x_xfce are equivalent)

require '/home/swampyx/.config/menutray/config.pl';

our $SCHEMA = [

    #             COMMAND                 LABEL                ICON
    {item => ['pcmanfm',            'File Manager',       'file-manager']},
    {item => [$CONFIG->{terminal},  'Terminal',           'terminal']},
    #{item => ['luakit',             'Luakit',             'luakit']},
    {item => ["gtk-youtube-viewer", "GTK Youtube Viewer", 'gtk-youtube-viewer']},

    {sep => 'Applications'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #                VAR_NAME        LABEL         ICON
    #{begin_cat => ['$my_cat', 'My category',  'cat-icon']},
    #{item => ["gtk-youtube-viewer", "GTK Youtube Viewer", 'gtk-youtube-viewer']},
    #             ... some items ...
    #{end_cat   => '$my_cat'},

    #                      ARRAY_REF of HASH_REFS                  SUBMENU NAME    ICON
    #{tree => [[{Name=>"Item name",Exec=>"command",Icon=>"start"}],'My submenu','icon-name']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    {menutray   => ['Menutray',   'preferences-desktop']},
    {sep        => undef},
    {regenerate => ['Regenerate', 'gtk-refresh']},
    {exit       => ['Exit',       'gtk-quit']},
  ]
