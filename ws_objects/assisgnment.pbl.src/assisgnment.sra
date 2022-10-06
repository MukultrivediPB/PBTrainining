$PBExportHeader$assisgnment.sra
$PBExportComments$Generated Application Object
forward
global type assisgnment from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type assisgnment from application
string appname = "assisgnment"
string appruntimeversion = "22.0.0.1716"
end type
global assisgnment assisgnment

on assisgnment.create
appname = "assisgnment"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on assisgnment.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

