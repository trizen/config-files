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

=>> Examples

** For 'raw':

    {raw => <<'CODE'},
{

    # Create the main menu entry
    my $entry = 'Gtk2::ImageMenuItem'->new('My menu');

    # Set icon
    $entry->set_image('Gtk2::Image'->new_from_icon_name('applications-system','menu'));

    # Create the submenu
    my $submenu = Gtk2::Menu->new;

    # Create a new menu item
    my $item = Gtk2::ImageMenuItem->new('Terminal');

    # Set icon
    $item->set_image('Gtk2::Image'->new_from_icon_name('terminal','menu'));

    # Set a signal (activates on click)
    $item->signal_connect('activate',sub {system 'xterm &'});

    # Append the item to the submenu
    $submenu->append($item);

    # Set the submenu to the entry item
    $entry->set_submenu($submenu);

    # Append the entry to the main menu
    $menu->append($entry);
}
CODE

** For 'tree':

    {
     tree => [
            [{
                Name => "Item name",
                Exec => "command",
                Icon => "icon-name",
            },
            #{
                # ...
            #},
            ],

            'My submenu', 'icon-name'
        ]
    },

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require '/home/swampyx/.config/menutray/config.pl';

our $SCHEMA = [

    #             COMMAND                 LABEL                ICON
    {item => ['stuurman',           'File Manager',       'file-manager']},
    {item => ['sakura',             'Terminal',           'terminal']},
    {item => ['luakit',             'Luakit',             'luakit']},
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
