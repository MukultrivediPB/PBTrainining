$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type sle_pass from singlelineedit within w_login
end type
type sle_user from singlelineedit within w_login
end type
type st_2 from statictext within w_login
end type
type st_1 from statictext within w_login
end type
type cb_2 from commandbutton within w_login
end type
type cb_1 from commandbutton within w_login
end type
end forward

global type w_login from window
integer width = 3168
integer height = 1320
boolean titlebar = true
string title = "w_login"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 134217730
string icon = "AppIcon!"
boolean center = true
windowanimationstyle closeanimation = rightslide!
sle_pass sle_pass
sle_user sle_user
st_2 st_2
st_1 st_1
cb_2 cb_2
cb_1 cb_1
end type
global w_login w_login

on w_login.create
this.sle_pass=create sle_pass
this.sle_user=create sle_user
this.st_2=create st_2
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.sle_pass,&
this.sle_user,&
this.st_2,&
this.st_1,&
this.cb_2,&
this.cb_1}
end on

on w_login.destroy
destroy(this.sle_pass)
destroy(this.sle_user)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type sle_pass from singlelineedit within w_login
integer x = 1806
integer y = 476
integer width = 672
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean password = true
borderstyle borderstyle = StyleShadowBox!
end type

type sle_user from singlelineedit within w_login
integer x = 1801
integer y = 308
integer width = 672
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = StyleShadowBox!
end type

type st_2 from statictext within w_login
integer x = 1006
integer y = 500
integer width = 617
integer height = 104
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217741
long backcolor = 134217752
string text = "Password"
alignment alignment = Center!
boolean border = true
long bordercolor = 16711680
borderstyle borderstyle = StyleRaised!
boolean righttoleft = true
end type

type st_1 from statictext within w_login
integer x = 997
integer y = 324
integer width = 617
integer height = 104
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217741
long backcolor = 134217752
string text = "Username"
alignment alignment = Center!
boolean border = true
long bordercolor = 33554431
borderstyle borderstyle = StyleRaised!
end type

type cb_2 from commandbutton within w_login
integer x = 1787
integer y = 732
integer width = 731
integer height = 112
integer taborder = 40
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within w_login
integer x = 960
integer y = 732
integer width = 731
integer height = 112
integer taborder = 30
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Login"
boolean flatstyle = true
end type

event clicked;integer is_exists
select count(*) into:is_exists
from dbo.login
where ename=:sle_user.text and pass=:sle_pass.text;

if is_exists=1 then 
	messagebox('Information', 'Login Successfully')
	open(w_main)
	close(parent)
else
	messagebox('Information', 'Login Failed')
end if

end event

