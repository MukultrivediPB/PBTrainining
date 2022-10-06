$PBExportHeader$w_place_order.srw
forward
global type w_place_order from window
end type
type st_4 from statictext within w_place_order
end type
type cb_2 from commandbutton within w_place_order
end type
type cb_1 from commandbutton within w_place_order
end type
type sle_1 from singlelineedit within w_place_order
end type
type sle_2 from singlelineedit within w_place_order
end type
type sle_3 from singlelineedit within w_place_order
end type
type st_1 from statictext within w_place_order
end type
type st_2 from statictext within w_place_order
end type
type st_3 from statictext within w_place_order
end type
end forward

global type w_place_order from window
integer width = 3168
integer height = 1320
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 134217730
string icon = "AppIcon!"
boolean center = true
st_4 st_4
cb_2 cb_2
cb_1 cb_1
sle_1 sle_1
sle_2 sle_2
sle_3 sle_3
st_1 st_1
st_2 st_2
st_3 st_3
end type
global w_place_order w_place_order

on w_place_order.create
this.st_4=create st_4
this.cb_2=create cb_2
this.cb_1=create cb_1
this.sle_1=create sle_1
this.sle_2=create sle_2
this.sle_3=create sle_3
this.st_1=create st_1
this.st_2=create st_2
this.st_3=create st_3
this.Control[]={this.st_4,&
this.cb_2,&
this.cb_1,&
this.sle_1,&
this.sle_2,&
this.sle_3,&
this.st_1,&
this.st_2,&
this.st_3}
end on

on w_place_order.destroy
destroy(this.st_4)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.sle_1)
destroy(this.sle_2)
destroy(this.sle_3)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.st_3)
end on

type st_4 from statictext within w_place_order
integer x = 87
integer y = 52
integer width = 1966
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
boolean underline = true
long textcolor = 134217859
long backcolor = 67108864
string text = "To place an order please enter the following details"
alignment alignment = center!
long bordercolor = 16711935
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_place_order
integer x = 1504
integer y = 844
integer width = 640
integer height = 136
integer taborder = 50
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

type cb_1 from commandbutton within w_place_order
integer x = 782
integer y = 836
integer width = 599
integer height = 164
integer taborder = 40
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Submit Order"
boolean default = true
end type

event clicked;//opensheet(w_placed_order,w_main,0,Original!)
insert into placed_order values(:sle_1.text, :sle_2.text,:sle_3.text);
messagebox('Information status', 'Data Successfully added');
end event

type sle_1 from singlelineedit within w_place_order
integer x = 1413
integer y = 260
integer width = 814
integer height = 108
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

type sle_2 from singlelineedit within w_place_order
integer x = 1408
integer y = 424
integer width = 814
integer height = 108
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = styleraised!
end type

type sle_3 from singlelineedit within w_place_order
integer x = 1417
integer y = 592
integer width = 814
integer height = 108
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = styleraised!
end type

type st_1 from statictext within w_place_order
integer x = 658
integer y = 272
integer width = 535
integer height = 96
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "ItemName"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within w_place_order
integer x = 654
integer y = 452
integer width = 535
integer height = 96
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Price"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_3 from statictext within w_place_order
integer x = 658
integer y = 600
integer width = 535
integer height = 96
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Quantity"
alignment alignment = center!
boolean focusrectangle = false
end type

