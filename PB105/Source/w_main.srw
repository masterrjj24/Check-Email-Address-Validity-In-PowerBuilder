$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type sle_1 from singlelineedit within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 1815
integer height = 400
boolean titlebar = true
string title = "Check IsValid Email"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_1 sle_1
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.sle_1=create sle_1
this.cb_1=create cb_1
this.Control[]={this.sle_1,&
this.cb_1}
end on

on w_main.destroy
destroy(this.sle_1)
destroy(this.cb_1)
end on

type sle_1 from singlelineedit within w_main
integer x = 101
integer y = 80
integer width = 1120
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "programmingmethodsit@gmail.com"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_main
integer x = 1266
integer y = 80
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Validity"
end type

event clicked;If f_isvalidemail(sle_1.text) Then
	MessageBox("Warning","Valid")
Else
	MessageBox("Warning","Invalid")
End If

end event

