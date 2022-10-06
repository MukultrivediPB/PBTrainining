$PBExportHeader$w_file.srw
forward
global type w_file from window
end type
type cb_1 from commandbutton within w_file
end type
type sle_1 from singlelineedit within w_file
end type
end forward

global type w_file from window
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
cb_1 cb_1
sle_1 sle_1
end type
global w_file w_file

type variables
string docpath, docname[]
end variables
on w_file.create
this.cb_1=create cb_1
this.sle_1=create sle_1
this.Control[]={this.cb_1,&
this.sle_1}
end on

on w_file.destroy
destroy(this.cb_1)
destroy(this.sle_1)
end on

type cb_1 from commandbutton within w_file
integer x = 2021
integer y = 316
integer width = 247
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "***"
end type

event clicked;long li_rtn , li_FileNum
li_rtn=GetFileOpenName("Select File",& 
docpath, docname[],"Doc", &
+ "All files(*.*), *.* ", & 
".\",18)

sle_1.text=docpath

li_FileNum=FileOpen(docpath, & 
StreamMode!, Read!, LockWrite!, Append!)
end event

type sle_1 from singlelineedit within w_file
integer x = 247
integer y = 300
integer width = 1682
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

