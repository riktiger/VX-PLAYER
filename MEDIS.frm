VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form MEDIAUI 
   BackColor       =   &H8000000D&
   Caption         =   "VX PLAYER (Offline Mode)-Version 1.0"
   ClientHeight    =   8220
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   14724
   Icon            =   "MEDIS.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "MEDIS.frx":0CCA
   ScaleHeight     =   8220
   ScaleWidth      =   14724
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btnONLINE 
      BackColor       =   &H00008000&
      Caption         =   "GO ONLINE"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   13.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   9360
      Style           =   1  'Graphical
      TabIndex        =   26
      Top             =   120
      Width           =   2172
   End
   Begin VB.Frame DSPFRAME 
      Caption         =   "Frame1"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   5772
      Left            =   240
      TabIndex        =   22
      Top             =   1320
      Visible         =   0   'False
      Width           =   10212
      Begin VB.VScrollBar PICV 
         Height          =   5532
         Left            =   9960
         TabIndex        =   25
         Top             =   240
         Visible         =   0   'False
         Width           =   252
      End
      Begin VB.HScrollBar PICH 
         Height          =   252
         Left            =   0
         TabIndex        =   24
         Top             =   0
         Visible         =   0   'False
         Width           =   10212
      End
      Begin VB.PictureBox DSPPICTURE 
         AutoSize        =   -1  'True
         Height          =   8724
         Left            =   0
         ScaleHeight     =   8676
         ScaleWidth      =   8640
         TabIndex        =   23
         Top             =   252
         Visible         =   0   'False
         Width           =   8688
      End
   End
   Begin VB.CommandButton btnVIEW 
      Caption         =   "VIEW PHOTO"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   252
      Left            =   13680
      Style           =   1  'Graphical
      TabIndex        =   21
      Top             =   6240
      Visible         =   0   'False
      Width           =   1332
   End
   Begin VB.CommandButton btnSTOP 
      Caption         =   "STOP"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   11400
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   1320
      Visible         =   0   'False
      Width           =   732
   End
   Begin VB.CommandButton btnFULL 
      Caption         =   "FULL SCREEN"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   10560
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   2520
      Visible         =   0   'False
      Width           =   1572
   End
   Begin VB.CommandButton btnPLAY 
      Caption         =   "PLAY"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   11400
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   1920
      Visible         =   0   'False
      Width           =   732
   End
   Begin VB.CommandButton btnPAUSE 
      Caption         =   "PAUSE"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   10560
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   1920
      Visible         =   0   'False
      Width           =   732
   End
   Begin VB.CommandButton btnSTART 
      BackColor       =   &H00FFFFFF&
      Caption         =   "START"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   10560
      MaskColor       =   &H00C0C0FF&
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   1320
      Visible         =   0   'False
      Width           =   732
   End
   Begin VB.TextBox txtADDRESS 
      BackColor       =   &H80000008&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   7.8
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   288
      Left            =   10800
      TabIndex        =   13
      Top             =   6600
      Visible         =   0   'False
      Width           =   4332
   End
   Begin VB.CommandButton btnEXIT 
      Caption         =   "EXIT"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   13440
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   0
      Width           =   732
   End
   Begin VB.CommandButton btnCLEAR 
      BackColor       =   &H00FFFFFF&
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   12480
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   0
      Width           =   732
   End
   Begin VB.CommandButton btnPICTURES 
      BackColor       =   &H00008000&
      Caption         =   "SEE PHOTOS"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   13.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   120
      Width           =   2412
   End
   Begin VB.CommandButton btnVIDEO 
      BackColor       =   &H00008000&
      Caption         =   "PLAY VIDEO"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   13.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   120
      Width           =   2412
   End
   Begin VB.CommandButton btnSONG 
      BackColor       =   &H00008000&
      Caption         =   "PLAY SONG"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   13.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   120
      Width           =   2412
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H80000008&
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1584
      Left            =   12240
      TabIndex        =   3
      Top             =   2040
      Visible         =   0   'False
      Width           =   2412
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H80000009&
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   1668
      Left            =   12120
      TabIndex        =   2
      Top             =   4320
      Visible         =   0   'False
      Width           =   2292
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   324
      Left            =   12240
      TabIndex        =   1
      Top             =   1200
      Visible         =   0   'False
      Width           =   2412
   End
   Begin VB.Label lblFULL 
      BackColor       =   &H80000003&
      Caption         =   "Press ESC to exit full screen mode "
      Height          =   492
      Left            =   10560
      TabIndex        =   20
      Top             =   3120
      Visible         =   0   'False
      Width           =   1572
   End
   Begin VB.Label lblNOW 
      BackColor       =   &H80000009&
      Caption         =   "NOW"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   252
      Left            =   10800
      TabIndex        =   14
      Top             =   6240
      Visible         =   0   'False
      Width           =   1932
   End
   Begin VB.Label lblCHOICE 
      BackColor       =   &H80000012&
      Caption         =   "SELECT A FILE TO GET STARTED"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   16.2
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000F&
      Height          =   372
      Left            =   240
      TabIndex        =   10
      Top             =   840
      Width           =   8772
   End
   Begin VB.Label lblOP 
      BackColor       =   &H80000012&
      Caption         =   "FILES :"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   252
      Left            =   12240
      TabIndex        =   9
      Top             =   3960
      Visible         =   0   'False
      Width           =   1332
   End
   Begin VB.Label lblFOLDERS 
      BackColor       =   &H00000000&
      Caption         =   "FOLDERS:"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   252
      Left            =   12240
      TabIndex        =   8
      Top             =   1680
      Visible         =   0   'False
      Width           =   1332
   End
   Begin VB.Label lblDRIVE 
      BackColor       =   &H80000012&
      Caption         =   "DRIVE:"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   252
      Left            =   12240
      TabIndex        =   7
      Top             =   840
      Visible         =   0   'False
      Width           =   1332
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   6132
      Left            =   240
      TabIndex        =   0
      Top             =   1320
      Visible         =   0   'False
      Width           =   10212
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   18013
      _cy             =   10816
   End
