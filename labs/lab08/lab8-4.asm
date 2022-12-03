%include 'in_out.asm'
section .data
msg1 db 'Введите A: ',0h
msg2 db 'Введите X: ',0h
msg3 db "Наибольшее число: ",0h
section .bss
ANS resb 10
A resb 10
X resb 10
section .text
global _start
_start:
; ---------- Вывод сообщения 'Введите A: '
mov eax,msg1
call sprint
; ---------- Ввод 'A'
mov ecx,A
mov edx,10
call sread
; ---------- Преобразование 'A' из символа в число
mov eax,A
call atoi ; Вызов подпрограммы перевода символа в число
mov [A],eax ; запись преобразованного числа в 'A'
; ---------- Вывод сообщения 'Введите X: '
mov eax,msg2
call sprint
; ---------- Ввод 'X'
mov ecx,X
mov edx,10
call sread
; ---------- Преобразование 'X' из символа в число
mov eax,X
call atoi ; Вызов подпрограммы перевода символа в число
mov [X],eax ; запись преобразованного числа в 'X'
; ---------- Сравниваем
mov ecx,[A] ; 'ecx = A'
cmp ecx, [X]
jge two ; если 'A>=X', то переход на метку 'two',
mov [ANS],ecx 
jmp fin
; ---------- Преобразование 'max(A,C)' из символа в число
two:
mov eax, [X]
mov edx, [A]
add eax, edx
call atoi ; Вызов подпрограммы перевода символа в число
mov [ANS],eax 
jmp fin
; ---------- Вывод результата
fin:
mov eax, msg3
call sprint ; Вывод сообщения 'Ответ: '
mov eax, [ANS]
call iprintLF ; Вывод 'max(A,B,C)'
call quit ; Выход
