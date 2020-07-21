;----------PURPOSE-------
;The purpose of this is to quickly and easily enter your Company Address into the AirConsole Request Payout screen. This is more-so a time-saver if you have mutiple games (invoices) to create at the same time. Or, if you don't want to enter your address manually each time you want to request an invoice.

;----------USAGE---------
; 1) Fill in your address in ENTER DETAILS HERE below
; 2) Go to AirConsole and request Invoice
; 3) First field in Company Address should have your name already, if not, don't worry this script overwrites it anyways
; 4) Put your cursor on the First line
; 5) Press CONTROL + ENTER and your address will be filled in!
; NOTE: This script must be running with AutoHotKey on your machine
; NOTE 2: Tested on Windows 10 only.
; NOTE 3: This script is flexible. You could use it to enter just your address and skip the first input field for your name. That is not covered here, but you could use it in that way.


;-----------ENTER DETAILS HERE-----------
ADDRESS_LINE_1 = YOUR NAME / COMPANY NAME  ie: Some Rocking Game Studios
ADDRESS_LINE_2 = YOUR STREET ADDRESS ie: 123 Fake Street
ADDRESS_LINE_3 = YOUR CITY ie: Toledo
ADDRESS_LINE_4 = YOUR STATE, ZIP ie: Ohio, 43602
ADDRESS_LINE_5 = 

; NOTE: You can leave lines blank as seen in ADDRESS_LINE_5


;-----------START OF HOTKEY----------
; Press CONTROL + ENTER to activate
^Enter::
; DELETE (OVERWRITE) our field the mouse is on.
; This is the same as CONTROL+A, DELETE (highlight all and delete)
Send ^a{Del}
; INPUT our address lines
SendInput, %ADDRESS_LINE_1%{Tab}%ADDRESS_LINE_2%{Tab}%ADDRESS_LINE_3%{Tab}%ADDRESS_LINE_4%{Tab}%ADDRESS_LINE_5%{Tab}
return
