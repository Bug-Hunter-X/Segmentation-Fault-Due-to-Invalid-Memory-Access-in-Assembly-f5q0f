mov ecx, someVariable
mov ebx, someOtherVariable
; Add check to make sure the memory access is valid
mov edx, ebx
add edx, ecx
 cmp edx, 0x7FFFFFFF ;Example of max address, adjust based on your system
jg memoryAccessError ;Jump to handle the memory error
mov eax, [ebx+ecx*4] ; Access the memory after verification
; ... rest of the code ...
memoryAccessError:
; Handle the error appropriately
; Example: exit the program gracefully
mov eax, 1 ; sys_exit
xor ebx, ebx ; exit code 0
int 0x80