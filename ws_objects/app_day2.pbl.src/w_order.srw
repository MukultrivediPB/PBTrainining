$PBExportHeader$w_order.srw
forward
global type w_order from window
end type
type mdi_1 from mdiclient within w_order
end type
type st_3 from statictext within w_order
end type
type st_2 from statictext within w_order
end type
type st_1 from statictext within w_order
end type
type sle_3 from singlelineedit within w_order
end type
type sle_2 from singlelineedit within w_order
end type
type sle_1 from singlelineedit within w_order
end type
end forward

global type w_order from window
integer width = 3168
integer height = 1396
boolean titlebar = true
string title = "Untitled"
string menuname = "m_main_menu_screen"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowtype windowtype = mdi!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = rightslide!
mdi_1 mdi_1
st_3 st_3
st_2 st_2
st_1 st_1
sle_3 sle_3
sle_2 sle_2
sle_1 sle_1
end type
global w_order w_order

on w_order.create
if this.MenuName = "m_main_menu_screen" then this.MenuID = create m_main_menu_screen
this.mdi_1=create mdi_1
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.sle_3=create sle_3
this.sle_2=create sle_2
this.sle_1=create sle_1
this.Control[]={this.mdi_1,&
this.st_3,&
this.st_2,&
this.st_1,&
this.sle_3,&
this.sle_2,&
this.sle_1}
end on

on w_order.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_3)
destroy(this.sle_2)
destroy(this.sle_1)
end on

type mdi_1 from mdiclient within w_order
long BackColor=268435456
end type

type st_3 from statictext within w_order
integer x = 645
integer y = 608
integer width = 535
integer height = 96
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Quantity"
boolean focusrectangle = false
end type

type st_2 from statictext within w_order
integer x = 654
integer y = 452
integer width = 535
integer height = 96
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Price"
boolean focusrectangle = false
end type

type st_1 from statictext within w_order
integer x = 658
integer y = 272
integer width = 535
integer height = 96
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Item Name"
boolean focusrectangle = false
end type

type sle_3 from singlelineedit within w_order
integer x = 1417
integer y = 592
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
borderstyle borderstyle = StyleRaised!
end type

type sle_2 from singlelineedit within w_order
integer x = 1408
integer y = 424
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
borderstyle borderstyle = StyleRaised!
end type

type sle_1 from singlelineedit within w_order
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
borderstyle borderstyle = StyleRaised!
end type

