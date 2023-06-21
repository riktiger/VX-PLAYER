VERSION 5.00
Begin VB.Form OPENINGUI 
   BackColor       =   &H80000009&
   Caption         =   "VX PLAYER-Version 1.0"
   ClientHeight    =   6456
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   14232
   Icon            =   "OPENINGUI.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6456
   ScaleWidth      =   14232
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   6132
      Left            =   0
      Picture         =   "OPENINGUI.frx":0CCA
      ScaleHeight     =   6132
      ScaleWidth      =   13620
      TabIndex        =   0
      Top             =   840
      Width           =   13620
   End
   Begin VB.Timer Timer1 
      Left            =   240
      Top             =   5040
   End
End
Attribute VB_Name = "OPENINGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Double

Private Sub Form_Load()
OPENINGUI.Timer1.Interval = 3000
Timer1.Enabled = True
OPENINGUI.Width = Screen.Width
OPENINGUI.Height = Screen.Height

End Sub

Private Sub Timer1_Timer()
OPENINGUI.Visible = False
Load MEDIAUI
MEDIAUI.Visible = True
Timer1.Enabled = False
Unload ONLINEUI
End Sub
