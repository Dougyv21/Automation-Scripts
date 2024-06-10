; Specify file name and file path for specific use case ;
Local $ProgramInfo = 'Alteryx Designer x64 - '
Local $FileName = '=4 Report opioid epidemic trends by year.yxmd'
Local $FilePath = 'C:\Users\dougl\OneDrive\Data\Analytics Tools\Alteryx\Workflows\Automated Workflows'

; ============= ;
; UPDATING LSDP ;
; ============= ;

; Opening Alteryx and making it fullscreen ;
ShellExecute($FileName,'',$FilePath, 'open')

; Waiting until window has loaded to avoid issues ;
AutoItSetOption('WinTitleMatchMode', 3)
WinActivate($ProgramInfo & $FileName)
WinWaitActive($ProgramInfo & $FileName)

; Running workflow ;
Send ('{CTRLDOWN}')
Send ('{r}')
Send ('{CTRLUP}')

Sleep(2000)

; Waiting for workflow to run ;
WinWait($ProgramInfo & $FileName & " (Running)")
WinWaitClose($ProgramInfo & $FileName & " (Running)")
Sleep(2000)
