$PBExportHeader$nvo_commandbutton.sru
forward
global type nvo_commandbutton from commandbutton
end type
end forward

global type nvo_commandbutton from commandbutton
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type
global nvo_commandbutton nvo_commandbutton

on nvo_commandbutton.create
end on

on nvo_commandbutton.destroy
end on

event clicked;//dw_1.settransobject(sqlca)
//dw_1.retrieve()
end event

