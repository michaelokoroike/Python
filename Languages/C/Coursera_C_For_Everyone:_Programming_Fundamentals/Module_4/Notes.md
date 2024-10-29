## Function (section #1)

Video 1 - Function definition
- "The paragraph of Coding"
- Functions are important because...
  - Crucial to reuse of code (especially in libraries)
  - They're a good encapsulation technique
  - Heuristics of functions (what you should think about with writing functions)...
    - Should do one thing well
    - Should be able to keep it to one page
    - Should be able to pretest and posttest it
- Function setup...
  - type func_name
  - (parameter list)
  - {
  - declarations
  - statements
  - }
- Example
- ![image](https://github.com/user-attachments/assets/3cc6e1a6-5cce-4dc2-b956-ca9866790103)
  - the void statement means it returns nothing...prints a statement only
  - call the function with wrt_address();
- ![image](https://github.com/user-attachments/assets/377aa776-77e3-47e8-91a3-42ad114a6963)

Video 2 - Function code example
- ![image](https://github.com/user-attachments/assets/ef102273-d24e-487e-b51f-ea45feae226b)
- Above is the original...below is with the function wrt_very which is the substitute for the while in the original
- ![image](https://github.com/user-attachments/assets/3c2be53e-54e9-4a6f-b284-504a11c8681d)
- ![image](https://github.com/user-attachments/assets/70dec185-c0ab-4692-8fb7-15f3dd49f2ee)

Video 3 - Return statement
- Return is a flow of control keyword...see it oin first programs we looked at where the end of main is "return 0;"
- Don't have to use it explicitly, but it's a best practice to do so
- Syntax = return; or return expr;
- ![image](https://github.com/user-attachments/assets/6d3f44d8-d4ce-4168-b6e5-ad365e4f870c)
- ![image](https://github.com/user-attachments/assets/1e2a74e1-c3de-46a1-97b5-6f797197f8e7)

Video 4 - Function prototype
- Need to know a declaration before we can use a function...why you can declare something before it's defined is because of prototypes
- ![image](https://github.com/user-attachments/assets/093a4f21-7a5c-434f-894e-3cf40292accc)
- Above is example..you can call cube, but it is going t  need to be defined later on in the code...maybe after main
- ![image](https://github.com/user-attachments/assets/fadf7446-e761-4de6-bc0e-84041e1a52a3)

Video 5 - Function prototype - code example
- ![image](https://github.com/user-attachments/assets/b575f57a-45e0-445a-b41f-a23c750a1b19)
- Output:
- ![image](https://github.com/user-attachments/assets/4a803883-586c-44ec-aad4-92b2a2fa424e)

Video 6 - Function variables—with call-by-value explained
- Arguments are call by value
- ![image](https://github.com/user-attachments/assets/6b7775ea-a52d-4855-965e-9bf2eea4ce9a)
- ![image](https://github.com/user-attachments/assets/b33d6959-46c3-4d2b-999d-a57b125e0764)
- ![image](https://github.com/user-attachments/assets/3ad0c6e2-99fa-4e94-8bec-46634e27176d)
- Note...n value is never changed, only a local version
- ![image](https://github.com/user-attachments/assets/ac605ce8-9ddd-417a-993d-ab18e75fa803)
- ![image](https://github.com/user-attachments/assets/d97bedf8-b4e2-4dd5-a1df-14e030b7b8d5)
- ![image](https://github.com/user-attachments/assets/85a1a8d3-8ddb-4fcc-9883-666d85057cb7)
- ![image](https://github.com/user-attachments/assets/31db6581-949c-4445-b921-f7c0f0dc2ad8)

Video 7 - Function definitions and scope rules
- ![image](https://github.com/user-attachments/assets/5039f259-8838-4bed-9115-2a5e2892ed08)
- ![image](https://github.com/user-attachments/assets/9c3f5693-28d4-4730-a4b5-743ba4880798)

## Use of Storage Codes (section #2)

Video 8 - Storage class code example
- ![image](https://github.com/user-attachments/assets/3b2b9fbc-7dc8-4c99-81b0-94691fa46150)
- ![image](https://github.com/user-attachments/assets/42cf74eb-fb97-4ff5-a796-10f5e4a7e4b5)
- Output of above program:
- ![image](https://github.com/user-attachments/assets/531c7d80-9064-4582-82a9-0d172de86ec0)
- ![image](https://github.com/user-attachments/assets/115d12ab-78b4-42bd-a4da-c637b60b171c)

Video 9 - Simple Recursion
- Recursion is doing things repeatedly
- There's recursion and iteration
- Example (iteration):
- ![image](https://github.com/user-attachments/assets/6afbfe34-1839-4382-8acd-24e209100d0e)
- Example (recursion):
- ![image](https://github.com/user-attachments/assets/5b8296ce-c4b0-4f2f-ac21-a6cd625cd4d4)
- ![image](https://github.com/user-attachments/assets/d992220f-5a1b-43ea-8fd5-29501ade0766)
- Key idea:
- ![image](https://github.com/user-attachments/assets/5562d64d-5ace-436f-b919-78da42bb9c38)
- Similar to mathematical induction (is recursion)
- ![image](https://github.com/user-attachments/assets/1451a792-5de7-4703-905a-95faa3cc577c)

Video 10 - Recursion - factorial mode
- ![image](https://github.com/user-attachments/assets/4c262af8-6963-4f27-8eba-681c0188d05c)
- ![image](https://github.com/user-attachments/assets/57b1521a-d91a-4b7d-bea8-0cee5e8c91cf)
- ![image](https://github.com/user-attachments/assets/eca7aa86-7a11-439d-813d-1f8273191592)
- Output of above program; example:
- ![image](https://github.com/user-attachments/assets/21499370-6ccb-4426-8e36-e3b3a87f6200)
- ![image](https://github.com/user-attachments/assets/4630cf2c-6569-4a4f-b3d7-81b7e3d336c7)

Video 11 - Recursion Fibonacci code (File included ➕)
- ![image](https://github.com/user-attachments/assets/6eb80d8a-41c0-487d-ad4a-bf2d7f9e4112)
- ![image](https://github.com/user-attachments/assets/cb07f39a-ff31-4401-b128-dca97207143d)
- Out of above program; example:
- ![image](https://github.com/user-attachments/assets/ce434e45-a9ff-4a06-9af8-b40ae7a39967)
- ![image](https://github.com/user-attachments/assets/387d19f0-1a65-4cbb-b0cc-8d14ebba4cb4)





























- 
