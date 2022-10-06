$PBExportHeader$w_describe_property.srw
forward
global type w_describe_property from window
end type
type dw_1 from datawindow within w_describe_property
end type
type cb_1 from commandbutton within w_describe_property
end type
end forward

global type w_describe_property from window
integer width = 3168
integer height = 1320
boolean titlebar = true
string title = "Descirbe"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
cb_1 cb_1
end type
global w_describe_property w_describe_property

on w_describe_property.create
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.dw_1,&
this.cb_1}
end on

on w_describe_property.destroy
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve();
end event

type dw_1 from datawindow within w_describe_property
integer x = 142
integer y = 304
integer width = 2034
integer height = 400
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_describe_property
integer x = 407
integer y = 868
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Describe"
end type

event clicked;messagebox('information',dw_1.Describe("emp_id_t.color"))
messagebox('information',dw_1.Describe("emp_id_t.text"))
messagebox('Information', dw_1.Describe("datawindow.color"))
messagebox('Information', dw_1.Describe("datawindow.type"))
end event

