$PBExportHeader$w_empdata.srw
forward
global type w_empdata from window
end type
type cb_1 from commandbutton within w_empdata
end type
type dw_1 from datawindow within w_empdata
end type
end forward

global type w_empdata from window
integer width = 5061
integer height = 1320
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_1 dw_1
end type
global w_empdata w_empdata

on w_empdata.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_empdata.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within w_empdata
integer x = 686
integer y = 896
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "dw_1"
end type

event clicked;dw_1.settransobject(SQLCA);
dw_1.retrieve();
end event

type dw_1 from datawindow within w_empdata
integer x = 14
integer y = 252
integer width = 4658
integer height = 428
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

