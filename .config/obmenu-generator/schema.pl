#!/usr/bin/perl

# obmenu-generator - schema file

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

my $editor = $CONFIG->{editor};

our $SCHEMA = [

    #             COMMAND                 LABEL                ICON
    {item => ["stuurman",             'File Manager', 'file-manager']},
    {item => ["sakura",               'Terminal',     'terminal']},
    {item => ["$editor /tmp/test.pl", "TEMP1 script", "text-x-script"]},
    {item => ["$editor /tmp/x.pl",    "TEMP2 script", "text-x-script"]},
    {item => ['luakit',               'Luakit',       'luakit']},

    #{item => ["midori", 'Midori',  'midori']},
    #{item => ["opera-next", 'Opera',  'opera']},

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
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    {pipe => ["obbrowser",                             "Disk", "drive-harddisk"]},
    {pipe => ["obbrowser '/media/Perl/Paid projects'", "Work", "stock_script"]},

    {sep => undef},

    #{obgenmenu => ['Openbox Settings', 'applications-engineering']},

    ## Custom "Advanced Menu"
    {begin_cat => ['Advanced Settings',               'gnome-settings']},
    {item      => ["$editor ~/.conkyrc",              'Conky RC', $editor]},
    {item      => ["$editor ~/.config/tint2/tint2rc", 'Tint2 Panel', $editor]},

    {begin_cat => ['Obmenu-Generator',                             'menu-editor']},
    {item      => ["$editor ~/.config/obmenu-generator/schema.pl", 'Menu Schema', $editor]},
    {item      => ["$editor ~/.config/obmenu-generator/config.pl", 'Menu Config', $editor]},

    {sep  => undef},
    {item => ["obmenu-generator -p", "Generate a pipe menu", "menu-editor"]},
    {item => ["obmenu-generator -s", "Generate a static menu", "menu-editor"]},
    {item => ["obmenu-generator -p -i", "Generate a pipe menu with icons", "menu-editor"]},
    {item => ["obmenu-generator -s -i", "Generate a static menu with icons", "menu-editor"]},
    {sep  => undef},

    {item    => ['obmenu-generator -d', 'Refresh Icon Set', 'gtk-refresh']},
    {end_cat => undef},

    {begin_cat => ['Openbox',                             'openbox']},
    {item      => ['openbox --reconfigure',               'Reconfigure Openbox', 'openbox']},
    {item      => ["$editor ~/.config/openbox/autostart", 'Openbox Autostart', $editor]},
    {item      => ["$editor ~/.config/openbox/rc.xml",    'Openbox RC', $editor]},
    {item      => ["$editor ~/.config/openbox/menu.xml",  'Openbox Menu', $editor]},
    {end_cat => undef},

    {begin_cat => ['Pacman / Servers',                      'package-manager-icon']},
    {item      => ["gksu $editor /etc/pacman.conf",         'Makepkg Config', 'start-here']},
    {item      => ["gksu $editor /etc/pacman.conf",         'Pacman Config', 'start-here']},
    {item      => ["gksu $editor /etc/pacman.d/mirrorlist", 'Pacman Mirrorlist', 'start-here']},
    {end_cat => undef},
    {end_cat => undef},

    {sep => undef},

    #{item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default OpenBox action "Exit"
    {exit => ['Exit', 'exit']},
  ]
