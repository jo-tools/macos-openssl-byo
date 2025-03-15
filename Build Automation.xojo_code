#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyOpenSSL
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 2
					Subdirectory = 
					FolderItem = Li4vb3BlbnNzbC8xLjEvbGliY3J5cHRvLjEuMS5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8xLjEvbGlic3NsLjEuMS5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8wLjkuOHpoL2xpYmNyeXB0by4wLjkuOC5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8wLjkuOHpoL2xpYnNzbC4wLjkuOC5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjAvbGliY3J5cHRvLjMuZHlsaWI=
					FolderItem = Li4vb3BlbnNzbC8zLjAvbGlic3NsLjMuZHlsaWI=
					FolderItem = Li4vb3BlbnNzbC8zLjEvbGliY3J5cHRvLjMuMS5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjEvbGlic3NsLjMuMS5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjIvbGliY3J5cHRvLjMuMi5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjIvbGlic3NsLjMuMi5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjMvbGliY3J5cHRvLjMuMy5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjMvbGlic3NsLjMuMy5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjQvbGliY3J5cHRvLjMuNC5keWxpYg==
					FolderItem = Li4vb3BlbnNzbC8zLjQvbGlic3NsLjMuNC5keWxpYg==
				End
				Begin CopyFilesBuildStep CopyLibreSSL
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 2
					Subdirectory = 
					FolderItem = Li4vbGlicmVzc2wvMy45LjIvbGliY3J5cHRvLjMuOS4yLmR5bGli
					FolderItem = Li4vbGlicmVzc2wvMy45LjIvbGlic3NsLjMuOS4yLmR5bGli
					FolderItem = Li4vbGlicmVzc2wvNC4wLjAvbGliY3J5cHRvLjQuMC4wLmR5bGli
					FolderItem = Li4vbGlicmVzc2wvNC4wLjAvbGlic3NsLjQuMC4wLmR5bGli
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				  macOSEntitlements={"App Sandbox":"False","Hardened Runtime":"False","Notarize":"False","UserEntitlements":""}
				End
				Begin IDEScriptBuildStep Xojo2DMG , AppliesTo = 0, Architecture = 0, Target = 0
					'**************************************************
					' Create .dmg | Notarization
					'**************************************************
					' https://github.com/jo-tools/xojo2dmg
					'**************************************************
					' This Post Build Script only runs on a local
					' setup of Xojo2DMG.
					' Have a look at the GitHub Repository to read
					' more about Xojo2DMG.
					'**************************************************
					
					If (Not TargetMacOS) Then Return 'Xojo IDE must be running on macOS
					
					'Check Xojo's Build Target
					Select Case CurrentBuildTarget
					Case 16 'macOS: Intel 64Bit
					Case 24 'macOS: ARM 64Bit
					Case 9 'macOS: Universal (Intel 64Bit, ARM 64Bit)
					Else
					Return
					End Select
					
					' Check if a custom local Build Script is available
					Var sCOMPANYNAME As String = PropertyValue("App.CompanyName")
					If (sCOMPANYNAME = "") Then Return
					
					Var sXOJO2DMG As String = DoShellCommand("[ -f ~/.xojo2dmg/" + sCOMPANYNAME + ".sh ] && echo ~/.xojo2dmg/" + sCOMPANYNAME + ".sh").Trim
					If (sXOJO2DMG = "") Then Return 'local company setup of Xojo2DMG not found
					
					'**************************************************
					' Setup Xojo2DMG
					'**************************************************
					Var sPROJECT_PATH As String = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'No trailing /
					sPROJECT_PATH = sPROJECT_PATH.Left(sPROJECT_PATH.Length - 1)
					End If
					If (sPROJECT_PATH = "") Then Return
					
					Var sBUILD_LOCATION As String = CurrentBuildLocation.ReplaceAll("\", "") 'don't escape Path
					If sBUILD_LOCATION.Right(1) = "/" Then
					'No trailing /
					sBUILD_LOCATION = sBUILD_LOCATION.Left(sBUILD_LOCATION.Length - 1)
					End If
					
					'Sanity Check: Unsupported XojoVersion when building Universal (Intel 64Bit, ARM 64Bit)
					If ((CurrentBuildTarget = 24) And (sBUILD_LOCATION.Right(18) = "/_macOS ARM 64 bit")) _
					Or _
					((CurrentBuildTarget = 16) And (sBUILD_LOCATION.Right(14) = "/_macOS 64 bit")) Then
					Return
					End If
					
					Var sBUILD_APPNAME As String = CurrentBuildAppName 'Xojo 2022r1 adds .app
					If (sBUILD_APPNAME.Right(4) = ".app") Then sBUILD_APPNAME = sBUILD_APPNAME.Left(sBUILD_APPNAME.Length-4)
					
					Var sBUILD_APP_VERSION As String = PropertyValue("App.Version")
					If (sBUILD_APP_VERSION = "") Then
					sBUILD_APP_VERSION = PropertyValue("App.MajorVersion") + "." + PropertyValue("App.MinorVersion") + "." + PropertyValue("App.BugVersion")
					End If
					
					Var BUILD_APP_STAGECODE As String = ""
					Select Case PropertyValue("App.StageCode")
					Case "0"
					BUILD_APP_STAGECODE = "Dev"
					Case "1"
					BUILD_APP_STAGECODE = "Alpha"
					Case "2"
					BUILD_APP_STAGECODE = "Beta"
					Case "3"
					BUILD_APP_STAGECODE = "Final"
					End Select
					
					Var sBUILD_TYPE As String = "release"
					If DebugBuild Then sBUILD_TYPE = "debug"
					
					Var sBUILD_TARGET As String = "macOS"
					Select Case CurrentBuildTarget
					Case 16 'macOS: Intel 64Bit
					sBUILD_TARGET = "macOS_Intel_64Bit"
					Case 24 'macOS: ARM 64Bit
					sBUILD_TARGET = "macOS_ARM_64Bit"
					Case 9 'macOS: Universal (Intel 64Bit, ARM 64Bit)
					sBUILD_TARGET = "macOS_Universal"
					End Select
					
					
					'**************************************************
					' Launch Xojo2DMG
					'**************************************************
					Var sShellArguments() As String
					sShellArguments.Add(sPROJECT_PATH)
					sShellArguments.Add(sBUILD_LOCATION)
					sShellArguments.Add(sBUILD_APPNAME)
					sShellArguments.Add(sBUILD_APP_VERSION)
					sShellArguments.Add(BUILD_APP_STAGECODE)
					sShellArguments.Add(sBUILD_TYPE)
					sShellArguments.Add(sBUILD_TARGET)
					
					If (Not DebugBuild) Then
					'Launch Xojo2DMG in Terminal
					Call DoShellCommand("osascript -e 'tell application ""Terminal"" to activate'", 0)
					Call DoShellCommand("osascript -e 'tell application ""Terminal"" to do script ""\""" + sXOJO2DMG + "\"" \""" + String.FromArray(sShellArguments, "\"" \""") + "\""""'", 0)
					Return 'see progress and errors in Terminal.app
					End If
					
					Var iShellResult As Integer
					Var sShellResult As String = DoShellCommand("""" + sXOJO2DMG +  """ """ + String.FromArray(sShellArguments, """ """) + """", 0, iShellResult)
					
					'Process and Parse the Output of the ShellScript
					Var sXojo2DMG_Errors() As String
					Var sShellResultLines() As String = sShellResult.ReplaceAll(EndOfLine, "*****").Split("*****")
					For i As Integer = 0 To sShellResultLines.LastIndex
					'get all lines with Xojo2DMG Errors (and not the full output)
					If (sShellResultLines(i).Left(15) = "Xojo2DMG ERROR:") Then
					sXojo2DMG_Errors.Add(sShellResultLines(i))
					End If
					Next
					
					
					Select Case iShellResult
					Case 0
					'Yeah... it's all OK!
					Case 2
					'DebugRun without Codesigning: xojo2dmg.sh will return with 'exit 2'
					'Don't show errors - it's all OK
					Return
					Else
					'Hmm... something went wrong...
					sXojo2DMG_Errors.Add("Xojo2DMG quit with ShellResult: " + iShellResult.ToString)
					End Select
					
					'If there are errors:
					If (sXojo2DMG_Errors.LastIndex >= 0) Then
					'Print just the Errors, and have the full output in Clipboard
					Print String.FromArray(sXojo2DMG_Errors, EndOfLine) + EndOfLine + _
					"Note: Shell Output is in Clipboard"
					Clipboard = sShellResult
					End If
					
					Return
					
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
