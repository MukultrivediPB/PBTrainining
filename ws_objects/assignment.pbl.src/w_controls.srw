$PBExportHeader$w_controls.srw
forward
global type w_controls from window
end type
type tab_1 from tab within w_controls
end type
type tabpage_1 from userobject within tab_1
end type
type tabpage_1 from userobject within tab_1
end type
type tabpage_2 from userobject within tab_1
end type
type mle_1 from multilineedit within tabpage_2
end type
type cb_1 from commandbutton within tabpage_2
end type
type sle_6 from singlelineedit within tabpage_2
end type
type tabpage_2 from userobject within tab_1
mle_1 mle_1
cb_1 cb_1
sle_6 sle_6
end type
type tabpage_3 from userobject within tab_1
end type
type tabpage_3 from userobject within tab_1
end type
type tabpage_4 from userobject within tab_1
end type
type tabpage_4 from userobject within tab_1
end type
type tab_1 from tab within w_controls
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
tabpage_4 tabpage_4
end type
type cbx_4 from checkbox within w_controls
end type
type st_9 from statictext within w_controls
end type
type cbx_3 from checkbox within w_controls
end type
type st_8 from statictext within w_controls
end type
type sle_5 from singlelineedit within w_controls
end type
type st_7 from statictext within w_controls
end type
type cbx_2 from checkbox within w_controls
end type
type st_6 from statictext within w_controls
end type
type cbx_1 from checkbox within w_controls
end type
type st_5 from statictext within w_controls
end type
type sle_4 from singlelineedit within w_controls
end type
type st_4 from statictext within w_controls
end type
type sle_3 from singlelineedit within w_controls
end type
type st_3 from statictext within w_controls
end type
type sle_2 from singlelineedit within w_controls
end type
type st_2 from statictext within w_controls
end type
type sle_1 from singlelineedit within w_controls
end type
type st_1 from statictext within w_controls
end type
end forward

global type w_controls from window
string tag = "Datail"
integer width = 4370
integer height = 2448
boolean titlebar = true
string title = "Details"
boolean controlmenu = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
tab_1 tab_1
cbx_4 cbx_4
st_9 st_9
cbx_3 cbx_3
st_8 st_8
sle_5 sle_5
st_7 st_7
cbx_2 cbx_2
st_6 st_6
cbx_1 cbx_1
st_5 st_5
sle_4 sle_4
st_4 st_4
sle_3 sle_3
st_3 st_3
sle_2 sle_2
st_2 st_2
sle_1 sle_1
st_1 st_1
end type
global w_controls w_controls

type variables
string docpath, docname[], LockWrite
end variables

on w_controls.create
this.tab_1=create tab_1
this.cbx_4=create cbx_4
this.st_9=create st_9
this.cbx_3=create cbx_3
this.st_8=create st_8
this.sle_5=create sle_5
this.st_7=create st_7
this.cbx_2=create cbx_2
this.st_6=create st_6
this.cbx_1=create cbx_1
this.st_5=create st_5
this.sle_4=create sle_4
this.st_4=create st_4
this.sle_3=create sle_3
this.st_3=create st_3
this.sle_2=create sle_2
this.st_2=create st_2
this.sle_1=create sle_1
this.st_1=create st_1
this.Control[]={this.tab_1,&
this.cbx_4,&
this.st_9,&
this.cbx_3,&
this.st_8,&
this.sle_5,&
this.st_7,&
this.cbx_2,&
this.st_6,&
this.cbx_1,&
this.st_5,&
this.sle_4,&
this.st_4,&
this.sle_3,&
this.st_3,&
this.sle_2,&
this.st_2,&
this.sle_1,&
this.st_1}
end on

on w_controls.destroy
destroy(this.tab_1)
destroy(this.cbx_4)
destroy(this.st_9)
destroy(this.cbx_3)
destroy(this.st_8)
destroy(this.sle_5)
destroy(this.st_7)
destroy(this.cbx_2)
destroy(this.st_6)
destroy(this.cbx_1)
destroy(this.st_5)
destroy(this.sle_4)
destroy(this.st_4)
destroy(this.sle_3)
destroy(this.st_3)
destroy(this.sle_2)
destroy(this.st_2)
destroy(this.sle_1)
destroy(this.st_1)
end on

event open;open(dw_find)
end event

type tab_1 from tab within w_controls
integer x = 270
integer y = 820
integer width = 2633
integer height = 1168
integer taborder = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
integer selectedtab = 1
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
tabpage_4 tabpage_4
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.tabpage_3=create tabpage_3
this.tabpage_4=create tabpage_4
this.Control[]={this.tabpage_1,&
this.tabpage_2,&
this.tabpage_3,&
this.tabpage_4}
end on

