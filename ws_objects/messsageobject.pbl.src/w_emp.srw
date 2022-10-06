$PBExportHeader$w_emp.srw
forward
global type w_emp from window
end type
type uo_1 from vuo_emp within w_emp
end type
end forward

global type w_emp from window
integer width = 3168
integer height = 2080
boolean titlebar = true
string title = "Employee Detail"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
uo_1 uo_1
end type
global w_emp w_emp

on w_emp.create
this.uo_1=create uo_1
this.Control[]={this.uo_1}
end on

on w_emp.destroy
destroy(this.uo_1)
end on

event open;uo_1.dw_1.dataobject='dw_emp'
end event

type uo_1 from vuo_emp within w_emp
integer width = 3063
integer height = 1856
integer taborder = 10
end type

on uo_1.destroy
call vuo_emp::destroy
end on

event dragdrop;call super::dragdrop;dw_1.deleterow(dw_1.GetSelectedRow(0))
end event

