repeat
	set focusedApplication to name of (info for (path to frontmost application))
	if focusedApplication is "Google Chrome.app" then
		tell application "Google Chrome"
			set selectedText to (execute front window's active tab javascript "getSelection() + ''")
		end tell
		display dialog selectedText
		if selectedText is not "" and selectedText is not (the clipboard) then
			set the clipboard to selectedText
		end if
	end if
	delay 1
end repeat
