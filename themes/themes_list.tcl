
set theme_dir $vTcl(VTCL_HOME)

# set filename [file join $theme_dir themes forest-light.tcl]
# source $filename
# set filename [file join $theme_dir themes forest-dark.tcl]
# source $filename
set filename [file join $theme_dir themes  elegance.tcl]
source $filename
set filename [file join $theme_dir themes plastik.tcl]
catch {source $filename}
set filename [file join $theme_dir themes clearlooks.tcl]
source $filename
set filename [file join $theme_dir themes waldorf.tcl]
source $filename
# set filename [file join $theme_dir themes azure-light.tcl]
# source $filename
# set filename [file join $theme_dir themes azure-dark.tcl]
# source $filename
set filename [file join $theme_dir themes notsodark.tcl]
source $filename
set filename [file join $theme_dir themes page-notsodark.tcl]
source $filename
set filename [file join $theme_dir themes page-wheat.tcl]
source $filename
set filename [file join $theme_dir themes page-legacy.tcl]
source $filename
set filename [file join $theme_dir themes page-light.tcl]
source $filename
set filename [file join $theme_dir themes page-dark.tcl]
source $filename

#set vTcl(3rd_party_themes) [list forest-light forest-dark elegance \
							clearlooks plastik azure-light notsodark \
							page-notsodark page-wheat page-legacy]
set vTcl(3rd_party_themes) [list forest-light forest-dark elegance \
							clearlooks plastik azure-light notsodark \
							page-notsodark page-wheat]



