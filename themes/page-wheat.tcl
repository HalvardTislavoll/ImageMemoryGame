#
# "Page-Wheat" theme.
# -------------------------------
# A semi-dark theme originally created for users of PAGE
# -------------------------------
# Based on my Not So Dark theme.
# Written by G.D. Walters
# Copyright 2022,2023 by G.D. Walters  <thedesignatedgeek@gmail.com>
#
#====================================================
# Version 0.1.17
# August 23, 2023
#====================================================
# Still to do: 02/01/2023
# ---------------------------------------------------

#   X 12/30/2022 - Find out why buttons don't shift image on click
#   X 12/30/2022 - TCombobox select highlight not working correctly
#   X 12/30/2022 - TButton mouse over color too bright
#   X 12/30/2022 - TEntry - on disabled, darken the field color
#   X 12/30/2022 - TSpin  - change background to -bgcolor
#   * TSpin  - on disabled, darken the field color
#   * Try to work with PNotebook
#   - Try to incorporate graphics for TCheck & TRadio
#   * Support all states for all widgets
#   * Go through color list and delete those that aren't used
#   * Tweek the colors
#====================================================
# Change log
#----------------------------------------------------
# 31/12/2022 - attempt to add tab placement style support for TNotebook (see README.txt)
# 01/01/2023 - attempt to add flat and sunken styles for TFrame
# 01/08/2023 - Changed selectbackground and selectforeground for TEntry.
# 01/09/2023 - Attempt to add configuration for TCombobox popdown.
# 01/30/2023 - Changed foreground color to white from black
# 01/30/2023 - Attempt to support colors on Tk Menu
# 01/30/2023 - TEntry foreground color is now back to black
# 01/30/2023 - TSpin foreground color (text) is now back to black (0.1.08)
# 02/01/2023 - changed some colors (highlight), lessened the number of colors
#                 and applied the fix for the AskFile dialog and the ChooseDir dialog
# 02/03/2023 - Set Treeview foreground to black.
# 06/09/2023 - Testing TRadio and TCombo image indicators
# 06/13/2023 - Commented out the tk_setPalette section
# 06/13/2023 - Tried to tweek activeforeground color 
# 08/21/2023 - Set activebackground to #d9d9d9 and activeforeground to black
# 08/23/2023 - Attempt to modify the TNotebook style to Don's specifications
#----------------------------------------------------

package require Tk 8.6



namespace eval ttk::theme::page-wheat {
    variable version 0.1.17.1
    package provide ttk::theme::page-wheat $version
    variable colors
    array set colors {
        -disabledfg     gray54
        -frame          black
        -window         "#ffffff"
        -dark           black
        -darker         wheat3
        -darkcolor      "#000000"
        -lighter        "#eeebe7"
        -lightcolor     snow
        -selectbg       "#4a6984"
        -selectfg       "#ffffff"
        -selectbackground   #93ba45
        -selectforeground   "#ffffff"
        -alternate          "#aaaaaa"
        -disabledcolor  wheat3
        -bgcolor        wheat
        -fgcolor        black
        -activebgcolor  "#d9d9d9"
        -activefgcolor  "black"
        -troughcolor    gray45
        -barcolor       royalblue3
        -fieldbgcolor   gray56
        -fieldfgcolor   deepskyblue
        -bordercolor    dimgray
        -tvwindow       lightgoldenrod3
        -tvwindowdisabled  peachpuff3
        -texthighlight   #67B220
    }

