$PBExportHeader$w_filter.srw
forward
global type w_filter from window
end type
type dw_3 from datawindow within w_filter
end type
type dw_2 from datawindow within w_filter
end type
type dw_1 from datawindow within w_filter
end type
type cb_3 from commandbutton within w_filter
end type
type cb_2 from commandbutton within w_filter
end type
type cb_1 from commandbutton within w_filter
end type
end forward

global type w_filter from window
integer width = 3621
integer height = 1700
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_3 dw_3
dw_2 dw_2
dw_1 dw_1
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_filter w_filter

type variables
 
end variables

on w_filter.create
this.dw_3=create dw_3
this.dw_2=create dw_2
this.dw_1=create dw_1
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.dw_3,&
this.dw_2,&
this.dw_1,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_filter.destroy
destroy(this.dw_3)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

event open;//dw_1.settransobject(sqlca);
//dw_1.retrieve( )
end event

type dw_3 from datawindow within w_filter
integer x = 1664
integer y = 324
integer width = 622
integer height = 780
integer taborder = 20
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within w_filter
integer x = 905
integer y = 324
integer width = 622
integer height = 780
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_filter
integer x = 224
integer y = 324
integer width = 622
integer height = 780
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_3 from commandbutton within w_filter
integer x = 1673
integer y = 1452
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ok"
end type

event clicked;messagebox('Hi','Test')

end event

type cb_2 from commandbutton within w_filter
integer x = 914
integer y = 1296
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Validation"
end type

event clicked;Int li_row
long ll_salary
string ls_gender

for li_row= 1 to dw_1.rowcount()
ll_salary = dw_1.getitemnumber(li_row,'salary')
if ll_salary> 40000 Then
    dw_1.RowsCopy(li_row, li_row, Primary!, dw_2, 1, Primary!)

End If



ls_gender = dw_1.getitemstring(li_row,'gender')
if ll_salary> 40000 and ls_gender = 'F' Then
    dw_1.RowsCopy(li_row, li_row, Primary!, dw_3, 1, Primary!)
End If

next
end event

type cb_1 from commandbutton within w_filter
integer x = 256
integer y = 1292
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

