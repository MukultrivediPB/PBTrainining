$PBExportHeader$w_emp_detailas.srw
forward
global type w_emp_detailas from window
end type
type dw_1 from datawindow within w_emp_detailas
end type
end forward

global type w_emp_detailas from window
integer width = 3168
integer height = 1520
boolean titlebar = true
string title = "Employee Details"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
end type
global w_emp_detailas w_emp_detailas

on w_emp_detailas.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on w_emp_detailas.destroy
destroy(this.dw_1)
end on

event open;str_emp l_str



l_str = message.powerobjectparm
dw_1.insertrow(0)
dw_1.setitem(1,1,l_str.emp_id)
dw_1.setitem(1,2,l_str.emp_fname)
dw_1.setitem(1,3,l_str.emp_lname)
dw_1.setitem(1,4,l_str.dept_id)
dw_1.setitem(1,5,l_str.street)
dw_1.setitem(1,6,l_str.city)
dw_1.setitem(1,7,l_str.state)
dw_1.setitem(1,8,l_str.phone)
end event

type dw_1 from datawindow within w_emp_detailas
integer x = 375
integer width = 1806
integer height = 1224
integer taborder = 10
string title = "none"
string dataobject = "dw_emp_details"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

