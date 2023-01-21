TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
myWord WORD 1000h
myDword DWORD 10000000h
.code
main PROC

inc myWord ; 1001h
dec myWord ; 1000h
inc myDword ; 10000001h
mov ax,00FFh
inc ax ; AX = 0100h
mov ax,00FFh
inc al ; AX = 0000h

call DumpRegs;
exit