End
Attribute VB_Name = "MEDIAUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Boolean


Private Sub btnCLEAR_Click()
Drive1.Visible = False
Dir1.Visible = False
File1.Visible = False
lblDRIVE.Visible = False
lblFOLDERS.Visible = False
lblOP.Visible = False
lblCHOICE.Visible = True
DSPPICTURE.Visible = False
DSPFRAME.Visible = False
WindowsMediaPlayer1.Visible = False
lblNOW.Visible = False
txtADDRESS.Visible = False
txtADDRESS.Text = ""
btnSTART.Visible = False
btnSTOP.Visible = False
btnPLAY.Visible = False
btnPAUSE.Visible = False
btnFULL.Visible = False
btnVIEW.Visible = False
lblFULL.Visible = False
PICH.Visible = False
PICV.Visible = False
DSPPICTURE.Visible = False
WindowsMediaPlayer1.Close
End Sub

Private Sub btnEXIT_Click()
End
End Sub



Private Sub btnFULL_Click()
WindowsMediaPlayer1.fullScreen = True
End Sub

Private Sub btnGOOGLE_Click()
If Not Form1.WebBrowser1.Offline Then
Load Form1
Form1.Visible = True
Form1.WebBrowser1.Navigate "https://www.google.co.in"
End If
End Sub

Private Sub btnONLINE_Click()
MEDIAUI.Visible = False
Load ONLINEUI
ONLINEUI.Visible = True
End Sub

Private Sub btnPAUSE_Click()
WindowsMediaPlayer1.Controls.pause
End Sub

Private Sub btnPICTURES_Click()
Drive1.Visible = True
Dir1.Visible = True
File1.Visible = True
lblDRIVE.Visible = True
lblFOLDERS.Visible = True
lblOP.Visible = True
lblOP.Caption = "PHOTOS"
lblCHOICE.Visible = False
DSPFRAME.Visible = False
DSPPICTURE.Visible = False
WindowsMediaPlayer1.Visible = False
lblNOW.Visible = True
lblNOW.Caption = "CURRENT PHOTO"
txtADDRESS.Visible = True
btnSTART.Visible = False
btnSTOP.Visible = False
btnPLAY.Visible = False
btnPAUSE.Visible = False
btnFULL.Visible = False
btnVIEW.Visible = True
lblFULL.Visible = False
PICH.Visible = False
PICV.Visible = False
File1.Pattern = "*.jpg;*.jpeg;*.bmp;*.wmf"
End Sub

Private Sub btnPLAY_Click()
WindowsMediaPlayer1.Controls.play
End Sub

Private Sub btnRR_Click()
WindowsMediaPlayer1.Controls.fastReverse
End Sub

