$PBExportHeader$dw_find.srw
forward
global type dw_find from window
end type
type mdi_1 from mdiclient within dw_find
end type
end forward

global type dw_find from window
integer width = 3168
integer height = 1396
boolean titlebar = true
string title = "Assignment"
string menuname = "m_menu"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowtype windowtype = mdi!
windowstate windowstate = maximized!
long backcolor = 134217739
string icon = "Application2!"
boolean center = true
mdi_1 mdi_1
end type
global dw_find dw_find

on dw_find.create
if this.MenuName = "m_menu" then this.MenuID = create m_menu
this.mdi_1=create mdi_1
this.Control[]={this.mdi_1}
end on

on dw_find.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
end on

type mdi_1 from mdiclient within dw_find
long BackColor=268435456
end type

