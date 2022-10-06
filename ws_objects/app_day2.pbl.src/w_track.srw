$PBExportHeader$w_track.srw
forward
global type w_track from window
end type
type st_3 from statictext within w_track
end type
type st_2 from statictext within w_track
end type
type cb_1 from commandbutton within w_track
end type
type sle_2 from singlelineedit within w_track
end type
type sle_1 from singlelineedit within w_track
end type
type st_1 from statictext within w_track
end type
end forward

global type w_track from window
integer width = 3168
integer height = 1396
boolean titlebar = true
string title = "Untitled"
string menuname = "m_main_menu_screen"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_3 st_3
st_2 st_2
cb_1 cb_1
sle_2 sle_2
sle_1 sle_1
st_1 st_1
end type
global w_track w_track

on w_track.create
if this.MenuName = "m_main_menu_screen" then this.MenuID = create m_main_menu_screen
this.st_3=create st_3
this.st_2=create st_2
this.cb_1=create cb_1
this.sle_2=create sle_2
this.sle_1=create sle_1
this.st_1=create st_1
this.Control[]={this.st_3,&
this.st_2,&
this.cb_1,&
this.sle_2,&
this.sle_1,&
this.st_1}
end on

on w_track.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.cb_1)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.st_1)
end on

type st_3 from statictext within w_track
integer x = 1097
integer y = 660
integer width = 562
integer height = 96
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Location"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within w_track
integer x = 1070
integer y = 456
integer width = 544
integer height = 88
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Track Id"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_track
integer x = 1893
integer y = 940
integer width = 517
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
boolean default = true
end type

event clicked;close(parent)
end event

type sle_2 from singlelineedit within w_track
integer x = 1856
integer y = 636
integer width = 517
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = styleraised!
end type

type sle_1 from singlelineedit within w_track
integer x = 1847
integer y = 424
integer width = 517
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = styleraised!
end type

type st_1 from statictext within w_track
integer x = 466
integer y = 104
integer width = 1243
integer height = 88
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
boolean underline = true
long textcolor = 33554432
long backcolor = 67108864
string text = "*Order Tracking Record"
alignment alignment = center!
boolean focusrectangle = false
end type

