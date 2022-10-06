$PBExportHeader$w_data.srw
forward
global type w_data from window
end type
type dw_1 from datawindow within w_data
end type
end forward

global type w_data from window
integer width = 3168
integer height = 1320
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
end type
global w_data w_data

on w_data.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on w_data.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within w_data
integer x = 206
integer y = 72
integer width = 1595
integer height = 620
integer taborder = 10
string title = "none"
string dataobject = "dw_placedorder"
boolean controlmenu = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

