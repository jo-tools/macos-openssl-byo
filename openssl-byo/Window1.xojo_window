#tag Window
Begin Window Window1
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   260
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   579858431
   MenuBarVisible  =   True
   MinHeight       =   260
   MinimizeButton  =   False
   MinWidth        =   540
   Placement       =   0
   Resizeable      =   False
   Title           =   "OpenSSL - Bring your own .dylib"
   Visible         =   True
   Width           =   540
   Begin Label labOpenSSLVersion
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   155
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "..."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   110
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   365
   End
   Begin Canvas cnvAppIcon
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   64
      HelpTag         =   "https://www.jo-tools.ch/xojo/openssl-byo/"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   50
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   64
   End
   Begin Label labAppName
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   "https://www.jo-tools.ch/xojo/openssl-byo/"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   155
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "OpenSSL - byo"
      TextAlign       =   0
      TextColor       =   &c0072D800
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   145
   End
   Begin Label labThanks
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Would you like to say 'Thank you'?"
      TextAlign       =   2
      TextColor       =   &c66666600
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   209
   End
   Begin Label labAppVersion
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   155
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AppVersion"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   145
   End
   Begin Label labContact
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   "xojo@jo-tools.ch"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   334
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Contact"
      TextAlign       =   1
      TextColor       =   &c0072CE00
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   70
   End
   Begin Canvas cnvPayPal
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   "https://paypal.me/jotools"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   414
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   54
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   106
   End
   Begin Separator sepOpenSSLVersionTop
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   100
      Transparent     =   True
      Visible         =   True
      Width           =   540
   End
   Begin Label labOpenSSLVersionTitle
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "OpenSSL Version:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   110
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   125
   End
   Begin Separator sepOpenSSLVersionBottom
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   140
      Transparent     =   True
      Visible         =   True
      Width           =   540
   End
   Begin Label labInfo
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   50
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   True
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This example project shows how you can build your own OpenSSL Library from Source as a Universal .dylib (arm64 and x86_64), include it in a Xojo project - and finally use it in your application."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   195
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
   End
   Begin Label labSHA1TestTitle
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "SHA1 Test:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   125
   End
   Begin Label labSHA1Test
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   155
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "..."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   365
   End
   Begin Separator sepSHA1Test
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   180
      Transparent     =   True
      Visible         =   True
      Width           =   540
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function BinaryToHexString(psBinary As String) As String
		  Dim iTo As Integer = psBinary.Bytes
		  Dim sResult, sChar As String
		  For iPos As Integer = 1 To iTo
		    sChar = psBinary.MiddleBytes(iPos, 1)
		    sChar = Hex(sChar.AscByte)
		    If (sChar.Bytes = 1) Then sChar = "0" + sChar
		    sResult = sResult + sChar
		  Next
		  
		  Return sResult
		End Function
	#tag EndMethod


	#tag Note, Name = HowTo
		***********************************
		* OpenSSL - Bring your own .dylib *
		***********************************
		
		How to: Build OpenSSL
		---------------------
		This example is building OpenSSL as a Universal Binary for Intel-64Bit and ARM-64Bit.
		It requires a macOS Version and Xcode version that is capable of building these two targets.
		I am currently using: macOS 11.2, Xcode 12.4
		
		1. Delete all files in the folder 'openssl', except for "build.sh"
		2. Edit the Build Script "build.sh" with a TextEditor of your choice
		3. change the variable to the OpenSSL version you're going to build
		   DOWNLOAD_OPENSSL_VERSION="1.1.1k"
		4. Launch Terminal
		5. Change to the openssl folder:
		   cd /path/to/where/you/have/saved/openssl-byo/openssl
		6. just in case: the build script needs to be executable:
		   chmod 755 ./build.sh
		7. Run the Script build.sh:
		   ./build.sh
		
		The build script will perform the following steps:
		1. Download the OpenSSL source
		2. Create 2 sub-folders (one for each build target) and extract the source in there
		3. Build the 2 Targets: arm64, x86_64
		4. Combine the built .dylibs to a Universal .dylib containing both Targets
		
		Note: The build script doesn't do error checking...
		Should you noot see the expected .dylibs once it finishes, you might want to look into the Shell Output.
		
		Result:
		In your "openssl" folder you should now have 2 files:
		1. libssl.1.1.dylib
		2. libcrypto.1.1.dylib
		
		Note: The version number in the filename is being set automatically according to the version you've built.
		
		
		How to: Use your own Openssl .dylib's in a Xojo project
		-------------------------------------------------------
		1. Open the example project "openssl-byo.xojo_binary_project"
		   Or create a new project, use your own, ...
		2. In the Navigator, go to: Build Settings -> macOS
		3. Use a "Post Build Step: Copy Files"
		4. Drag in the two built .dylibs: libssl.1.1.dylib and libcrypto.1.1.dylib
		5. Set the Post Build Script behavior in the Inspector:
		   1. Applies to: both
		   2. Subdirectory: (empty)
		   3. Destination: Framework folder
		
		Congratulations - you're ready and set up.
		You can now use the bundled OpenSSL Library that you have just built in your own project.
		
		As an example: Get the OpenSSL Version like this:
		
		Const constLibCrypto = "@executable_path/../Frameworks/libcrypto.1.1.dylib"
		Declare Function OpenSSL_version Lib constLibCrypto (i As Integer) As CString
		Me.Text = OpenSSL_version(0)
		
	#tag EndNote