Private Sub btnSONG_Click()
Drive1.Visible = True
Dir1.Visible = True
File1.Visible = True
lblDRIVE.Visible = True
lblFOLDERS.Visible = True
lblOP.Visible = True
lblOP.Caption = "AUDIO"
lblCHOICE.Visible = False
lblNOW.Visible = True
lblNOW.Caption = "NOW PLAYING"
txtADDRESS.Visible = True
DSPPICTURE.Visible = False
DSPFRAME.Visible = False
WindowsMediaPlayer1.Visible = True
btnSTART.Visible = True
btnSTOP.Visible = True
btnPLAY.Visible = True
btnPAUSE.Visible = True
btnVIEW.Visible = False
PICH.Visible = False
PICV.Visible = False
File1.Pattern = "*.mp3;*.m3u;*.mid;*.midi;*.rmi;*.cda;*.aif;*.aifc;*.aiff;*.asf;*.asx;*.wax;*.wm;*.wma;*.wmd;*.wmv;*.wvx;*.wmp;*.wmx;*.wav;*.avi;*.wmz;*.wms;*.divx"
End Sub

Private Sub btnSTART_Click()
txtADDRESS.Text = File1.Path + "\" + File1.FileName
WindowsMediaPlayer1.URL = txtADDRESS.Text
btnFULL.Visible = True
lblFULL.Visible = True
End Sub

Private Sub btnSTOP_Click()
WindowsMediaPlayer1.Controls.stop
End Sub

Private Sub btnVIDEO_Click()
Drive1.Visible = True
Dir1.Visible = True
File1.Visible = True
lblDRIVE.Visible = True
lblFOLDERS.Visible = True
lblOP.Visible = True
lblOP.Caption = "VIDEO"
lblNOW.Visible = True
lblNOW.Caption = "NOW PLAYING"
txtADDRESS.Visible = True
lblCHOICE.Visible = False
DSPPICTURE.Visible = False
DSPFRAME.Visible = False
WindowsMediaPlayer1.Visible = True
btnSTART.Visible = True
btnSTOP.Visible = True
btnPLAY.Visible = True
btnPAUSE.Visible = True
btnVIEW.Visible = False
PICH.Visible = False
PICV.Visible = False
File1.Pattern = "*.wax;*.wm;*.wma;*.wmd;*.wmv;*.wvx;*.wmp;*.wmx;*.wav;*.avi;*.wmz;*.wms;*.ivf;*.vob;*.divx;*.evo;*.flv;*.mkv;*.mka;*.mpg;*.mpeg;*.m1v;*.mpe;*.m2v;*.mpv2;*.mp2v;*.m2p;*.mod;*.m2t;*.ts;*.mts;*.pva;*.tp;*.m4v;*.mp4v;*.mpv4;*.m4a;*.3gp;*.3gpp;*.3g2;*.3gp2;*.mp4"
End Sub

Private Sub btnVIEW_Click()
txtADDRESS.Text = File1.Path + "\" + File1.FileName
DSPFRAME.Visible = True
DSPPICTURE.Visible = True
DSPPICTURE.Picture = LoadPicture(txtADDRESS.Text)
PICH.Visible = (DSPPICTURE.Width > DSPFRAME.Width)
PICV.Visible = (DSPPICTURE.Height > DSPFRAME.Height)
End Sub



Private Sub Dir1_Change()
File1.Path = Dir1
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1
End Sub




Private Sub Form_Load()
MEDIAUI.Width = Screen.Width
MEDIAUI.Height = Screen.Height
End Sub


Private Sub picH_Change()
PICH.Max = 100
DSPPICTURE.Left = -PICH.Value * (DSPPICTURE.Width - DSPFRAME.Width) / PICH.Max
End Sub

Private Sub PICH_Scroll()
PICH.Max = 100
DSPPICTURE.Left = -PICH.Value * (DSPPICTURE.Width - DSPFRAME.Width) / PICH.Max
End Sub



Private Sub picV_Change()

PICV.Max = 100
DSPPICTURE.Top = PICH.Height - PICV.Value * (DSPPICTURE.Height - DSPFRAME.Height) / PICV.Max
End Sub

Private Sub PICV_Scroll()

PICV.Max = 100
DSPPICTURE.Top = PICH.Height - PICV.Value * (DSPPICTURE.Height - DSPFRAME.Height) / PICV.Max
End Sub

