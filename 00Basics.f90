Fortran, as derived from Formula Translating System.
Fortran was originally developed by IBM in the 1950s for scientific and engineering applications. Fortran ruled this 
programming area for a long time and became very popular for high performance computing, because.

It supports:
        Numerical analysis and scientific computation
        Structured programming
        Array programming
        Modular programming
        Generic programming
        High performance computing on supercomputers
        Object oriented programming
        Concurrent programming
        Reasonable degree of portability between computer systems

Most commonly used versions today are : Fortran 77, Fortran 90, and Fortran 95.







program hello
   Print *, "Hello World!"
end program Hello


program addNumbers
! This simple program adds two numbers     
   implicit none
   
! Type declarations
   real :: a, b, result 
   
! Executable statements 
   a = 12.0
   b = 15.0
   result = a + b
   print *, 'The total is ', result                   
end program addNumbers 


The implicit none statement allows the compiler to check that all your variable types are declared properly. You must always 
use implicit none at the start of every program.

Comments in Fortran are started with the exclamation mark (!)
The print * command displays data on the screen.
Fortran is case-insensitive, except for string literals.

Fortran provides five intrinsic data types:
      Integer type
      Real type
      Complex type
      Logical type
      Character type
      



Integer Type:
      program testingInt
      implicit none

         integer :: largeval
         print *, huge(largeval)
      end program testingInt

Note that the huge() function gives the largest number that can be held by the specific integer data type. You can also specify the number of bytes using the kind specifier. The following example demonstrates this:

      program testingInt
      implicit none

         !two byte integer
         integer(kind=2) :: shortval

         !four byte integer
         integer(kind=4) :: longval

         !eight byte integer
         integer(kind=8) :: verylongval

         !sixteen byte integer
         integer(kind=16) :: veryverylongval

         !default integer 
         integer :: defval

         print *, huge(shortval)
         print *, huge(longval)
         print *, huge(verylongval)
         print *, huge(veryverylongval)
         print *, huge(defval)
      end program testingInt

Real Type:
Traditionally there are two different real types, the default real type and double precision type.
However, Fortran 90/95 provides more control over the precision of real and integer data types through thekindspecifier, which 
we will study later.
                            program division   
                            implicit none  

                               ! Define real variables   
                               real :: p, q, realRes 

                               ! Define integer variables  
                               integer :: i, j, intRes  

                               ! Assigning  values   
                               p = 2.0 
                               q = 3.0    
                               i = 2 
                               j = 3  

                               ! floating point division
                               realRes = p/q  
                               intRes = i/j

                               print *, realRes
                               print *, intRes

                            end program division  

Character Type:
The character type stores characters and strings. The length of the string can be specified by len specifier. \
If no length is specified, it is 1.
                character (len=40) :: name  
                name = “Zara Ali”




Older versions of Fortran allowed a feature called implicit typing, i.e., you do not have to declare the variables before use. 
If a variable is not declared, then the first letter of its name will determine its type.

Variable names starting with i, j, k, l, m, or n, are considered to be for integer variable and others are real variables. 
However, you must declare all the variables as it is good programming practice. For that you start your program with the 
statement:
                implicit none
This statement turns off implicit typing.