#tag EndWindowCode

#tag Events labOpenSSLVersion
	#tag Event
		Sub Open()
		  Dim sError As String
		  
		  #If TargetMacOS Then
		    Try
		      Const constLibCrypto = "@executable_path/../Frameworks/libcrypto.1.1.dylib"
		      
		      Declare Function OpenSSL_version Lib constLibCrypto (i As Integer) As CString
		      Me.Text = OpenSSL_version(0)
		      Me.TextColor = &c00BB00
		      
		    Catch e As FunctionNotFoundException
		      sError = e.Message
		    Catch e As RuntimeException
		      sError = e.Message
		    End Try
		    
		  #Else
		    sError = "This example is only for TargetMacOS"
		  #EndIf
		  
		  Me.Tooltip = sError
		  If (sError <> "") Then
		    Me.Text = sError
		    Me.TextColor = &cFF0000
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvAppIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma unused areas
		  
		  g.DrawPicture(AppIcon_64, 0, 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL("https://www.jo-tools.ch/xojo/openssl-byo/")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events labAppName
	#tag Event
		Sub Open()
		  Me.Text = "OpenSSL - byo"
		  Me.FontSize = 18
		  Me.Bold = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL("https://www.jo-tools.ch/xojo/openssl-byo/")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events labAppVersion
	#tag Event
		Sub Open()
		  If (App.Version <> "") Then
		    Me.Text = App.Version
		    Return
		  End If
		  
		  Me.Text = Str(App.MajorVersion) + "." + Str(App.MinorVersion) + "." + Str(App.BugVersion)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events labContact
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL("mailto:xojo@jo-tools.ch")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvPayPal
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma unused areas
		  
		  g.DrawingColor = &cFFFFFF
		  #If (XojoVersion >= 2018.03) Then
		    If Color.IsDarkMode Then g.DrawingColor = &cD0D0D0
		  #EndIf
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  g.DrawingColor = &c909090
		  g.DrawRectangle(0, 0, g.Width, g.Height)
		  g.DrawPicture(PayPal, 3, 2, 100, 26, 0, 0, PayPal.Width, PayPal.Height)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL("https://paypal.me/jotools")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events labSHA1Test
	#tag Event
		Sub Open()
		  Dim sError As String
		  
		  #If TargetMacOS Then
		    Try
		      Const constLibCrypto = "@executable_path/../Frameworks/libcrypto.1.1.dylib"
		      
		      Declare Function OpenSSL_version Lib constLibCrypto (i As Integer) As CString
		      Dim sData As String = ConvertEncoding(OpenSSL_version(0), Encodings.UTF8)
		      
		      //SHA1 Hash
		      Declare Function SHA1_Init Lib constLibCrypto (c As Ptr) As Integer
		      Declare Function SHA1_Update Lib constLibCrypto (c As Ptr, data As CString, mlen As Integer) As Integer
		      Declare Function SHA1_Final Lib constLibCrypto (md As Ptr, c As Ptr) As Integer
		      
		      Dim mbSHAContext As New MemoryBlock(256)
		      
		      Dim iRes As Integer = SHA1_Init(mbSHAContext)
		      If (iRes <> 1) Then
		        Dim err As New RuntimeException
		        err.Message = "SHA1_Init failed"
		        Raise err
		      End If
		      
		      iRes = SHA1_Update(mbSHAContext, sData, sData.Bytes)
		      If (iRes <> 1) Then
		        Dim err As New RuntimeException
		        err.Message = "SHA1_Update failed"
		        Raise err
		      End If
		      
		      Dim mbSHA1Result As New MemoryBlock(21)
		      iRes = SHA1_Final(mbSHA1Result, mbSHAContext)
		      If (iRes <> 1) Then
		        Dim err As New RuntimeException
		        err.Message = "SHA1_Final failed"
		        Raise err
		      End If
		      
		      Dim sResultBinary As String = mbSHA1Result.CString(0)
		      Dim sResult As String = Self.BinaryToHexString(sResultBinary)
		      Me.Text = sResult
		      Me.TextColor = &c00BB00
		      
		      //Double check with Xojo's Crypto
		      Dim encryptedValue As String = Crypto.Hash(sData, Crypto.HashAlgorithms.SHA1)
		      Dim sResult2 As String = Self.BinaryToHexString(encryptedValue)
		      If (sResult <> sResult2) Then
		        sError = "SHA1 of OpenSSL and Xojo are different"
		      End If
		      
		      
		    Catch e As FunctionNotFoundException
		      sError = e.Message
		    Catch e As RuntimeException
		      sError = e.Message
		    End Try
		    
		  #Else
		    sError = "This example is only for TargetMacOS"
		  #EndIf
		  
		  If (sError <> "") Then
		    Me.Text = sError
		    Me.TextColor = &cFF0000
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
