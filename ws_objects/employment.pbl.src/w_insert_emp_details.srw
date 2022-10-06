$PBExportHeader$w_insert_emp_details.srw
forward
global type w_insert_emp_details from window
end type
type dw_1 from datawindow within w_insert_emp_details
end type
type sle_department from singlelineedit within w_insert_emp_details
end type
type st_department from statictext within w_insert_emp_details
end type
type sle_address from singlelineedit within w_insert_emp_details
end type
type sle_phoneno from singlelineedit within w_insert_emp_details
end type
type sle_name from singlelineedit within w_insert_emp_details
end type
type sle_emp_id from singlelineedit within w_insert_emp_details
end type
type st_address from statictext within w_insert_emp_details
end type
type st_phoneno from statictext within w_insert_emp_details
end type
type st_name from statictext within w_insert_emp_details
end type
type st_emp_id from statictext within w_insert_emp_details
end type
type st_1 from statictext within w_insert_emp_details
end type
type cb_2 from commandbutton within w_insert_emp_details
end type
type cb_1 from commandbutton within w_insert_emp_details
end type
end forward

global type w_insert_emp_details from window
integer width = 3406
integer height = 1812
boolean titlebar = true
string title = "Employee_Registration_Form"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
sle_department sle_department
st_department st_department
sle_address sle_address
sle_phoneno sle_phoneno
sle_name sle_name
sle_emp_id sle_emp_id
st_address st_address
st_phoneno st_phoneno
st_name st_name
st_emp_id st_emp_id
st_1 st_1
cb_2 cb_2
cb_1 cb_1
end type
global w_insert_emp_details w_insert_emp_details

on w_insert_emp_details.create
this.dw_1=create dw_1
this.sle_department=create sle_department
this.st_department=create st_department
this.sle_address=create sle_address
this.sle_phoneno=create sle_phoneno
this.sle_name=create sle_name
this.sle_emp_id=create sle_emp_id
this.st_address=create st_address
this.st_phoneno=create st_phoneno
this.st_name=create st_name
this.st_emp_id=create st_emp_id
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.dw_1,&
this.sle_department,&
this.st_department,&
this.sle_address,&
this.sle_phoneno,&
this.sle_name,&
this.sle_emp_id,&
this.st_address,&
this.st_phoneno,&
this.st_name,&
this.st_emp_id,&
this.st_1,&
this.cb_2,&
this.cb_1}
end on

on w_insert_emp_details.destroy
destroy(this.dw_1)
destroy(this.sle_department)
destroy(this.st_department)
destroy(this.sle_address)
destroy(this.sle_phoneno)
destroy(this.sle_name)
destroy(this.sle_emp_id)
destroy(this.st_address)
destroy(this.st_phoneno)
destroy(this.st_name)
destroy(this.st_emp_id)
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type dw_1 from datawindow within w_insert_emp_details
integer x = 37
integer y = 1188
integer width = 2766
integer height = 408
integer taborder = 80
string title = "none"
string dataobject = "dw_emp_form"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_department from singlelineedit within w_insert_emp_details
integer x = 928
integer y = 524
integer width = 471
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_department from statictext within w_insert_emp_details
integer x = 347
integer y = 548
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 8388736
long backcolor = 67108864
string text = "Department"
boolean focusrectangle = false
end type

type sle_address from singlelineedit within w_insert_emp_details
integer x = 937
integer y = 804
integer width = 471
integer height = 92
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_phoneno from singlelineedit within w_insert_emp_details
integer x = 928
integer y = 672
integer width = 471
integer height = 92
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_name from singlelineedit within w_insert_emp_details
integer x = 933
integer y = 408
integer width = 471
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_emp_id from singlelineedit within w_insert_emp_details
integer x = 928
integer y = 276
integer width = 471
integer height = 92
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

type st_address from statictext within w_insert_emp_details
integer x = 352
integer y = 808
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 8388736
long backcolor = 67108864
string text = "Address"
boolean focusrectangle = false
end type

type st_phoneno from statictext within w_insert_emp_details
integer x = 366
integer y = 676
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 8388736
long backcolor = 67108864
string text = "Phone No"
boolean focusrectangle = false
end type

type st_name from statictext within w_insert_emp_details
integer x = 357
integer y = 404
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 8388736
long backcolor = 67108864
string text = "Name"
boolean focusrectangle = false
end type

type st_emp_id from statictext within w_insert_emp_details
integer x = 357
integer y = 292
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 8388736
long backcolor = 67108864
string text = "emp_id"
boolean focusrectangle = false
end type

type st_1 from statictext within w_insert_emp_details
integer x = 311
integer y = 128
integer width = 1243
integer height = 64
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
boolean italic = true
boolean underline = true
long textcolor = 134217741
long backcolor = 65535
string text = "Please fill the following details:-"
long bordercolor = 128
borderstyle borderstyle = StyleBox!
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_insert_emp_details
integer x = 965
integer y = 988
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "CANCEL"
boolean default = true
boolean flatstyle = true
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within w_insert_emp_details
integer x = 347
integer y = 996
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "SUBMIT"
boolean default = true
boolean flatstyle = true
end type

event clicked;int l_row
l_row=dw_1.insertrow(0)
dw_1.scrolltorow(l_row)
dw_1.setitem(l_row, 'emp_id', sle_emp_id.text)
dw_1.setitem(l_row, 'Name', sle_name.text)
dw_1.setitem(l_row, 'Department', sle_department.text)
dw_1.setitem(l_row, 'Phoneno', Integer(sle_phoneno.text))
dw_1.setitem(l_row, 'Address', sle_address.text)
//dw_1.insertrow(0)

dw_1.update()
commit using sqlca;

sle_emp_id.text=''
sle_name.text=''
sle_department.text=''
sle_phoneno.text=''
sle_address.text=''
end event

