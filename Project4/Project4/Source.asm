.686
.model flat,stdcall
.stack 100h
.data
x dw 18 ;
y dw 33 ;
z dw 8 ;
T dw ?;

.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov bx, z
RCL z,5
mov bx, z
imul bx,4

mov ax, x
imul ax, 4

ADD ax,bx

mov cx, y
imul cx, 4

SUB ax, cx







exit:

Invoke ExitProcess,1

End Start