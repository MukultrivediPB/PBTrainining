$PBExportHeader$w_placed_order.srw
forward
global type w_placed_order from window
end type
type cb_2 from commandbutton within w_placed_order
end type
type dw_1 from datawindow within w_placed_order
end type
type cb_1 from commandbutton within w_placed_order
end type
type dotnetobject_1 from dotnetobject within w_placed_order
end type
end forward

global type w_placed_order from window
integer width = 3168
integer height = 1320
boolean titlebar = true
string title = "Entry Screen For Order Placing"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
dw_1 dw_1
cb_1 cb_1
dotnetobject_1 dotnetobject_1
end type
global w_placed_order w_placed_order

on w_placed_order.create
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.dotnetobject_1=create dotnetobject_1
this.Control[]={this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on w_placed_order.destroy
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
destroy(this.dotnetobject_1)
end on

type cb_2 from commandbutton within w_placed_order
integer x = 329
integer y = 932
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert"
end type

event clicked;dw_1.insertrow(0);
end event

type dw_1 from datawindow within w_placed_order
integer x = 402
integer y = 204
integer width = 1833
integer height = 400
integer taborder = 10
string title = "none"
string dataobject = "dw_placed_order"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_placed_order
integer x = 841
integer y = 896
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get Data"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type dotnetobject_1 from dotnetobject within w_placed_order descriptor "pb_nvo" = "true" 
end type

on dotnetobject_1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on dotnetobject_1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

