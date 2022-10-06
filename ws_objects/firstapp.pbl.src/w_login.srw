$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type st_3 from statictext within w_login
end type
type st_1 from statictext within w_login
end type
type sle_username from singlelineedit within w_login
end type
type sle_password from singlelineedit within w_login
end type
type cb_1 from commandbutton within w_login
end type
end forward

global type w_login from window
integer width = 3168
integer height = 1320
boolean titlebar = true
string title = "LoginWindow"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = toproll!
windowanimationstyle closeanimation = rightroll!
windowdockstate windowdockstate = windowdockstatefloating!
st_3 st_3
st_1 st_1
sle_username sle_username
sle_password sle_password
cb_1 cb_1
end type
global w_login w_login

on w_login.create
this.st_3=create st_3
this.st_1=create st_1
this.sle_username=create sle_username
this.sle_password=create sle_password
this.cb_1=create cb_1
this.Control[]={this.st_3,&
this.st_1,&
this.sle_username,&
this.sle_password,&
this.cb_1}
end on

on w_login.destroy
destroy(this.st_3)
destroy(this.st_1)
destroy(this.sle_username)
destroy(this.sle_password)
destroy(this.cb_1)
end on

type st_3 from statictext within w_login
integer x = 718
integer y = 528
integer width = 786
integer height = 164
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Password"
boolean focusrectangle = false
end type

type st_1 from statictext within w_login
integer x = 709
integer y = 216
integer width = 786
integer height = 164
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "UserName"
boolean focusrectangle = false
end type

type sle_username from singlelineedit within w_login
integer x = 1632
integer y = 180
integer width = 901
integer height = 188
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

type sle_password from singlelineedit within w_login
integer x = 1623
integer y = 492
integer width = 910
integer height = 208
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

type cb_1 from commandbutton within w_login
integer x = 1445
integer y = 860
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Login"
end type

event clicked;if(sle_username.text='salar' and sle_password.text='sayyad') then
messagebox('Information', 'YOU HAVE SUCCSESFULLY LOGGED IN')
open(w_empdata);
else 
	messagebox('Information', ' LOGIN FAILED')
end if
end event

