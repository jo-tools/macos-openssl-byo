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
				End
				Begin CopyFilesBuildStep CopyLibreSSL
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 2
					Subdirectory = 
					FolderItem = Li4vbGlicmVzc2wvMy45LjIvbGliY3J5cHRvLjMuOS4yLmR5bGli
					FolderItem = Li4vbGlicmVzc2wvMy45LjIvbGlic3NsLjMuOS4yLmR5bGli
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