    # Settings
    ttk::style theme create page-wheat -parent default -settings {

        ttk::style configure "." \
            -background $colors(-bgcolor) \
            -foreground $colors(-fgcolor) \
            -bordercolor $colors(-frame) \
            -darkcolor $colors(-dark) \
            -lightcolor $colors(-lightcolor) \
            -troughcolor $colors(-troughcolor) \
            -focuscolor $colors(-selectbackground) \
            -selectbackground $colors(-selectbackground) \
            -selectforeground $colors(-selectforeground) \
            -activebgcolor $colors(-activebgcolor) \
            -activefgcolor $colors(-activefgcolor) \
            -fieldbgcolor "gray83" \
            -barcolor $colors(-barcolor) \
            -selectborderwidth 0 \
            -borderwidth 2 \
            -font TkDefaultFont \
            ;

        ttk::style map "." \
            -background [list active $colors(-activebgcolor) \
                disabled $colors(-disabledcolor)] \
            -foreground [list active $colors(-activefgcolor) \
                         disabled $colors(-disabledfg)] \
            -selectbackground [list  !focus $colors(-darkcolor)] \
            -selectforeground [list  !focus white] \
            -embossed [list disabled 1 active 1]
        ;



        proc load_images {imgdir} {
            variable I
            foreach file [glob -directory $imgdir *.png] {
                set img [file tail [file rootname $file]]
                set I($img) [image create photo -file $file -format png]
            }
        }

        # Load the images for TCheckbutton and TRadiobutton
        load_images [file join [file dirname [info script]] notsodark]


        option add *TkFDialog*foreground black
        option add *TkChooseDir*foreground black

        # -selectbackground [list  !focus "#847d73"]
        # --------------------------------------------------
        # TButton
        ttk::style configure TButton \
            -anchor center -width -11 -padding "1 1" -relief raised \
            -shiftrelief 2 -highlightthickness 1 -highlightcolor $colors(-frame)

        ttk::style map TButton -relief {
            {pressed !disabled} sunken
            {active !disabled}  raised
            } -highlightcolor {alternate black}

		    # Added !active black to foreground. Rozen
            ttk::style map TButton \
                -background [list pressed $colors(-activebgcolor) \
                active $colors(-activebgcolor)] \
                -foreground [list pressed $colors(-activefgcolor) \
                             active $colors(-activefgcolor) !active black] \
                -lightcolor [list pressed $colors(-darker)] \
                -darkcolor [list pressed $colors(-darker)] \
                -bordercolor [list alternate "#000000"] \
                ;

        # --------------------------------------------------
        # Toolbutton (special style for TButton)
        # --------------------------------------------------
        ttk::style configure Toolbutton \
            -anchor center -padding 2 -relief flat \
            -shiftrelief 2 -highlightthickness 1 \
            -highlightcolor $colors(-frame)
        ttk::style map Toolbutton \
            -relief [list \
                disabled flat \
                selected sunken \
                pressed sunken \
                active raised] \
                -background [list \
                    pressed $colors(-activebgcolor) \
                    active $colors(-activebgcolor)] \
                    -lightcolor [list pressed $colors(-darker)] \
                    -darkcolor [list pressed $colors(-darker)] \
                -foreground [list \
                    pressed $colors(-activefgcolor) \
                    active $colors(-activefgcolor)] \
                    -lightcolor [list pressed $colors(-darker)] \
                    -darkcolor [list pressed $colors(-darker)] \
                    ;
        # --------------------------------------------------
        # TCheckbutton
        # --------------------------------------------------
        ttk::style configure TCheckbutton \
            -indicatorbackground "#ffffff" \
            -indicatormargin {1 1 4 1} \
            -padding 2 ;

        ttk::style map TCheckbutton -indicatorbackground \
            [list  pressed $colors(-bgcolor) \
            {!disabled alternate} $colors(-alternate) \
            {disabled alternate} $colors(-darker)] \
            -background [list disabled $colors(-bgcolor) active $colors(-activebgcolor)] \
            -foreground [list active $colors(-fgcolor) \
                disabled $colors(-disabledcolor)]

        # TCheckbutton will use the following images:
        # chk24x16.png, unchk24x16.png
        ttk::style element create Checkbutton.indicator image \
            [list $I(unchk24x16) \
                {alternate disabled} $I(unchk24x16) \
                {selected disabled} $I(unchk24x16) \
                disabled $I(unchk24x16) \
                {pressed alternate} $I(chk24x16) \
                {active alternate} $I(chk24x16) \
                alternate $I(unchk24x16) \
                {pressed selected} $I(chk24x16) \
                {active selected} $I(chk24x16) \
                selected $I(chk24x16) \
                {pressed !selected} $I(chk24x16) \
                active $I(unchk24x16) \
            ] -width 26 -sticky w

        # --------------------------------------------------
        # TRadiobutton
        # --------------------------------------------------
        ttk::style configure TRadiobutton \
            -indicatorbackground "#ffffff" \
            -indicatormargin {1 1 4 1} \
            -padding 2 ;

        ttk::style map TRadiobutton -indicatorbackground \
            [list  pressed $colors(-bgcolor) \
            {!disabled alternate} $colors(-alternate) \
            {disabled alternate} $colors(-darker)] \
            -background [list disabled $colors(-bgcolor) active $colors(-activebgcolor)] \
            -foreground [list active $colors(-fgcolor) \
                disabled $colors(-disabledcolor)] 

        # TRadiobutton will use the following images:
        # RadioSelected24x16.png, RadioUnSelected24x16.png
        ttk::style element create Radiobutton.indicator image \
            [list $I(RadioUnSelected24x16) \
                {alternate disabled} $I(RadioUnSelected24x16) \
                {selected disabled} $I(RadioUnSelected24x16) \
                disabled $I(RadioUnSelected24x16) \
                {pressed alternate} $I(RadioSelected24x16) \
                {active alternate} $I(RadioSelected24x16) \
                alternate $I(RadioUnSelected24x16) \
                {pressed selected} $I(RadioSelected24x16) \
                {active selected} $I(RadioSelected24x16) \
                selected $I(RadioSelected24x16) \
                {pressed !selected} $I(RadioSelected24x16) \
                active $I(RadioUnSelected24x16) \
            ] -width 26 -sticky w

        # --------------------------------------------------
        # TMenubutton  (for future compatibility)
        # --------------------------------------------------
        ttk::style configure TMenubutton \
            -width -11 -padding 5 -relief raised

        # --------------------------------------------------
        # TEntry
        # --------------------------------------------------
        ttk::style configure TEntry -foreground black -relief sunken \
                            -fieldbackground $colors(-tvwindow) -padding 1 -insertwidth 1
        ttk::style map TEntry \
            -background [list  readonly $colors(-frame)] \
            -foreground [list  readonly $colors(-dark) \
            !disabled black \
            disabled $colors(-fgcolor)] \
            -fieldbackground [list !disabled $colors(-tvwindow) \
            disabled $colors(-tvwindowdisabled)] \
            -selectbackground [list !disabled $colors(-texthighlight) \
            disabled $colors(-tvwindow)] \
            -selectforeground [list !disabled $colors(-dark)] \
            -bordercolor [list  focus $colors(-selectbackground)] \
            -lightcolor [list  focus "#6f9dc6"] \
            -darkcolor [list  focus "#6f9dc6"] \
            ;

        # --------------------------------------------------
        # TCombobox
        # --------------------------------------------------
        ttk::style configure TCombobox -padding 1
        ttk::style map TCombobox -fieldbackground \
            [list !disabled lightgoldenrod3 \
                readonly $colors(-frame) disabled $colors(-tvwindowdisabled)] \
            -selectbackground [list !disabled $colors(-selectbackground) \
                disabled $colors(-selectbackground)] \
            -selectforeground [list !disabled black disabled black]

        ttk::style configure ComboboxPopdownFrame \
            -relief solid -borderwidth 1


        ttk::style configure ComboboxPopdownFrame \
            -relief solid -borderwidth 1


        option add *TCombobox*Listbox.background lightgoldenrod3
        option add *TCombobox*Listbox.foreground $colors(-fieldbgcolor)
        option add *TCombobox*Listbox.selectBackground $colors(-selectbackground)
        option add *TCombobox*Listbox.selectForeground $colors(-selectforeground)
        # option add *TCombobox*Listbox.selectForeground $colors(-selectforeground)
        # option add *TCombobox*Listbox.font font

        # --------------------------------------------------
        # TScrollbar
        # --------------------------------------------------
        ttk::style configure TScrollbar -relief raised
        ttk::style map TScrollbar -relief {{pressed !disabled} sunken}

        # --------------------------------------------------
        # TSpinbox
        # --------------------------------------------------
        ttk::style configure TSpinbox \
            -arrowsize 9 \
            -padding {2 0 10 0} \
            -background $colors(-tvwindow) \
            -foreground $colors(-dark) \
            -fieldbackground $colors(-tvwindow) \
            -fielddforeground $colors(-dark) \
            -selectbackground [list !disabled $colors(-texthighlight)] \
            -selectforeground [list !disabled $colors(-selectforeground)]
        ttk::style map TSpinbox \
            -background [list  readonly $colors(-frame) \
                disabled $colors(-tvwindowdisabled)] \
            -arrowcolor [list disabled $colors(-disabledfg)]



        # --------------------------------------------------
        # TNotebook
		# Changes to background active &  !active - Rozen
        # --------------------------------------------------
        ttk::style configure TNotebook.Tab -padding {6 2 6 2} -expand {0 0 2}
        ttk::style map TNotebook.Tab \
            -padding [list selected {6 4 6 2}] \
            -background [list selected "wheat" active "#d9d9d9" \
            active "wheat" {} $colors(-darker)] \
            -foreground [list selected black active black !active black] \
            -lightcolor [list selected $colors(-lighter) {} $colors(-dark)] \
            ;
        #ttk::style configure TNotebook -background "wheat";

        ttk::style configure TabTopRight.TNotebook -tabposition "ne"
        ttk::style configure TabTopLeft.TNotebook -tabposition "nw"
        ttk::style configure TabTopCenter.TNotebook -tabposition "n"
        ttk::style configure TabRightTop.TNotebook -tabposition "en"
        ttk::style configure TabRightCenter.TNotebook -tabposition "e"
        ttk::style configure TabRightBottom.TNotebook -tabposition "es"
        ttk::style configure TabBottomLeft.TNotebook -tabposition "sw"
        ttk::style configure TabBottomCenter.TNotebook -tabposition "s"
        ttk::style configure TabBottomRight.TNotebook -tabposition "se"
        ttk::style configure TabLeftTop.TNotebook -tabposition "wn"
        ttk::style configure TabLeftCenter.TNotebook -tabposition "w"
        ttk::style configure TabLeftBottom.TNotebook -tabposition "ws"

        # --------------------------------------------------
        # Treeview:
        # --------------------------------------------------
        ttk::style configure Heading \
            -font TkHeadingFont -relief raised -padding {3}
        ttk::style configure Treeview \
            -background $colors(-tvwindow) \
            -fieldbackground $colors(-tvwindow)
        ttk::style map Treeview \
            -background [list disabled $colors(-frame)\
                selected $colors(-selectbackground)] \
            -foreground [list disabled $colors(-disabledfg) \
                !disabled $colors(-dark) \
                selected $colors(-selectbackground)]

        # --------------------------------------------------
        # TFrame
        # --------------------------------------------------
        ttk::style configure TFrame \
            -background $colors(-bgcolor) -borderwidth 2 -relief groove
        ttk::style configure Flat.TFrame -relief flat -borderwidth 5
        ttk::style configure Sunken.TFrame -relief sunken -borderwidth 5

        # --------------------------------------------------
        # TLabel
		# Added by Rozen
        # --------------------------------------------------
        #ttk::style configure TLabel \
            -background $colors(-bgcolor)\
            -foreground $colors(-fgcolor)
        #ttk::style configure TLabel \
            -background red 
        #ttk::style configure TLabel.Label \
			-foreground black

        # --------------------------------------------------
        # TLabelframe
        # --------------------------------------------------
        ttk::style configure TLabelframe \
            -background $colors(-bgcolor) -bordercolor $colors(-frame) \
            -labeloutside false -labelmargins {0 0 0 4} \
            -borderwidth 3 -relief groove
        ttk::style configure TLabelframe.Label \
            -background $colors(-bgcolor)\
            -foreground $colors(-fgcolor) -padding {12 6}
		
		
        # --------------------------------------------------
        # TProgressbar
        # --------------------------------------------------
        ttk::style configure TProgressbar -background SteelBlue


        # --------------------------------------------------
        # TScale
        # --------------------------------------------------
        ttk::style configure TScale -sliderrelief raised
        ttk::style map TScale -sliderrelief {{pressed !disabled} sunken}

        # --------------------------------------------------
        # TPanedwindow
        # --------------------------------------------------
        ttk::style configure TPanedwindow -background $colors(-bgcolor)
        ttk::style configure Sash -background $colors(-bgcolor) \
            -bordercolor $colors(-bordercolor) -sashthickness 8 -gripcount 10
            }
    }
    ## END OF THEME FILE
