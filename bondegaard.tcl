#############################################################################
# Generated by PAGE version 8.0M
#  in conjunction with Tcl version 8.6
#  Nov 29, 2023 09:24:03 PM CET  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
    app_exit_png "./assets/button_graphics/app-exit.png" 
    hamburger_menuh_png "./assets/button_graphics/hamburger_menuh.png" 
    preferences_png "./assets/button_graphics/preferences.png" 
}
vTcl:create_project_images $image_list   ;# In image.tcl

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) white
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 0
set vTcl(mode) Absolute
set vTcl(project_theme) notsodark



proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu $top.m49 -background #919191 -highlightbackground #919191 \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1456x738+2231+95
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 3825 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Toplevel 0"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    menu "$top.m49" \
        -activebackground #d9d9d9 -activeforeground black -background #919191 \
        -font "-family {DejaVu Sans} -size 10" -foreground black -tearoff 0 
    
set site_3_0 $top.m49
    $top.m49 add cascade \
        -menu "$top.m49.men50" -activebackground #d9d9d9 -activeforeground black \
        -font "-family {DejaVu Sans} -size 10" -image hamburger_menuh_png \
        -label "H" 
    menu "$site_3_0.men50" \
        -activebackground #d9d9d9 -activeforeground black -background #919191 \
        -font "-family {DejaVu Sans} -size 10" -foreground black -tearoff 0 
    $site_3_0.men50 add command \
        -activebackground #d9d9d9 -activeforeground black \
        -command "#on_preferences" -compound left \
        -font "-family {DejaVu Sans} -size 10" -image preferences_png \
        -label "Preferences" 
    $site_3_0.men50 add command \
        -activebackground #d9d9d9 -activeforeground black \
        -command "#on_TBtnExit" -compound left \
        -font "-family {DejaVu Sans} -size 10" -image app_exit_png \
        -label "Exit" 
    ttk::label "$top.tLa48" \
        -font "-family {DejaVu Sans} -size 12 -weight bold" -relief flat \
        -anchor center -justify left -text "Time" -compound left 
    vTcl:DefineAlias "$top.tLa48" "TLbl_Time" vTcl:WidgetProc "Toplevel1" 1
    ttk::label "$top.tLa49" \
        -font "-family {DejaVu Sans} -size 12 -weight bold" -relief flat \
        -anchor center -justify left -text "Status" -compound left 
    vTcl:DefineAlias "$top.tLa49" "TLbl_Status" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator "$top.tSe51"
    vTcl:DefineAlias "$top.tSe51" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    spinbox "$top.spi47" \
        -activebackground #d9d9d9 -background white -command "on_spinbox" \
        -disabledbackground #f5deb3 -disabledforeground black \
        -font "-family {DejaVu Sans} -size 10" -foreground white -from 1.0 \
        -highlightbackground black -increment 1.0 -readonlybackground #f5deb3 \
        -selectbackground #d9d9d9 -selectforeground black -to 9.0 
    vTcl:DefineAlias "$top.spi47" "Spinbox1" vTcl:WidgetProc "Toplevel1" 1
    frame "$top.fra47" \
        -borderwidth 2 -background #919191 -height 730 -width 678 
    vTcl:DefineAlias "$top.fra47" "Frame0" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra47
    canvas "$site_3_0.can48" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 620 \
        -selectbackground #d9d9d9 -selectforeground black -width 660 
    vTcl:DefineAlias "$site_3_0.can48" "Canvas1" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.can48 \
        -in $site_3_0 -x 10 -y 7 -width 659 -relwidth 0 -height 665 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame "$top.fra48" \
        -borderwidth 2 -background #919191 -height 680 -width 678 
    vTcl:DefineAlias "$top.fra48" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra48
    canvas "$site_3_0.can48" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 75 \
        -selectbackground #d9d9d9 -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can48" "Canvas0" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.can48 \
        -in $site_3_0 -x 10 -y 10 -width 660 -relwidth 0 -height 660 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame "$top.fra50" \
        -borderwidth 2 -background #919191 -height 680 -width 678 
    vTcl:DefineAlias "$top.fra50" "Frame2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra50
    canvas "$site_3_0.can48" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can48" "Canvas2_1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can48
    canvas "$site_3_0.can51" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can51" "Canvas2_2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can51
    canvas "$site_3_0.can52" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can52" "Canvas2_3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can52
    canvas "$site_3_0.can57" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can57" "Canvas2_4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can57
    canvas "$site_3_0.can58" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can58" "Canvas2_5" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can58
    canvas "$site_3_0.can59" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can59" "Canvas2_6" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can59
    canvas "$site_3_0.can60" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can60" "Canvas2_7" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can60
    canvas "$site_3_0.can61" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can61" "Canvas2_8" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can61
    canvas "$site_3_0.can62" \
        -background #919191 -borderwidth 4 -closeenough 1.0 -height 180 \
        -relief solid -selectbackground #d9d9d9 -selectforeground black \
        -width 170 
    vTcl:DefineAlias "$site_3_0.can62" "Canvas2_9" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can62
    place $site_3_0.can48 \
        -in $site_3_0 -x 7 -y 7 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can51 \
        -in $site_3_0 -x 226 -y 7 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can52 \
        -in $site_3_0 -x 446 -y 7 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can57 \
        -in $site_3_0 -x 7 -y 226 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can58 \
        -in $site_3_0 -x 226 -y 226 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can59 \
        -in $site_3_0 -x 446 -y 226 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can60 \
        -in $site_3_0 -x 7 -y 444 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can61 \
        -in $site_3_0 -x 226 -y 444 -width 210 -relwidth 0 -height 210 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can62 \
        -in $site_3_0 -x 446 -y 444 -width 210 -height 210 -anchor nw \
        -bordermode ignore 
    frame "$top.fra49" \
        -borderwidth 2 -background #919191 -height 730 -width 678 
    vTcl:DefineAlias "$top.fra49" "Frame3" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra49
    ttk::label "$site_3_0.tLa50" \
        -font "-family {Andika} -size 24 -weight bold" -relief flat \
        -anchor center -justify left -text "Lotto" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa50" "TLblHeading" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_3_0.scr51" \
        -borderwidth 2 -relief groove -background #919191 -height 75 \
        -width 125 
    vTcl:DefineAlias "$site_3_0.scr51" "Scrolledtext1" vTcl:WidgetProc "Toplevel1" 1

    $site_3_0.scr51.01 configure -background #919191 \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #919191 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    ttk::entry "$site_3_0.tEn52" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "user" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn52" "TEntry1" vTcl:WidgetProc "Toplevel1" 1
    ttk::label "$site_3_0.tLa53" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor e \
        -justify left -text "Namn:" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa53" "TLabel2" vTcl:WidgetProc "Toplevel1" 1
    ttk::label "$site_3_0.tLa54" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor w \
        -justify left -text "Number  0 of 4" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa54" "TLabel3" vTcl:WidgetProc "Toplevel1" 1
    ttk::button "$site_3_0.tBu55" \
        -command "on_TBtnRegUser" -text "Reg. user" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu55" "TBtnRegUser" vTcl:WidgetProc "Toplevel1" 1
    ttk::button "$site_3_0.tBu47" \
        -command "on_TBtnPlay" -text "Play" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu47" "TBtnPlay" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tLa50 \
        -in $site_3_0 -x 7 -y 8 -width 664 -relwidth 0 -height 61 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.scr51 \
        -in $site_3_0 -x 21 -y 75 -width 639 -relwidth 0 -height 481 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn52 \
        -in $site_3_0 -x 280 -y 575 -width 206 -relwidth 0 -height 33 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa53 \
        -in $site_3_0 -x 118 -y 575 -width 154 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa54 \
        -in $site_3_0 -x 507 -y 576 -width 114 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tBu55 \
        -in $site_3_0 -x 280 -y 620 -width 98 -relwidth 0 -height 37 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tBu47 \
        -in $site_3_0 -x 387 -y 620 -width 98 -relwidth 0 -height 37 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::button "$top.tBu50" \
        -command "on_TBtnExit" -text "Exit" -image app_exit_png \
        -compound left 
    vTcl:DefineAlias "$top.tBu50" "TBtnExit" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tLa48 \
        -in $top -x 16 -y 687 -width 100 -relwidth 0 -height 40 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tLa49 \
        -in $top -x 202 -y 687 -width 495 -relwidth 0 -height 40 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tSe51 \
        -in $top -x 0 -y 681 -width 1356 -relwidth 0 -relheight 0 -anchor nw \
        -bordermode ignore 
    place $top.spi47 \
        -in $top -x 1181 -y 687 -width 48 -relwidth 0 -height 40 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra47 \
        -in $top -x 676 -y 0 -width 678 -relwidth 0 -height 680 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra48 \
        -in $top -x 0 -y 0 -width 678 -relwidth 0 -height 680 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra50 \
        -in $top -x 9 -y 10 -width 668 -relwidth 0 -height 665 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra49 \
        -in $top -x 676 -y 0 -width 678 -height 680 -anchor nw \
        -bordermode ignore 
    place $top.tBu50 \
        -in $top -x 1241 -y 687 -width 100 -relwidth 0 -height 40 \
        -relheight 0 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

