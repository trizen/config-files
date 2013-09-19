#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

item: add an item into the menu

    {item => ["command", "label", "icon"]}


cat: add a category into the menu

    {cat => ["name", "label", "icon"]}


begin_cat: begin of a category

    {begin_cat => ["name", "icon"]}


end_cat: end of a category

    {end_cat => undef}


sep: menu line separator

    {sep => undef} or {sep => "label"}


exit: default "Exit" action

    {exit => ["label", "icon"]}


raw: any valid Openbox XML string

    {raw => q(xml string)},


obgenmenu: category provided by obmenu-generator

    {obgenmenu => "label"}


scripts: executable scripts from a directory

    {scripts => ["/my/dir", BOOL, "icon"]}

BOOL - can be either true or false (1 or 0)
    0 => to open the script in background
    1 => to open the script in a new terminal


wine_apps: windows applications installed via wine

    {wine_apps => ["label", "icon"]}

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * By default, category names are case insensitive. (e.g.: X-XFCE == x_xfce)

require '/home/swampyx/.config/obmenu-generator/config.pl';

our $SCHEMA = [

    #             COMMAND                 LABEL                ICON
    {item => ["stuurman",                'File Manager', 'file-manager']},
    {item => ["sakura",                 'Terminal',     'terminal']},
    {item => ["$CONFIG->{editor} /media/PERL/Scripturi\\ Perl/Sidef/bin/sidef", "Sidef script",  "text-x-script"]},
    {item => ["$CONFIG->{editor} /tmp/test.pl",    "TEMP1 script",   "text-x-script"]},
    {item => ["$CONFIG->{editor} /tmp/x.pl",    "TEMP2 script",   "text-x-script"]},

   # {
   #  item => [
   #      "wine \Q/home/swampyx/.wine/drive_c/Program Files/ValuSoft/18 Wheels of Steel American Long Haul/alh.exe",
   #      'Long Haul',
   #      '/home/swampyx/.wine/drive_c/Program Files/ValuSoft/18 Wheels of Steel American Long Haul/help_files/title.png'
   #  ]
  #  },

    {item => ['luakit',     'Luakit', 'luakit']},
    #{item => ["midori", 'Midori',  'midori']},
    {item => ["opera-next", 'Opera',  'opera']},

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

    # {scripts => ['/home/swampyx/Desktop', 1, "text-x-script"]},
    #{cat       => ['others',            'Others',      'applications-system']},

    {wine_apps => ["Wine apps", "applications-other"]},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    {raw => '<menu id="FDSR" label="Disk" icon="/usr/share/icons/Faenza/devices/96/drive-harddisk.png" execute="obbrowser"/>'},

    {sep       => undef},
    {obgenmenu => ['Openbox Settings','applications-engineering']},
    {sep       => undef},

    #{item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default OpenBox action "Exit"
    {exit => ['Exit', 'exit']},
  ]
