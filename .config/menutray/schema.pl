#!/usr/bin/perl

# menutray - schema file

=for comment
=> Main keys

    sep  => undef
    raw  => PERL_CODE
    item => [COMMAND, LABEL, ICON]
    cat  => [CATEGORY, LABEL, ICON]
    tree => [ARRAY_REF, LABEL, ICON]

=> Menutray's keys

    exit       => [LABEL, ICON]
    menutray   => [LABEL, ICON]
    regenerate => [LABEL, ICON]
    begin_cat  => [$VAR, LABEL, ICON]
    end_cat    => [$VAR]

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/menutray/config.pl";

my $editor = $CONFIG->{editor};

our $SCHEMA = [

    #             COMMAND                 LABEL                ICON
    {item => ['thunar',             'File Manager',       'file-manager']},
    {item => ["$editor /tmp/x.go",  'Test Script',         'text-x-script']},
    {item => ['luakit',             'Luakit Browser',             'luakit']},
    {item => ["gtk-youtube-viewer", "GTK Youtube Viewer", 'gtk-youtube-viewer']},

    {sep => undef},

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

    #                VAR_NAME       LABEL         ICON
    #{begin_cat => ['$my_cat', 'My category', 'cat-icon']},
    #             ... some items ...
    #{end_cat   => '$my_cat'},

    {menutray => ['Menutray', 'preferences-desktop']},

    {sep        => undef},
    {regenerate => ['Regenerate', 'gtk-refresh']},
    {exit       => ['Exit', 'exit']},
  ]
