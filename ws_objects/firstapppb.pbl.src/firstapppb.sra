$PBExportHeader$firstapppb.sra
$PBExportComments$Generated Application Object
forward
global type firstapppb from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type firstapppb from application
string appname = "firstapppb"
string appruntimeversion = "22.0.0.1716"
end type
global firstapppb firstapppb

on firstapppb.create
appname = "firstapppb"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on firstapppb.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

