#!/usr/bin/perl

# Menu generated by menutray

# DO NOT edit this file!
# Any change in this file will be lost!
# Edit /home/swampyx/.config/menutray/schema.pl instead!

use Gtk2 ('-init');

my $menu = 'Gtk2::Menu'->new;
my $icon = 'Gtk2::StatusIcon'->new;

$icon->set_from_icon_name('start-here');
$icon->set_visible(1);
$icon->signal_connect('button-release-event', \&show_icon_menu);
$icon->set_tooltip('Click for menu...');

load_menu();

sub show_icon_menu {
    $menu->popup(undef, undef, sub {return Gtk2::StatusIcon::position_menu($menu, 0, 0, $icon)}, [1, 1], 0, 0);
    return 1;
}

sub load_menu {
{
    my $item_pcmanfm_6413 = 'Gtk2::ImageMenuItem'->new("File\ Manager");
    $item_pcmanfm_6413->set_image('Gtk2::Image'->new_from_icon_name("file\-manager",q{menu}));
    $item_pcmanfm_6413->signal_connect('activate', sub {system "pcmanfm &"});
    $menu->append($item_pcmanfm_6413);
}

{
    my $item_sakura_4495 = 'Gtk2::ImageMenuItem'->new("Terminal");
    $item_sakura_4495->set_image('Gtk2::Image'->new_from_icon_name("terminal",q{menu}));
    $item_sakura_4495->signal_connect('activate', sub {system "sakura &"});
    $menu->append($item_sakura_4495);
}

{
    my $item_luakit_1824 = 'Gtk2::ImageMenuItem'->new("Luakit");
    $item_luakit_1824->set_image('Gtk2::Image'->new_from_icon_name("luakit",q{menu}));
    $item_luakit_1824->signal_connect('activate', sub {system "luakit &"});
    $menu->append($item_luakit_1824);
}

{
    my $item_gtk_youtube_viewer_4743 = 'Gtk2::ImageMenuItem'->new("GTK\ Youtube\ Viewer");
    $item_gtk_youtube_viewer_4743->set_image('Gtk2::Image'->new_from_icon_name("gtk\-youtube\-viewer",q{menu}));
    $item_gtk_youtube_viewer_4743->signal_connect('activate', sub {system "gtk\-youtube\-viewer &"});
    $menu->append($item_gtk_youtube_viewer_4743);
}


    $menu->append('Gtk2::SeparatorMenuItem'->new);

    # # # # # # # # # # # # # # # # # # # # ACCESSORIES # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_1 = 'Gtk2::ImageMenuItem'->new("Accessories");
    $category_1->set_image('Gtk2::Image'->new_from_icon_name("applications\-utilities",q{menu}));
{
    my $app_7_zip_fm_4727 = 'Gtk2::ImageMenuItem'->new("7\-Zip\ FM");
    $app_7_zip_fm_4727->signal_connect('activate', sub {system "7zFM &"});
    $app_7_zip_fm_4727->set_property('tooltip_text', "");
    $app_7_zip_fm_4727->set_image('Gtk2::Image'->new_from_icon_name("p7zip",q{menu}));
    $apps->append($app_7_zip_fm_4727);
}
{
    my $app_archive_manager_9511 = 'Gtk2::ImageMenuItem'->new("Archive\ Manager");
    $app_archive_manager_9511->signal_connect('activate', sub {system "file\-roller &"});
    $app_archive_manager_9511->set_property('tooltip_text', "Create\ and\ modify\ an\ archive");
    $app_archive_manager_9511->set_image('Gtk2::Image'->new_from_icon_name("file\-roller",q{menu}));
    $apps->append($app_archive_manager_9511);
}
{
    my $app_leafpad_8813 = 'Gtk2::ImageMenuItem'->new("Leafpad");
    $app_leafpad_8813->signal_connect('activate', sub {system "leafpad &"});
    $app_leafpad_8813->set_property('tooltip_text', "Simple\ text\ editor");
    $app_leafpad_8813->set_image('Gtk2::Image'->new_from_icon_name("leafpad",q{menu}));
    $apps->append($app_leafpad_8813);
}
    $category_1->set_submenu($apps);
    $menu->append($category_1);
}

    # # # # # # # # # # # # # # # # # # # # DEVELOPMENT # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_2 = 'Gtk2::ImageMenuItem'->new("Development");
    $category_2->set_image('Gtk2::Image'->new_from_icon_name("applications\-development",q{menu}));
{
    my $app_geany_2997 = 'Gtk2::ImageMenuItem'->new("Geany");
    $app_geany_2997->signal_connect('activate', sub {system "geany &"});
    $app_geany_2997->set_property('tooltip_text', "A\ fast\ and\ lightweight\ IDE\ using\ GTK2");
    $app_geany_2997->set_image('Gtk2::Image'->new_from_icon_name("geany",q{menu}));
    $apps->append($app_geany_2997);
}
{
    my $app_meld_7308 = 'Gtk2::ImageMenuItem'->new("Meld");
    $app_meld_7308->signal_connect('activate', sub {system "meld &"});
    $app_meld_7308->set_property('tooltip_text', "Compare\ and\ merge\ your\ files");
    $app_meld_7308->set_image('Gtk2::Image'->new_from_icon_name("meld",q{menu}));
    $apps->append($app_meld_7308);
}
{
    my $app_qt4_assistant_2948 = 'Gtk2::ImageMenuItem'->new("Qt4\ Assistant");
    $app_qt4_assistant_2948->signal_connect('activate', sub {system "assistant\-qt4 &"});
    $app_qt4_assistant_2948->set_property('tooltip_text', "Shows\ Qt4\ documentation\ and\ examples");
    $app_qt4_assistant_2948->set_image('Gtk2::Image'->new_from_icon_name("assistant\-qt4",q{menu}));
    $apps->append($app_qt4_assistant_2948);
}
{
    my $app_qt4_designer_2106 = 'Gtk2::ImageMenuItem'->new("Qt4\ Designer");
    $app_qt4_designer_2106->signal_connect('activate', sub {system "designer\-qt4 &"});
    $app_qt4_designer_2106->set_property('tooltip_text', "Design\ GUIs\ for\ Qt4\ applications");
    $app_qt4_designer_2106->set_image('Gtk2::Image'->new_from_icon_name("designer\-qt4",q{menu}));
    $apps->append($app_qt4_designer_2106);
}
{
    my $app_qt4_linguist_5683 = 'Gtk2::ImageMenuItem'->new("Qt4\ Linguist");
    $app_qt4_linguist_5683->signal_connect('activate', sub {system "linguist\-qt4 &"});
    $app_qt4_linguist_5683->set_property('tooltip_text', "Add\ translations\ to\ Qt4\ applications");
    $app_qt4_linguist_5683->set_image('Gtk2::Image'->new_from_icon_name("linguist\-qt4",q{menu}));
    $apps->append($app_qt4_linguist_5683);
}
{
    my $app_qt4_qdbusviewer_7421 = 'Gtk2::ImageMenuItem'->new("Qt4\ QDbusViewer");
    $app_qt4_qdbusviewer_7421->signal_connect('activate', sub {system "qdbusviewer\-qt4 &"});
    $app_qt4_qdbusviewer_7421->set_property('tooltip_text', "Debug\ D\-Bus\ applications");
    $app_qt4_qdbusviewer_7421->set_image('Gtk2::Image'->new_from_icon_name("qdbusviewer\-qt4",q{menu}));
    $apps->append($app_qt4_qdbusviewer_7421);
}
    $category_2->set_submenu($apps);
    $menu->append($category_2);
}

    # # # # # # # # # # # # # # # # # # # # GRAPHICS # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_3 = 'Gtk2::ImageMenuItem'->new("Graphics");
    $category_3->set_image('Gtk2::Image'->new_from_icon_name("applications\-graphics",q{menu}));
{
    my $app_feh_9357 = 'Gtk2::ImageMenuItem'->new("Feh");
    $app_feh_9357->signal_connect('activate', sub {system "feh &"});
    $app_feh_9357->set_property('tooltip_text', "Fast\ Imlib2\-based\ Image\ Viewer");
    $app_feh_9357->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/usr\/share\/feh\/images\/feh\.png",16,16)));
    $apps->append($app_feh_9357);
}
{
    my $app_geeqie_2600 = 'Gtk2::ImageMenuItem'->new("Geeqie");
    $app_geeqie_2600->signal_connect('activate', sub {system "geeqie\ \-r &"});
    $app_geeqie_2600->set_property('tooltip_text', "View\ and\ manage\ images");
    $app_geeqie_2600->set_image('Gtk2::Image'->new_from_icon_name("geeqie",q{menu}));
    $apps->append($app_geeqie_2600);
}
{
    my $app_gnu_image_manipulation_program_6211 = 'Gtk2::ImageMenuItem'->new("GNU\ Image\ Manipulation\ Program");
    $app_gnu_image_manipulation_program_6211->signal_connect('activate', sub {system "gimp\-2\.8 &"});
    $app_gnu_image_manipulation_program_6211->set_property('tooltip_text', "Create\ images\ and\ edit\ photographs");
    $app_gnu_image_manipulation_program_6211->set_image('Gtk2::Image'->new_from_icon_name("gimp",q{menu}));
    $apps->append($app_gnu_image_manipulation_program_6211);
}
{
    my $app_viewnior_4853 = 'Gtk2::ImageMenuItem'->new("Viewnior");
    $app_viewnior_4853->signal_connect('activate', sub {system "viewnior &"});
    $app_viewnior_4853->set_property('tooltip_text', "Elegant\ Image\ Viewer");
    $app_viewnior_4853->set_image('Gtk2::Image'->new_from_icon_name("viewnior",q{menu}));
    $apps->append($app_viewnior_4853);
}
    $category_3->set_submenu($apps);
    $menu->append($category_3);
}

    # # # # # # # # # # # # # # # # # # # # MULTIMEDIA # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_4 = 'Gtk2::ImageMenuItem'->new("Multimedia");
    $category_4->set_image('Gtk2::Image'->new_from_icon_name("applications\-multimedia",q{menu}));
{
    my $app_audacity_1374 = 'Gtk2::ImageMenuItem'->new("Audacity");
    $app_audacity_1374->signal_connect('activate', sub {system "audacity &"});
    $app_audacity_1374->set_property('tooltip_text', "Record\ and\ edit\ audio\ files");
    $app_audacity_1374->set_image('Gtk2::Image'->new_from_icon_name("audacity",q{menu}));
    $apps->append($app_audacity_1374);
}
{
    my $app_gtk_youtube_viewer_2008 = 'Gtk2::ImageMenuItem'->new("GTK\ Youtube\ Viewer");
    $app_gtk_youtube_viewer_2008->signal_connect('activate', sub {system "gtk\-youtube\-viewer &"});
    $app_gtk_youtube_viewer_2008->set_property('tooltip_text', "A\ Gtk2\ application\ to\ search\ and\ play\ Youtube\ videos\ with\ MPlayer\.");
    $app_gtk_youtube_viewer_2008->set_image('Gtk2::Image'->new_from_icon_name("gtk\-youtube\-viewer",q{menu}));
    $apps->append($app_gtk_youtube_viewer_2008);
}
{
    my $app_qt_v4l2_test_utility_2991 = 'Gtk2::ImageMenuItem'->new("QT\ V4L2\ test\ Utility");
    $app_qt_v4l2_test_utility_2991->signal_connect('activate', sub {system "qv4l2 &"});
    $app_qt_v4l2_test_utility_2991->set_property('tooltip_text', "Allow\ testing\ Video4Linux\ devices");
    $app_qt_v4l2_test_utility_2991->set_image('Gtk2::Image'->new_from_icon_name("qv4l2",q{menu}));
    $apps->append($app_qt_v4l2_test_utility_2991);
}
{
    my $app_qwinff_3227 = 'Gtk2::ImageMenuItem'->new("QWinFF");
    $app_qwinff_3227->signal_connect('activate', sub {system "qwinff &"});
    $app_qwinff_3227->set_property('tooltip_text', "Convert\ between\ media\ file\ formats");
    $app_qwinff_3227->set_image('Gtk2::Image'->new_from_icon_name("qwinff",q{menu}));
    $apps->append($app_qwinff_3227);
}
{
    my $app_vlc_media_player_9015 = 'Gtk2::ImageMenuItem'->new("VLC\ media\ player");
    $app_vlc_media_player_9015->signal_connect('activate', sub {system "\/usr\/bin\/vlc &"});
    $app_vlc_media_player_9015->set_property('tooltip_text', "Read\,\ capture\,\ broadcast\ your\ multimedia\ streams");
    $app_vlc_media_player_9015->set_image('Gtk2::Image'->new_from_icon_name("vlc",q{menu}));
    $apps->append($app_vlc_media_player_9015);
}
    $category_4->set_submenu($apps);
    $menu->append($category_4);
}

    # # # # # # # # # # # # # # # # # # # # NETWORK # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_5 = 'Gtk2::ImageMenuItem'->new("Network");
    $category_5->set_image('Gtk2::Image'->new_from_icon_name("applications\-internet",q{menu}));
{
    my $app_deluge_7643 = 'Gtk2::ImageMenuItem'->new("Deluge");
    $app_deluge_7643->signal_connect('activate', sub {system "deluge\-gtk &"});
    $app_deluge_7643->set_property('tooltip_text', "Download\ and\ share\ files\ over\ BitTorrent");
    $app_deluge_7643->set_image('Gtk2::Image'->new_from_icon_name("deluge",q{menu}));
    $apps->append($app_deluge_7643);
}
{
    my $app_gftp_4682 = 'Gtk2::ImageMenuItem'->new("gFTP");
    $app_gftp_4682->signal_connect('activate', sub {system "gftp &"});
    $app_gftp_4682->set_property('tooltip_text', "Download\ and\ upload\ files\ using\ multiple\ file\ transfer\ protocols");
    $app_gftp_4682->set_image('Gtk2::Image'->new_from_icon_name("gftp",q{menu}));
    $apps->append($app_gftp_4682);
}
{
    my $app_google_chrome_6207 = 'Gtk2::ImageMenuItem'->new("Google\ Chrome");
    $app_google_chrome_6207->signal_connect('activate', sub {system "\/opt\/google\/chrome\/google\-chrome &"});
    $app_google_chrome_6207->set_property('tooltip_text', "Access\ the\ Internet");
    $app_google_chrome_6207->set_image('Gtk2::Image'->new_from_icon_name("google\-chrome",q{menu}));
    $apps->append($app_google_chrome_6207);
}
{
    my $app_luakit_3859 = 'Gtk2::ImageMenuItem'->new("Luakit");
    $app_luakit_3859->signal_connect('activate', sub {system "luakit &"});
    $app_luakit_3859->set_property('tooltip_text', "Fast\,\ small\,\ webkit\ based\ micro\-browser\ extensible\ by\ Lua");
    $app_luakit_3859->set_image('Gtk2::Image'->new_from_icon_name("luakit",q{menu}));
    $apps->append($app_luakit_3859);
}
    $category_5->set_submenu($apps);
    $menu->append($category_5);
}

    # # # # # # # # # # # # # # # # # # # # OFFICE # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_6 = 'Gtk2::ImageMenuItem'->new("Office");
    $category_6->set_image('Gtk2::Image'->new_from_icon_name("applications\-office",q{menu}));
{
    my $app_libreoffice_4910 = 'Gtk2::ImageMenuItem'->new("LibreOffice");
    $app_libreoffice_4910->signal_connect('activate', sub {system "libreoffice &"});
    $app_libreoffice_4910->set_property('tooltip_text', "The\ office\ productivity\ suite\ compatible\ to\ the\ open\ and\ standardized\ ODF\ document\ format\.\ Supported\ by\ The\ Document\ Foundation\.");
    $app_libreoffice_4910->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-startcenter",q{menu}));
    $apps->append($app_libreoffice_4910);
}
{
    my $app_libreoffice_calc_8245 = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Calc");
    $app_libreoffice_calc_8245->signal_connect('activate', sub {system "libreoffice\ \-\-calc &"});
    $app_libreoffice_calc_8245->set_property('tooltip_text', "Perform\ calculations\,\ analyze\ information\ and\ manage\ lists\ in\ spreadsheets\ by\ using\ Calc\.");
    $app_libreoffice_calc_8245->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-calc",q{menu}));
    $apps->append($app_libreoffice_calc_8245);
}
{
    my $app_libreoffice_impress_5299 = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Impress");
    $app_libreoffice_impress_5299->signal_connect('activate', sub {system "libreoffice\ \-\-impress &"});
    $app_libreoffice_impress_5299->set_property('tooltip_text', "Create\ and\ edit\ presentations\ for\ slideshows\,\ meeting\ and\ Web\ pages\ by\ using\ Impress\.");
    $app_libreoffice_impress_5299->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-impress",q{menu}));
    $apps->append($app_libreoffice_impress_5299);
}
{
    my $app_libreoffice_writer_3567 = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Writer");
    $app_libreoffice_writer_3567->signal_connect('activate', sub {system "libreoffice\ \-\-writer &"});
    $app_libreoffice_writer_3567->set_property('tooltip_text', "Create\ and\ edit\ text\ and\ graphics\ in\ letters\,\ reports\,\ documents\ and\ Web\ pages\ by\ using\ Writer\.");
    $app_libreoffice_writer_3567->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-writer",q{menu}));
    $apps->append($app_libreoffice_writer_3567);
}
    $category_6->set_submenu($apps);
    $menu->append($category_6);
}

    # # # # # # # # # # # # # # # # # # # # SETTINGS # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_7 = 'Gtk2::ImageMenuItem'->new("Settings");
    $category_7->set_image('Gtk2::Image'->new_from_icon_name("applications\-accessories",q{menu}));
{
    my $app_adobe_flash_player_7457 = 'Gtk2::ImageMenuItem'->new("Adobe\ Flash\ Player");
    $app_adobe_flash_player_7457->signal_connect('activate', sub {system "flash\-player\-properties &"});
    $app_adobe_flash_player_7457->set_property('tooltip_text', "Preferences\ for\ Adobe\ Flash\ Player");
    $app_adobe_flash_player_7457->set_image('Gtk2::Image'->new_from_icon_name("flash\-player\-properties",q{menu}));
    $apps->append($app_adobe_flash_player_7457);
}
{
    my $app_customize_look_and_feel_3752 = 'Gtk2::ImageMenuItem'->new("Customize\ Look\ and\ Feel");
    $app_customize_look_and_feel_3752->signal_connect('activate', sub {system "lxappearance &"});
    $app_customize_look_and_feel_3752->set_property('tooltip_text', "Customizes\ look\ and\ feel\ of\ your\ desktop\ and\ applications");
    $app_customize_look_and_feel_3752->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-theme",q{menu}));
    $apps->append($app_customize_look_and_feel_3752);
}
{
    my $app_nvidia_x_server_settings_2117 = 'Gtk2::ImageMenuItem'->new("NVIDIA\ X\ Server\ Settings");
    $app_nvidia_x_server_settings_2117->signal_connect('activate', sub {system "\/usr\/bin\/nvidia\-settings &"});
    $app_nvidia_x_server_settings_2117->set_property('tooltip_text', "Configure\ NVIDIA\ X\ Server\ Settings");
    $app_nvidia_x_server_settings_2117->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/usr\/share\/pixmaps\/nvidia\-settings\.png",16,16)));
    $apps->append($app_nvidia_x_server_settings_2117);
}
{
    my $app_openbox_configuration_manager_8236 = 'Gtk2::ImageMenuItem'->new("Openbox\ Configuration\ Manager");
    $app_openbox_configuration_manager_8236->signal_connect('activate', sub {system "obconf &"});
    $app_openbox_configuration_manager_8236->set_property('tooltip_text', "Openbox\ configuration\ manager");
    $app_openbox_configuration_manager_8236->set_image('Gtk2::Image'->new_from_icon_name("obconf",q{menu}));
    $apps->append($app_openbox_configuration_manager_8236);
}
{
    my $app_panel_tint2_9244 = 'Gtk2::ImageMenuItem'->new("Panel\ tint2");
    $app_panel_tint2_9244->signal_connect('activate', sub {system "tint2conf &"});
    $app_panel_tint2_9244->set_property('tooltip_text', "Customize\ the\ panel\ settings");
    $app_panel_tint2_9244->set_image('Gtk2::Image'->new_from_icon_name("tint2conf",q{menu}));
    $apps->append($app_panel_tint2_9244);
}
{
    my $app_preferred_applications_8983 = 'Gtk2::ImageMenuItem'->new("Preferred\ Applications");
    $app_preferred_applications_8983->signal_connect('activate', sub {system "libfm\-pref\-apps &"});
    $app_preferred_applications_8983->set_property('tooltip_text', "");
    $app_preferred_applications_8983->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
    $apps->append($app_preferred_applications_8983);
}
    $category_7->set_submenu($apps);
    $menu->append($category_7);
}

    # # # # # # # # # # # # # # # # # # # # SYSTEM # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_8 = 'Gtk2::ImageMenuItem'->new("System");
    $category_8->set_image('Gtk2::Image'->new_from_icon_name("applications\-system",q{menu}));
{
    my $app_bleachbit_1048 = 'Gtk2::ImageMenuItem'->new("BleachBit");
    $app_bleachbit_1048->signal_connect('activate', sub {system "bleachbit &"});
    $app_bleachbit_1048->set_property('tooltip_text', "Free\ space\ and\ maintain\ privacy");
    $app_bleachbit_1048->set_image('Gtk2::Image'->new_from_icon_name("bleachbit",q{menu}));
    $apps->append($app_bleachbit_1048);
}
{
    my $app_htop_9350 = 'Gtk2::ImageMenuItem'->new("Htop");
    $app_htop_9350->signal_connect('activate', sub {system "sakura\ \-e\ \'htop\' &"});
    $app_htop_9350->set_property('tooltip_text', "Show\ System\ Processes");
    $app_htop_9350->set_image('Gtk2::Image'->new_from_icon_name("htop",q{menu}));
    $apps->append($app_htop_9350);
}
{
    my $app_task_manager_9053 = 'Gtk2::ImageMenuItem'->new("Task\ Manager");
    $app_task_manager_9053->signal_connect('activate', sub {system "lxtask &"});
    $app_task_manager_9053->set_property('tooltip_text', "Manage\ running\ processes");
    $app_task_manager_9053->set_image('Gtk2::Image'->new_from_icon_name("utilities\-system\-monitor",q{menu}));
    $apps->append($app_task_manager_9053);
}
{
    my $app_uxterm_9070 = 'Gtk2::ImageMenuItem'->new("UXTerm");
    $app_uxterm_9070->signal_connect('activate', sub {system "uxterm &"});
    $app_uxterm_9070->set_property('tooltip_text', "standard\ terminal\ emulator\ for\ the\ X\ window\ system");
    $app_uxterm_9070->set_image('Gtk2::Image'->new_from_icon_name("xterm\-color_48x48",q{menu}));
    $apps->append($app_uxterm_9070);
}
{
    my $app_xterm_7242 = 'Gtk2::ImageMenuItem'->new("XTerm");
    $app_xterm_7242->signal_connect('activate', sub {system "xterm &"});
    $app_xterm_7242->set_property('tooltip_text', "standard\ terminal\ emulator\ for\ the\ X\ window\ system");
    $app_xterm_7242->set_image('Gtk2::Image'->new_from_icon_name("xterm\-color_48x48",q{menu}));
    $apps->append($app_xterm_7242);
}
    $category_8->set_submenu($apps);
    $menu->append($category_8);
}

    # # # # # # # # # # # # # # # # # # # # MENUTRAY # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $category_9 = 'Gtk2::ImageMenuItem'->new("Menutray");
    $category_9->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
{
    my $app_edit_menutray_s_config_7314 = 'Gtk2::ImageMenuItem'->new("Edit\ menutray\'s\ config");
    $app_edit_menutray_s_config_7314->signal_connect('activate', sub {system "geany\ \/home\/swampyx\/\.config\/menutray\/config\.pl &"});
    $app_edit_menutray_s_config_7314->set_property('tooltip_text', "");
    $app_edit_menutray_s_config_7314->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
    $apps->append($app_edit_menutray_s_config_7314);
}
{
    my $app_edit_menutray_s_menu_8837 = 'Gtk2::ImageMenuItem'->new("Edit\ menutray\'s\ menu");
    $app_edit_menutray_s_menu_8837->signal_connect('activate', sub {system "geany\ \/home\/swampyx\/\.config\/menutray\/menu\.pl &"});
    $app_edit_menutray_s_menu_8837->set_property('tooltip_text', "");
    $app_edit_menutray_s_menu_8837->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
    $apps->append($app_edit_menutray_s_menu_8837);
}
{
    my $app_edit_menutray_s_schema_7365 = 'Gtk2::ImageMenuItem'->new("Edit\ menutray\'s\ schema");
    $app_edit_menutray_s_schema_7365->signal_connect('activate', sub {system "geany\ \/home\/swampyx\/\.config\/menutray\/schema\.pl &"});
    $app_edit_menutray_s_schema_7365->set_property('tooltip_text', "");
    $app_edit_menutray_s_schema_7365->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
    $apps->append($app_edit_menutray_s_schema_7365);
}
    $category_9->set_submenu($apps);
    $menu->append($category_9);
}

    $menu->append('Gtk2::SeparatorMenuItem'->new);
{
    my $regenerate = 'Gtk2::ImageMenuItem'->new("Regenerate");
    $regenerate->set_property('tooltip_text', "Regenerate\ this\ menu\.");
    $regenerate->set_image('Gtk2::Image'->new_from_icon_name("gtk\-refresh",q{menu}));
    $regenerate->signal_connect('activate', sub {system "\/usr\/bin\/perl\ \\\/usr\\\/bin\\\/menutray\ \-i &"; 'Gtk2'->main_quit; exit});
    $menu->append($regenerate);
}
{
    my $quit = 'Gtk2::ImageMenuItem'->new("Exit");
    $quit->set_property('tooltip_text', "Close\ this\ application\.");
    $quit->set_image('Gtk2::Image'->new_from_icon_name("gtk\-quit",q{menu}));
    $quit->signal_connect('activate', sub { Gtk2->main_quit; exit });
    $menu->append($quit);
}
    $menu->show_all;
    return 1;
}
'Gtk2'->main;
