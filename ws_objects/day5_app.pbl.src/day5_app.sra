$PBExportHeader$day5_app.sra
$PBExportComments$Generated Application Object
forward
global type day5_app from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type day5_app from application
string appname = "day5_app"
string appruntimeversion = "22.0.0.1716"
end type
global day5_app day5_app

on day5_app.create
appname = "day5_app"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on day5_app.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

