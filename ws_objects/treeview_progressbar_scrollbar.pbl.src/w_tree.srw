$PBExportHeader$w_tree.srw
forward
global type w_tree from window
end type
type dw_1 from datawindow within w_tree
end type
type tv_1 from treeview within w_tree
end type
end forward

global type w_tree from window
integer width = 3205
integer height = 1596
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
tv_1 tv_1
end type
global w_tree w_tree

on w_tree.create
this.dw_1=create dw_1
this.tv_1=create tv_1
this.Control[]={this.dw_1,&
this.tv_1}
end on

on w_tree.destroy
destroy(this.dw_1)
destroy(this.tv_1)
end on

event open;long menu1, menu2,menu3,menu4,menu5


menu1=tv_1.insertitemlast( 0, 'Open',1 )
menu2=tv_1.insertitemlast( 0, 'End',2 )
menu3=tv_1.insertitemlast( 0, 'New', 3)

menu4=tv_1.insertitemlast( menu1, 'Employee',4 )
tv_1.insertitemlast( menu1, 'Emp',3 )
/*tv_1.insertitemlast( menu1, 'Records',2 )
tv_1.insertitemlast( menu2, 'Department',2 )
tv_1.insertitemlast( menu3, 'Customer',2 )
tv_1.insertitemlast( menu3, 'Open',2 )

tv_1.insertitemlast( menu1, 'Salary',3 )*/
menu5=tv_1.insertitemlast( menu4, 'salar',3 )
tv_1.insertitemlast( menu5, 'Harika',5 )


end event

event clicked;/*treeviewitem tv

this.getItem(handle,tv)
if string(tv.label)='Emp' then
	dw_1.dataobject='dw_view'
	
end if
*/
end event

type dw_1 from datawindow within w_tree
integer x = 1179
integer y = 56
integer width = 1595
integer height = 1072
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = styleshadowbox!
end type

type tv_1 from treeview within w_tree
integer x = 133
integer y = 36
integer width = 818
integer height = 1096
integer taborder = 10
string dragicon = "AppRectangleIcon!"
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = styleshadowbox!
boolean deleteitems = true
boolean hideselection = false
boolean checkboxes = true
boolean singleexpand = true
string picturename[] = {"Open!","DatabaseProfile3!","AlignAllHeightsAndWidthsSame!","ApplicationIcon2!","C:\Users\Administrator\Desktop\Capture.PNG"}
long picturemaskcolor = 536870912
string statepicturename[] = {"AddWatch1!"}
long statepicturemaskcolor = 536870912
end type

event clicked;treeviewitem tv

this.getItem(handle,tv)
if string(tv.label)='Emp' then
	dw_1.dataobject='dw_view'
	dw_1.settransobject(sqlca);
	dw_1.retrieve()
	
end if

end event

