$PBExportHeader$w_nonviusalobject_standard.srw
forward
global type w_nonviusalobject_standard from window
end type
type cb_2 from nvo_commandbutton within w_nonviusalobject_standard
end type
type cb_1 from commandbutton within w_nonviusalobject_standard
end type
end forward

global type w_nonviusalobject_standard from window
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
cb_2 cb_2
cb_1 cb_1
end type
global w_nonviusalobject_standard w_nonviusalobject_standard

on w_nonviusalobject_standard.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_2,&
this.cb_1}
end on

on w_nonviusalobject_standard.destroy
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_2 from nvo_commandbutton within w_nonviusalobject_standard
integer x = 1042
integer y = 852
integer taborder = 10
end type

type cb_1 from commandbutton within w_nonviusalobject_standard
integer x = 229
integer y = 904
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

