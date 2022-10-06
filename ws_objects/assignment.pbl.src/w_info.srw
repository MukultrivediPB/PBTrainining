$PBExportHeader$w_info.srw
forward
global type w_info from window
end type
type cb_2 from commandbutton within w_info
end type
type st_6 from statictext within w_info
end type
type sle_id from singlelineedit within w_info
end type
type dw_1 from datawindow within w_info
end type
type st_1 from statictext within w_info
end type
end forward

global type w_info from window
string tag = "Close"
integer width = 3451
integer height = 1492
boolean titlebar = true
string title = "Information"
boolean controlmenu = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
st_6 st_6
sle_id sle_id
dw_1 dw_1
st_1 st_1
end type
global w_info w_info

on w_info.create
this.cb_2=create cb_2
this.st_6=create st_6
this.sle_id=create sle_id
this.dw_1=create dw_1
this.st_1=create st_1
this.Control[]={this.cb_2,&
this.st_6,&
this.sle_id,&
this.dw_1,&
this.st_1}
end on

on w_info.destroy
destroy(this.cb_2)
destroy(this.st_6)
destroy(this.sle_id)
destroy(this.dw_1)
destroy(this.st_1)
end on

type cb_2 from commandbutton within w_info
integer x = 1504
integer y = 112
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Search"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve(sle_id.text)
end event

type st_6 from statictext within w_info
integer x = 599
integer y = 108
integer width = 219
integer height = 84
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Filter"
boolean focusrectangle = false
end type

type sle_id from singlelineedit within w_info
integer x = 914
integer y = 104
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = styleraised!
end type

type dw_1 from datawindow within w_info
integer x = 274
integer y = 248
integer width = 3118
integer height = 904
integer taborder = 10
string title = "none"
string dataobject = "dw_customer"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event itemchanged;dw_1.settransobject(sqlca);
dw_1.retrieve(sle_id.text)
end event

type st_1 from statictext within w_info
integer x = 311
integer y = 32
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean focusrectangle = false
end type