on tab_1.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
destroy(this.tabpage_3)
destroy(this.tabpage_4)
end on

type tabpage_1 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 2597
integer height = 1040
long backcolor = 67108864
string text = "Details"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
end type

type tabpage_2 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 2597
integer height = 1040
long backcolor = 67108864
string text = "Document"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
mle_1 mle_1
cb_1 cb_1
sle_6 sle_6
end type

on tabpage_2.create
this.mle_1=create mle_1
this.cb_1=create cb_1
this.sle_6=create sle_6
this.Control[]={this.mle_1,&
this.cb_1,&
this.sle_6}
end on

on tabpage_2.destroy
destroy(this.mle_1)
destroy(this.cb_1)
destroy(this.sle_6)
end on

type mle_1 from multilineedit within tabpage_2
integer x = 101
integer y = 316
integer width = 1815
integer height = 688
integer taborder = 50
integer textsize = -15
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within tabpage_2
integer x = 1719
integer y = 172
integer width = 178
integer height = 108
integer taborder = 40
integer textsize = -15
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "..."
end type

event clicked;long li_rtn , li_FileNum
li_rtn=GetFileOpenName("Select File",& 
docpath, docname[],"Doc", &
+ "All files(*.*), *.* ", & 
".\",18)

sle_1.text=docpath

li_FileNum=FileOpen(docpath, & 
StreamMode!, Read!, LockWrite!, Append!)

string Is_Emp_Input
long ll_Flength

ll_FLength=FileLength64(docpath)

IF ll_FLength < 32767 THEN 
	FileRead(li_FileNum, Is_Emp_Input)
END IF

mle_1.text=Is_Emp_Input
end event

type sle_6 from singlelineedit within tabpage_2
integer x = 96
integer y = 176
integer width = 1595
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type tabpage_3 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 2597
integer height = 1040
long backcolor = 67108864
string text = "Audit"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
end type

type tabpage_4 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 2597
integer height = 1040
long backcolor = 67108864
string text = "Save"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
end type

type cbx_4 from checkbox within w_controls
integer x = 4155
integer y = 668
integer width = 96
integer height = 76
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
end type

type st_9 from statictext within w_controls
integer x = 3543
integer y = 680
integer width = 599
integer height = 88
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "EQAI Profit Center :"
alignment alignment = center!
boolean focusrectangle = false
end type

type cbx_3 from checkbox within w_controls
integer x = 4142
integer y = 464
integer width = 82
integer height = 76
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
end type

type st_8 from statictext within w_controls
integer x = 3657
integer y = 464
integer width = 485
integer height = 88
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "EQAI Company :"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_5 from singlelineedit within w_controls
integer x = 2738
integer y = 460
integer width = 827
integer height = 104
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

type st_7 from statictext within w_controls
integer x = 2235
integer y = 476
integer width = 453
integer height = 88
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "State Reg. ID :"
alignment alignment = center!
boolean focusrectangle = false
end type

type cbx_2 from checkbox within w_controls
integer x = 4091
integer y = 176
integer width = 82
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
end type

type st_6 from statictext within w_controls
integer x = 3689
integer y = 184
integer width = 416
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "EQAI Facility :"
boolean focusrectangle = false
end type

type cbx_1 from checkbox within w_controls
integer x = 3566
integer y = 176
integer width = 82
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
end type

type st_5 from statictext within w_controls
integer x = 2894
integer y = 184
integer width = 663
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "US  Ecology    Facility :"
boolean focusrectangle = false
end type

type sle_4 from singlelineedit within w_controls
integer x = 2482
integer y = 168
integer width = 352
integer height = 104
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

type st_4 from statictext within w_controls
integer x = 174
integer y = 464
integer width = 238
integer height = 88
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Name:"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_3 from singlelineedit within w_controls
integer x = 430
integer y = 460
integer width = 1755
integer height = 104
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

type st_3 from statictext within w_controls
integer x = 2258
integer y = 184
integer width = 233
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Status"
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_controls
integer x = 1499
integer y = 168
integer width = 695
integer height = 104
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

type st_2 from statictext within w_controls
integer x = 1243
integer y = 188
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "EPA ID :"
boolean focusrectangle = false
end type

type sle_1 from singlelineedit within w_controls
integer x = 443
integer y = 176
integer width = 745
integer height = 104
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

type st_1 from statictext within w_controls
integer x = 50
integer y = 188
integer width = 402
integer height = 88
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "TSDF Code :"
boolean focusrectangle = false
end type

