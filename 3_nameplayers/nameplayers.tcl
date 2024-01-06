#############################################################################
# Generated by PAGE version 8.0
#  in conjunction with Tcl version 8.6
#  Jan 06, 2024 09:25:49 AM CET  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


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
set vTcl(actual_gui_bg) cornsilk3
set vTcl(actual_gui_fg) black
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
set vTcl(project_theme) cornsilk-dark



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
        -menu $top.m47 -background cornsilk4 -highlightbackground cornsilk4 \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 666x726+519+149
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
    ttk::button "$top.tBu47" \
        -command "on_TBtnExit" -text "Exit" -compound left 
    vTcl:DefineAlias "$top.tBu47" "TBtnExit" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu47 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Exits the program}
    }
    ttk::frame "$top.tFr47" \
        -borderwidth 2 -relief flat -width 430 -height 55 
    vTcl:DefineAlias "$top.tFr47" "TFrame2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr47
    ttk::button "$site_3_0.tBu48" \
        -command "on_TBtnPlayer1" -text "Player1" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu48" "TBtnPlayer1" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tBu48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Shows the pictures of player number 1}
    }
    vTcl:copy_lock $site_3_0.tBu48
    ttk::button "$site_3_0.tBu49" \
        -command "on_TBtnPlayer2" -text "Player2" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu49" "TBtnPlayer2" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tBu49 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Shows the pictures of player number 2}
    }
    vTcl:copy_lock $site_3_0.tBu49
    ttk::button "$site_3_0.tBu50" \
        -command "on_TBtnPlayer3" -text "Player3" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu50" "TBtnPlayer3" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tBu50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Shows the pictures of player number 3}
    }
    vTcl:copy_lock $site_3_0.tBu50
    ttk::button "$site_3_0.tBu51" \
        -command "on_TBtnPlayer4" -text "Player4" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu51" "TBtnPlayer4" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tBu51 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Shows the pictures of player number 4}
    }
    vTcl:copy_lock $site_3_0.tBu51
    ttk::label "$site_3_0.tLa49" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor w \
        -justify left -compound left 
    vTcl:DefineAlias "$site_3_0.tLa49" "TLblLid" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tBu48 \
        -in $site_3_0 -x 14 -y 10 -width 100 -relwidth 0 -height 35 \
        -anchor nw -bordermode ignore 
    place $site_3_0.tBu49 \
        -in $site_3_0 -x 115 -y 10 -width 100 -relwidth 0 -height 35 \
        -anchor nw -bordermode ignore 
    place $site_3_0.tBu50 \
        -in $site_3_0 -x 216 -y 10 -width 100 -relwidth 0 -height 35 \
        -anchor nw -bordermode ignore 
    place $site_3_0.tBu51 \
        -in $site_3_0 -x 317 -y 10 -width 100 -relwidth 0 -height 35 \
        -anchor nw -bordermode ignore 
    place $site_3_0.tLa49 \
        -in $site_3_0 -x 0 -y 0 -width 424 -relwidth 0 -height 51 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$top.tFr53" \
        -borderwidth 2 -relief groove -width 642 -height 641 
    vTcl:DefineAlias "$top.tFr53" "TFrame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr53
    canvas "$site_3_0.can55" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 190 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 200 
    vTcl:DefineAlias "$site_3_0.can55" "Canvas2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can55
    canvas "$site_3_0.can65" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can65" "Canvas3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can65
    canvas "$site_3_0.can66" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can66" "Canvas4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can66
    canvas "$site_3_0.can47" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can47" "Canvas5" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can47
    canvas "$site_3_0.can48" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can48" "Canvas6" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can48
    canvas "$site_3_0.can53" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can53" "Canvas7" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can53
    canvas "$site_3_0.can67" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can67" "Canvas8" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can67
    canvas "$site_3_0.can54" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can54" "Canvas1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can54
    canvas "$site_3_0.can68" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can68" "Canvas9" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can68
    place $site_3_0.can55 \
        -in $site_3_0 -x 221 -y 11 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can65 \
        -in $site_3_0 -x 431 -y 11 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can66 \
        -in $site_3_0 -x 11 -y 221 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can47 \
        -in $site_3_0 -x 221 -y 221 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can48 \
        -in $site_3_0 -x 431 -y 221 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can53 \
        -in $site_3_0 -x 11 -y 431 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can67 \
        -in $site_3_0 -x 221 -y 431 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can54 \
        -in $site_3_0 -x 10 -y 10 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can68 \
        -in $site_3_0 -x 431 -y 431 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $top.tFr53
    ttk::frame "$top.tFr48" \
        -borderwidth 2 -relief groove -width 642 -height 641 
    vTcl:DefineAlias "$top.tFr48" "TFrame3" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr48
    ttk::label "$site_3_0.tLa56" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 1" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa56" "TLabel1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa56
    ttk::label "$site_3_0.tLa47" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 2" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa47" "TLabel2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa47
    ttk::label "$site_3_0.tLa48" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 3" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa48" "TLabel3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa48
    ttk::label "$site_3_0.tLa50" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 4" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa50" "TLabel4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa50
    ttk::button "$site_3_0.tBu52" \
        -command "on_TBtnGoOn" -text "Go On" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu52" "TBtnGoOn" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tBu52 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Starts the program}
    }
    label "$site_3_0.lab48" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab48" "Label2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab48
    label "$site_3_0.lab49" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab49" "Label3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab49
    label "$site_3_0.lab50" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab50" "Label4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab50
    label "$site_3_0.lab47" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab47" "Label1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab47
    ttk::entry "$site_3_0.tEn50" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player1var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn50" "TEntry1" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn50
    ttk::entry "$site_3_0.tEn51" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player2var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn51" "TEntry2" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn51 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn51
    ttk::entry "$site_3_0.tEn54" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player3var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn54" "TEntry3" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn54 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn54
    ttk::entry "$site_3_0.tEn55" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player4var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn55" "TEntry4" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn55 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn55
    ttk::label "$site_3_0.tLa51" \
        -font "-family {DejaVu Sans} -size 14 -weight bold" -relief flat \
        -anchor center -justify center \
        -text "Here you can register up to four players" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa51" "TLabel5" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tLa56 \
        -in $site_3_0 -x 222 -y 111 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa47 \
        -in $site_3_0 -x 222 -y 225 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa48 \
        -in $site_3_0 -x 222 -y 335 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa50 \
        -in $site_3_0 -x 222 -y 456 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tBu52 \
        -in $site_3_0 -x 271 -y 586 -width 100 -relwidth 0 -height 34 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 199 -y 251 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 199 -y 361 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 199 -y 481 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 199 -y 137 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn50 \
        -in $site_3_0 -x 239 -y 137 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn51 \
        -in $site_3_0 -x 239 -y 251 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn54 \
        -in $site_3_0 -x 239 -y 361 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn55 \
        -in $site_3_0 -x 239 -y 481 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa51 \
        -in $site_3_0 -x 15 -y 10 -width 614 -relwidth 0 -height 91 \
        -relheight 0 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tBu47 \
        -in $top -x 551 -y 670 -width 100 -relwidth 0 -height 35 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr47 \
        -in $top -x 10 -y 660 -width 430 -relwidth 0 -height 55 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr53 \
        -in $top -x 10 -y 10 -width 642 -relwidth 0 -height 641 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr48 \
        -in $top -x 10 -y 10 -width 642 -height 641 -anchor nw \
        -bordermode ignore 

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

