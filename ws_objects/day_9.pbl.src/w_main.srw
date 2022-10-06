$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_3 from commandbutton within w_main
end type
type cb_2 from commandbutton within w_main
end type
type dw_2 from datawindow within w_main
end type
type dw_1 from datawindow within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 3168
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
cb_3 cb_3
cb_2 cb_2
dw_2 dw_2
dw_1 dw_1
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.dw_2=create dw_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.dw_2,&
this.dw_1,&
this.cb_1}
end on

on w_main.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_3 from commandbutton within w_main
integer x = 1088
integer y = 992
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Multiply"
end type

event clicked;int i
i=muiltiplication(2,4,5);
messagebox('Multiplication', i)
end event

type cb_2 from commandbutton within w_main
integer x = 1714
integer y = 964
integer width = 576
integer height = 136
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

type dw_2 from datawindow within w_main
integer x = 1134
integer y = 148
integer width = 1618
integer height = 400
integer taborder = 20
string title = "none"
string dataobject = "dw_state"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_main
integer x = 46
integer y = 160
integer width = 1038
integer height = 400
integer taborder = 10
string title = "none"
string dataobject = "dw_country"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_main
integer x = 370
integer y = 948
integer width = 617
integer height = 148
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

