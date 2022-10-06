$PBExportHeader$w_checkbox.srw
forward
global type w_checkbox from window
end type
type cbx_3 from checkbox within w_checkbox
end type
type cbx_2 from checkbox within w_checkbox
end type
type cbx_1 from checkbox within w_checkbox
end type
type rb_2 from radiobutton within w_checkbox
end type
type rb_1 from radiobutton within w_checkbox
end type
type cb_1 from commandbutton within w_checkbox
end type
end forward

global type w_checkbox from window
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
cbx_3 cbx_3
cbx_2 cbx_2
cbx_1 cbx_1
rb_2 rb_2
rb_1 rb_1
cb_1 cb_1
end type
global w_checkbox w_checkbox

on w_checkbox.create
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cbx_1=create cbx_1
this.rb_2=create rb_2
this.rb_1=create rb_1
this.cb_1=create cb_1
this.Control[]={this.cbx_3,&
this.cbx_2,&
this.cbx_1,&
this.rb_2,&
this.rb_1,&
this.cb_1}
end on

on w_checkbox.destroy
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cbx_1)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.cb_1)
end on

type cbx_3 from checkbox within w_checkbox
integer x = 1339
integer y = 684
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Social"
end type

type cbx_2 from checkbox within w_checkbox
integer x = 1339
integer y = 588
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Math"
end type

type cbx_1 from checkbox within w_checkbox
integer x = 1339
integer y = 496
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Science"
end type

type rb_2 from radiobutton within w_checkbox
integer x = 1280
integer y = 320
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Female"
end type

type rb_1 from radiobutton within w_checkbox
integer x = 1271
integer y = 188
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Male"
end type

type cb_1 from commandbutton within w_checkbox
integer x = 695
integer y = 860
integer width = 608
integer height = 164
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Submit"
end type

event clicked;String l_study

if cbx_1.checked=true then 
	l_study='Science'
	
end if

if cbx_2.checked=true then 
	l_study='Math'
	
end if

if cbx_3.checked=true then 
	l_study='Social'
	
end if

if cbx_1.checked=false and cbx_2.checked  and cbx_3.checked= false then
	
	messagebox('Info',l_study)
END IF

insert into study_subject values(:cbx_1.text, :cbx_2.text, cbx_3.text);
end event

