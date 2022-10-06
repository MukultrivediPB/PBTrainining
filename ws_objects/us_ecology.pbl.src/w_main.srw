$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
end forward

global type w_main from window
integer width = 3168
integer height = 1396
boolean titlebar = true
string title = "Main"
string menuname = "w"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
end type
global w_main w_main

on w_main.create
if this.MenuName = "w" then this.MenuID = create w
end on

on w_main.destroy
if IsValid(MenuID) then destroy(MenuID)
end on

