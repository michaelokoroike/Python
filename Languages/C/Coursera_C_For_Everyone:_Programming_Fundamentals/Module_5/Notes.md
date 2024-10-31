## Arrays and Pointers (section #1)

Video 1 - Pointers and simple arrays
- ![image](https://github.com/user-attachments/assets/35534e46-637d-4f26-ae0b-bbe6f2d0e190)
- ![image](https://github.com/user-attachments/assets/7c896ea8-4e5a-4b5b-9568-baadcf477b58)
- ![image](https://github.com/user-attachments/assets/a621deb1-2b3f-48a0-9f2a-2d86c8d8b089)
- ![image](https://github.com/user-attachments/assets/e8a13ff2-9ec4-4ba3-b5c9-fe7ef4d860e1)

Video 2 - Initialize arrays
- ![image](https://github.com/user-attachments/assets/f1dbfdca-d31b-4aa7-abb1-ca8c8f9ab717)
- ![image](https://github.com/user-attachments/assets/f90554e8-0493-477b-96aa-d9c73b67f94e)
- ![image](https://github.com/user-attachments/assets/acee0141-4af0-4438-b62b-0e4edfd1a28e)
- ![image](https://github.com/user-attachments/assets/98d2aaed-efe7-4525-9176-7239eae69fb1)

Video 3 - array-grade-code example
- Program that takes 5 grades and then see with the student's average is...
- ![image](https://github.com/user-attachments/assets/0b326833-8c2e-4d63-9e99-9582fc792936)
- Output:
- ![image](https://github.com/user-attachments/assets/e2fab64b-2049-4bb3-947b-aca1ab91978c)

Video 4 - What is a pointer (come back to this)
- ![image](https://github.com/user-attachments/assets/03338a8e-564a-45a7-93fb-c3803e5e4810)
- ![image](https://github.com/user-attachments/assets/3ad38d25-e4cf-4831-954c-a488b9d7b81d)
- ![image](https://github.com/user-attachments/assets/80bfa33b-60ca-4d1c-a9b9-ee811bc84810)
- Array starts at a base address (we have a bunch of elements, so we want a place to start), then runs through as much memory as is needed which is allocated by the compiler which does it for us
- Array also has relationship with another data type called a pointer
- Array address and pointer relationship
  - When we say "int a;" this means create variable a in memory, which needs to be as many bytes as to store appropriately the values allowed for an integer
    - integer is typically 4 bytes, or 32 bits (each integer takes up 4 mailboxes...billion mailboxes)
    - if we say a = 3...in the 4 bytes we put appropriate representation of binary three, and it will be in some location in memory (which involves gigabytes, or billions of indiviually adressable cells...)
    - each cell in our computer memory has a location which is a number (example: at location 7006, 3 would be stored as a four byte set of memory cells)...when we have variables, the computer has a location/memory and inside of it is a stored value. WAY TO THINK OF IT IS AS BILLIONS OF MAILBOXES, AND IN THE MAILBOXES YOU CAN FIND THINGS LIKE INTEGERS, LONG INTEGERS, DOUBLES, CHARS, STORED AS A BINARY SET OF DIGITS AND INTERPRETED AS A PARTICULAR DATA TYPE
  - When we think of arrays, now we have multiple variables represented
  - Address caluclation = base address + (2 * length of int)
  - _Pointer variables_ are as follows:
    - int *ptr = &a
      - based on above example, ptr would be 7006, because with the *ptr and &a notation above, ptr stores the address of a
      - if we did print(*ptr), we would be _dereferencing_ it and we'd probably get 3...just printing ptr would end up with 7006
- Below example actually is great for understanding this

Video 5 - Pointer code example
- ![image](https://github.com/user-attachments/assets/0a864322-cbd7-412d-a879-d24087fb472a)
- ![image](https://github.com/user-attachments/assets/da9816dc-8ca5-4567-ad1b-e496ffb72664)
- Output:
- ![image](https://github.com/user-attachments/assets/0d6ee286-6d1c-465a-bf01-afd00944ab88)
- ![image](https://github.com/user-attachments/assets/aaa52cb7-3380-4c11-9121-3dfc79e555c5)

Video 6 - Call-by-reference simulated
- ![image](https://github.com/user-attachments/assets/a2075ad0-15e8-4de2-b98d-ec3014252c23)
- C as a language supports call by value
- Many languauges allow call-by-reference; C can simulate this
- address with * can show you its contents
- to know an address, use & operator
- ![image](https://github.com/user-attachments/assets/cda674af-852d-400f-a45a-6f72886cce46)
- ![image](https://github.com/user-attachments/assets/58e2909c-064a-4dd1-9389-f75e78509bc3)
- ![image](https://github.com/user-attachments/assets/dd85d617-3a69-4455-8bbf-caa72b64639f)
- ![image](https://github.com/user-attachments/assets/5b05c4b9-331b-4a25-af4a-f62bd619674d)
- ![image](https://github.com/user-attachments/assets/08c72601-48e9-446f-b502-85514696f50c)
- ![image](https://github.com/user-attachments/assets/4fe0dfff-3102-4dc0-a41f-7477cb0e4387)
- ![image](https://github.com/user-attachments/assets/ea63e886-056c-4d12-9a52-af35ef608250)
- To do call by reference, you have to dereference address (address variable when prefaced by * access contents at address, like *ptr would be 3 while ptr would be 7006)...to know address you use & operator
- Normally parameters are call by value, but you can pass an address (or a pointer)...you call by ref to change values in the calling environment
- Example in the screenshots...a swap function wouldn't work outside of on an internal basis, but when you make the parameters call by reference (prefaced by *) the same function now works

Video 7 - array as a parameter
- ![image](https://github.com/user-attachments/assets/6cf053f8-f851-4c9c-b1ec-6fd92cf887c3)
- ![image](https://github.com/user-attachments/assets/69c7f0aa-8269-4b67-a91c-4a34ccebca5e)
- ![image](https://github.com/user-attachments/assets/9cb11ddd-ca66-4062-8c66-dc77769aeac2)

Video 8 - array-bubble-sort code
- ![image](https://github.com/user-attachments/assets/ae31dfa8-b80f-46c3-b262-4c27a68a6cb5)
- ![image](https://github.com/user-attachments/assets/4a721c21-5568-428e-8c78-ed7327c636d3)
- ![image](https://github.com/user-attachments/assets/bfaf06af-8df5-4fe6-b8e2-6198b59f42e4)
- Output:
- ![image](https://github.com/user-attachments/assets/e60998d4-e3e5-4e25-a394-6995689777cc)
- ![image](https://github.com/user-attachments/assets/7bd885eb-1213-4ebb-81dd-a61f3aaa157a)

Video 9 - merge sort overview
- bubble sort is for small code...merge sort is better because it's more efficient; have two existing sorted piles and turn them into a combined sorted pile for example
- ![image](https://github.com/user-attachments/assets/b726b20e-dcf0-4d3c-8fe1-1a483520642c)
- A general merge code (based off above example):
- ![image](https://github.com/user-attachments/assets/b6e73a71-c586-4537-8651-6133ce2ffe0b)
- ![image](https://github.com/user-attachments/assets/9cb3a191-6639-4524-b396-4056cfc7901e)
- ![image](https://github.com/user-attachments/assets/a445941b-b48d-4b1c-9239-d3e214707cc5)

Video 10 - merge code - example 1
- ![image](https://github.com/user-attachments/assets/3d4575ee-858a-4196-a675-452f78a21689)
- ![image](https://github.com/user-attachments/assets/4feec343-a1d0-4272-8e46-fbb610099799)
- ![image](https://github.com/user-attachments/assets/761d66b9-e75c-4b99-a29a-4ef09377c1e8)
- Output:
- ![image](https://github.com/user-attachments/assets/c786f1f4-90c3-4f16-aed1-44437004ee9d)
- ![image](https://github.com/user-attachments/assets/75e2bea3-dd8b-4ad8-b853-b82abd3d0419)

Video 11 - merge code example 2 (File included ➕)
- ![image](https://github.com/user-attachments/assets/7155ec16-151e-4614-9000-60f51b7ee9a3)
- ![image](https://github.com/user-attachments/assets/1483f27c-82cc-4159-892c-b1c7d8b7fd97)
- ![image](https://github.com/user-attachments/assets/fc012e22-005e-46fa-89f3-c4dad29d0ca9)
- Output:
- ![image](https://github.com/user-attachments/assets/900a0437-ea3e-4099-a27d-f0ee7f5ce19e)
- How it was working was each pair was put in order; then marging the pairs (look at 1 element, then two elements, then 4 elements)
- ![image](https://github.com/user-attachments/assets/9dacb061-2495-484c-96b9-6fc075eff7e1)





















