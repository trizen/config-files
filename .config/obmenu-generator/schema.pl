#!/usr/bin/perl

# SCHEMA supports the following keys: item, cat, begin_cat, end_cat,
#                                     exit, raw, sep, obgenmenu
#
# Posible values for each of this types are:
# For 'item' : [COMMAND, LABEL, ICON] - icon is optional
# For 'sep'  : A string representing the LABEL for the separator or undef for none
# For 'cat'  : Any of the possible categories. 'cat => [CATEGORY, LABEL, ICON]'
# For 'exit' : undef - default "Exit" action
# For 'raw'  : A hardcoded XML line in the Openbox's menu.xml file format
#    Example : {raw => '<menu icon="" id="client-list-combined-menu" />'},

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to a icon or a valid icon name
#    * Category names are case insensitive. (ex: X-XFCE and x_xfce are equivalent)

require '/home/swampyx/.config/obmenu-generator/config.pl';

our $SCHEMA = [

    #             COMMAND                 LABEL                ICON
    {item => ["pcmanfm",                           'File Manager', 'file-manager']},
    {item => [$CONFIG->{terminal},                 'Terminal',     'terminal']},
    {item => ["$CONFIG->{editor} /media/PERL/Scripturi\\ Perl/Sidef/bin/sidef", "Sidef script",  "text-x-script"]},
    {item => ["$CONFIG->{editor} /tmp/test.pl",    "TEMP script",   "text-x-script"]},

   # {
   #  item => [
   #      "wine \Q/home/swampyx/.wine/drive_c/Program Files/ValuSoft/18 Wheels of Steel American Long Haul/alh.exe",
   #      'Long Haul',
   #      '/home/swampyx/.wine/drive_c/Program Files/ValuSoft/18 Wheels of Steel American Long Haul/help_files/title.png'
   #  ]
  #  },

    {item => ['luakit',     'Luakit', 'luakit']},
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

    {
     raw =>
'<menu id="FDSR" label="Disk" icon="/usr/share/icons/Faenza/devices/96/drive-harddisk.png" execute="obbrowser"/>'
    },

    {obgenmenu => 'Openbox Settings'},
    {sep       => undef},

    #{item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default OpenBox action "Exit"
    {exit => ['Exit', 'exit']},
  ]
