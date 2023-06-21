VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form ONLINEUI 
   Caption         =   "VX PLAYER (Online Mode)-Version 1.0"
   ClientHeight    =   6624
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   14964
   BeginProperty Font 
      Name            =   "Microsoft Sans Serif"
      Size            =   7.8
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "ONLINE.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "ONLINE.frx":0CCA
   ScaleHeight     =   6624
   ScaleWidth      =   14964
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btnEXIT2 
      Caption         =   "EXIT"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   13920
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   360
      Width           =   972
   End
   Begin VB.CommandButton btnCLEAR2 
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   13320
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   840
      Width           =   1092
   End
   Begin VB.CommandButton btnBACK 
      Caption         =   "BACK"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   12600
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   360
      Width           =   1092
   End
   Begin VB.CommandButton btnYOUTUBE 
      BackColor       =   &H00008000&
      Caption         =   "YOUTUBE"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   13200
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4440
      Width           =   1092
   End
   Begin VB.CommandButton btnGOOGLE 
      BackColor       =   &H00008000&
      Caption         =   "GOOGLE"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   13200
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3840
      Width           =   1092
   End
   Begin VB.TextBox txtSEARCH 
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   12600
      TabIndex        =   2
      Top             =   3120
      Width           =   2292
   End
   Begin VB.CommandButton btnGENERAL 
      BackColor       =   &H00008000&
      Caption         =   "OPEN BROWSER HERE"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   972
      Left            =   12600
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   5400
      Width           =   2292
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   6252
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Visible         =   0   'False
      Width           =   12252
      ExtentX         =   21611
      ExtentY         =   11028
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Label lblLOOK 
      BackColor       =   &H80000009&
      Caption         =   "LOOK FOR"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000F&
      Height          =   252
      Left            =   12600
      TabIndex        =   6
      Top             =   2520
      Width           =   1692
   End
End
Attribute VB_Name = "ONLINEUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnBACK_Click()
ONLINEUI.Visible = False
Load MEDIAUI
MEDIAUI.Visible = True
Unload ONLINEUI
End Sub

Private Sub btnCLEAR2_Click()
WebBrowser1.Navigate "WWW.GOOGLE.CO.IN"
WebBrowser1.Visible = False
txtSEARCH.Text = ""
End Sub

Private Sub btnEXIT2_Click()
End
End Sub

Private Sub btnGENERAL_Click()
WebBrowser1.Visible = True
WebBrowser1.Navigate "WWW.GOOGLE.CO.IN"
End Sub

Private Sub btnGOOGLE_Click()
Set IE = CreateObject("INTERNETEXPLORER.APPLICATION")
IE.Navigate "https://www.google.co.in/search?q=" & txtSEARCH.Text
IE.Visible = True
End Sub

Private Sub btnYOUTUBE_Click()
Set IE = CreateObject("INTERNETEXPLORER.APPLICATION")
IE.Navigate "https://www.youtube.com/results?search_query=" & txtSEARCH.Text
IE.Visible = True
End Sub

Private Sub Form_Load()
ONLINEUI.Height = Screen.Height
ONLINEUI.Width = Screen.Width

End Sub

