$PBExportHeader$rock.sra
$PBExportComments$Generated Application Object
forward
global type rock from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type rock from application
string appname = "rock"
string appruntimeversion = "22.0.0.1716"
end type
global rock rock

on rock.create
appname = "rock"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on rock.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

