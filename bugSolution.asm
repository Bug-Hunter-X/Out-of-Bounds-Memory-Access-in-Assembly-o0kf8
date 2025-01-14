mov ecx, [esi] ; Get the size of the array
mov edi, [ebx] ; Get the array address 
cmp ecx, 0 ; Check if the size of the array is 0 
je zero_size ; Jump to the handling of the zero size array
mov eax, [edi+ecx*4] ; Access the array element with proper bounds checking
jmp end
zero_size:
; Handle zero array case in a safe way 
end: