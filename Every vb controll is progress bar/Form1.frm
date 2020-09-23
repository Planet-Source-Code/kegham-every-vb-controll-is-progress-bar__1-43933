VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Every controll can be a progress bar !"
   ClientHeight    =   675
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4845
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   675
   ScaleWidth      =   4845
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton Option1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H000000C0&
      Enabled         =   0   'False
      Height          =   195
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      Width           =   75
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   4605
      Top             =   1395
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00E0E0E0&
      BorderWidth     =   3
      Height          =   210
      Left            =   120
      Top             =   120
      Width           =   4575
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   178
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   4575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = True

End Sub

Private Sub Timer1_Timer()
For a = 1 To Option1.Width - 10      '< ---  For smooth scrolling will be back - 10 every 1 to option.width

Option1.Width = a + 25
Label1.Caption = Option1.Width

Next

If Option1.Width = 4515 Then
MsgBox "Finished", vbInformation, "Progress end"
Timer1.Enabled = False

End If

End Sub
