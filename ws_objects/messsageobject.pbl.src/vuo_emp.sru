$PBExportHeader$vuo_emp.sru
forward
global type vuo_emp from userobject
end type
type st_1 from statictext within vuo_emp
end type
type dw_1 from svuo_dw within vuo_emp
end type
type cb_5 from commandbutton within vuo_emp
end type
type cb_4 from commandbutton within vuo_emp
end type
type cb_3 from commandbutton within vuo_emp
end type
type cb_2 from commandbutton within vuo_emp
end type
type cb_1 from commandbutton within vuo_emp
end type
end forward

global type vuo_emp from userobject
integer width = 3054
integer height = 1804
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_1 st_1
dw_1 dw_1
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global vuo_emp vuo_emp

on vuo_emp.create
this.st_1=create st_1
this.dw_1=create dw_1
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.st_1,&
this.dw_1,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on vuo_emp.destroy
destroy(this.st_1)
destroy(this.dw_1)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

event constructor;dw_1.settransobject(u_sqlca);
dw_1.retrieve()
end event

type st_1 from statictext within vuo_emp
integer x = 105
integer y = 176
integer width = 1216
integer height = 88
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
long textcolor = 134217857
long backcolor = 134217730
string text = "Employee Management System"
boolean focusrectangle = false
end type

type dw_1 from svuo_dw within vuo_emp
integer x = 96
integer y = 300
integer width = 2656
integer height = 1212
integer taborder = 10
end type

event doubleclicked;call super::doubleclicked;
str_emp l_str_emp

l_str_emp.emp_id = dw_1.getitemNumber(row,1)
l_str_emp.emp_fname = dw_1.getitemString(row,2)
l_str_emp.emp_lname = dw_1.getitemString(row,3)
l_str_emp.dept_id = dw_1.getitemNumber(row,4)
l_str_emp.street = dw_1.getitemString(row,5)
l_str_emp.city = dw_1.getitemString(row,6)
l_str_emp.state = dw_1.getitemString(row,7)
l_str_emp.phone= dw_1.getitemString(row,8)


openwithparm(w_emp_detailas,l_str_emp)


end event

type cb_5 from commandbutton within vuo_emp
integer x = 2327
integer y = 1648
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
boolean default = true
boolean flatstyle = true
end type

event clicked;halt close
end event

type cb_4 from commandbutton within vuo_emp
integer x = 1797
integer y = 1652
integer width = 402
integer height = 104
integer taborder = 50
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
boolean default = true
boolean flatstyle = true
end type

event clicked;dw_1.accepttext();
dw_1.update()

if u_sqlca.sqlcode=0 then 
	commit using u_sqlca;
	
	messagebox('Confirmation', 'Updated Succesfully')
end if
end event

type cb_3 from commandbutton within vuo_emp
integer x = 1207
integer y = 1652
integer width = 411
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Delete"
boolean default = true
boolean flatstyle = true
end type

event clicked;dw_1.deleterow(dw_1.GetSelectedRow(0))
end event

type cb_2 from commandbutton within vuo_emp
integer x = 626
integer y = 1652
integer width = 430
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert"
boolean default = true
boolean flatstyle = true
end type

event clicked;int ret
ret =dw_1.insertrow(0);
dw_1.scrolltorow(ret);
end event

type cb_1 from commandbutton within vuo_emp
integer x = 96
integer y = 1652
integer width = 421
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
boolean default = true
boolean flatstyle = true
end type

event clicked;//dw_1.settransobject(u_sqlca);
//dw_1.retrieve()
end event

