VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4995
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9240
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   4995
   ScaleWidth      =   9240
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3750
      Left            =   225
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form1.frx":0000
      Top             =   180
      Width           =   8160
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public a As String
Private b() As Byte 'ascii string
Private l() As Long

Private Sub Form_Load()
    
    a = "this is my unicode string !"
    b() = StrConv(a, vbFromUnicode, &H409)
        
    ReDim l(4)
    l(0) = &H11223344
    l(1) = &H55667788
    l(2) = &H99AABBCC
    l(3) = &HDDEEFF00
    l(4) = &H11111111
    
    Text1 = "strptr(a) = 0x" & Hex(StrPtr(a)) & vbCrLf & _
            "varptr(b(0)) = 0x" & Hex(VarPtr(b(0))) & vbCrLf & _
            "varptr(l(0)) = 0x" & Hex(VarPtr(l(0))) & vbCrLf
            
            
    
End Sub
