$PBExportHeader$w_insert_delete.srw
forward
global type w_insert_delete from window
end type
type st_8 from statictext within w_insert_delete
end type
type st_7 from statictext within w_insert_delete
end type
type st_5 from statictext within w_insert_delete
end type
type p_6 from picture within w_insert_delete
end type
type p_5 from picture within w_insert_delete
end type
type p_3 from picture within w_insert_delete
end type
type p_1 from picture within w_insert_delete
end type
type p_2 from picture within w_insert_delete
end type
type dw_1 from datawindow within w_insert_delete
end type
type sle_5 from singlelineedit within w_insert_delete
end type
type st_9 from statictext within w_insert_delete
end type
type sle_2 from singlelineedit within w_insert_delete
end type
type st_6 from statictext within w_insert_delete
end type
type st_4 from statictext within w_insert_delete
end type
type st_3 from statictext within w_insert_delete
end type
type st_2 from statictext within w_insert_delete
end type
type st_1 from statictext within w_insert_delete
end type
type sle_4 from singlelineedit within w_insert_delete
end type
type sle_3 from singlelineedit within w_insert_delete
end type
type sle_1 from singlelineedit within w_insert_delete
end type
end forward

global type w_insert_delete from window
integer width = 5330
integer height = 3188
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_8 st_8
st_7 st_7
st_5 st_5
p_6 p_6
p_5 p_5
p_3 p_3
p_1 p_1
p_2 p_2
dw_1 dw_1
sle_5 sle_5
st_9 st_9
sle_2 sle_2
st_6 st_6
st_4 st_4
st_3 st_3
st_2 st_2
st_1 st_1
sle_4 sle_4
sle_3 sle_3
sle_1 sle_1
end type
global w_insert_delete w_insert_delete

on w_insert_delete.create
this.st_8=create st_8
this.st_7=create st_7
this.st_5=create st_5
this.p_6=create p_6
this.p_5=create p_5
this.p_3=create p_3
this.p_1=create p_1
this.p_2=create p_2
this.dw_1=create dw_1
this.sle_5=create sle_5
this.st_9=create st_9
this.sle_2=create sle_2
this.st_6=create st_6
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.sle_4=create sle_4
this.sle_3=create sle_3
this.sle_1=create sle_1
this.Control[]={this.st_8,&
this.st_7,&
this.st_5,&
this.p_6,&
this.p_5,&
this.p_3,&
this.p_1,&
this.p_2,&
this.dw_1,&
this.sle_5,&
this.st_9,&
this.sle_2,&
this.st_6,&
this.st_4,&
this.st_3,&
this.st_2,&
this.st_1,&
this.sle_4,&
this.sle_3,&
this.sle_1}
end on

on w_insert_delete.destroy
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_5)
destroy(this.p_6)
destroy(this.p_5)
destroy(this.p_3)
destroy(this.p_1)
destroy(this.p_2)
destroy(this.dw_1)
destroy(this.sle_5)
destroy(this.st_9)
destroy(this.sle_2)
destroy(this.st_6)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_4)
destroy(this.sle_3)
destroy(this.sle_1)
end on

type st_8 from statictext within w_insert_delete
integer x = 4352
integer y = 308
integer width = 475
integer height = 116
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 33554432
long backcolor = 67108864
string text = "Add New Row"
boolean focusrectangle = false
end type

type st_7 from statictext within w_insert_delete
integer x = 3895
integer y = 312
integer width = 457
integer height = 116
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 33554432
long backcolor = 67108864
string text = "Delete Row"
boolean focusrectangle = false
end type

type st_5 from statictext within w_insert_delete
integer x = 3401
integer y = 308
integer width = 393
integer height = 116
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Refresh"
boolean focusrectangle = false
end type

type p_6 from picture within w_insert_delete
integer x = 1897
integer y = 2200
integer width = 795
integer height = 280
string picturename = "C:\Users\Administrator\Desktop\cancel-sign-button-3053748.jpg"
boolean focusrectangle = false
end type

event clicked;halt close
end event

type p_5 from picture within w_insert_delete
integer x = 960
integer y = 2180
integer width = 690
integer height = 352
string picturename = "C:\Users\Administrator\Downloads\25497-9-submit-button-photos (2).png"
boolean focusrectangle = false
end type

event clicked;
INSERT INTO InsertDelete values (:sle_1.text, :sle_2.text,:sle_3.text,:sle_4.text,:sle_5.text);
dw_1.settransobject(sqlca)
//dw_1.update()
commit using sqlca;
dw_1.retrieve()
messagebox('Information','Updated Successfully')
sle_1.text=''
sle_2.text=''
sle_3.text=''
sle_4.text=''
sle_5.text=''
end event

type p_3 from picture within w_insert_delete
integer x = 3378
integer y = 48
integer width = 389
integer height = 256
string picturename = "AddWatch1!"
boolean focusrectangle = false
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve();
end event

type p_1 from picture within w_insert_delete
integer x = 4379
integer width = 430
integer height = 316
string picturename = "C:\Users\Administrator\Desktop\Capture.PNG"
boolean focusrectangle = false
end type

event clicked;//INSERT INTO InsertDelete values (NoteDate, NoteType, Subject, Note, Status);

//messagebox('Information', 'Sucess');
int ret
ret=dw_1.insertrow(0);
dw_1.scrolltorow(ret);
end event

type p_2 from picture within w_insert_delete
integer x = 3899
integer y = 32
integer width = 315
integer height = 268
string picturename = "C:\Users\Administrator\Desktop\Capture1.PNG"
boolean focusrectangle = false
end type

event clicked;dw_1.deleterow(dw_1.GetSelectedRow(0))
end event

type dw_1 from datawindow within w_insert_delete
integer x = 27
integer y = 452
integer width = 4791
integer height = 412
integer taborder = 10
string title = "none"
string dataobject = "dw_insert_delete"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_5 from singlelineedit within w_insert_delete
integer x = 2930
integer y = 1344
integer width = 763
integer height = 176
integer taborder = 60
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_9 from statictext within w_insert_delete
integer x = 2427
integer y = 1360
integer width = 357
integer height = 112
integer textsize = -18
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Status"
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_insert_delete
integer x = 2917
integer y = 976
integer width = 773
integer height = 164
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_6 from statictext within w_insert_delete
integer x = 3854
integer y = 956
integer width = 667
integer height = 164
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "ID : 1746"
boolean focusrectangle = false
end type

type st_4 from statictext within w_insert_delete
integer x = 2304
integer y = 996
integer width = 549
integer height = 128
integer textsize = -18
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Note Type :"
boolean focusrectangle = false
end type

type st_3 from statictext within w_insert_delete
integer x = 219
integer y = 1840
integer width = 384
integer height = 140
integer textsize = -18
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Note"
boolean focusrectangle = false
end type

type st_2 from statictext within w_insert_delete
integer x = 215
integer y = 1384
integer width = 594
integer height = 184
integer textsize = -18
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Subject"
boolean focusrectangle = false
end type

type st_1 from statictext within w_insert_delete
integer x = 238
integer y = 996
integer width = 530
integer height = 184
integer textsize = -18
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Note Date"
boolean focusrectangle = false
end type

type sle_4 from singlelineedit within w_insert_delete
integer x = 859
integer y = 1620
integer width = 2816
integer height = 440
integer taborder = 50
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_3 from singlelineedit within w_insert_delete
integer x = 873
integer y = 1380
integer width = 1152
integer height = 176
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_insert_delete
integer x = 864
integer y = 988
integer width = 1147
integer height = 168
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

