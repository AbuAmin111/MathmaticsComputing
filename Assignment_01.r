#This is function to extract all the prime number division by n number
#explain the following code in step by step:

#This function named 'primesFactor' these takes one argument named 'prime'.
primesFactor <- function(prime) {

#This variablre to store the result.
  numbers <- integer(0)
  
#This while loop for divides 'prime' by '2' while the prime success permission to divides by '2'.
  while (prime %% 2 == 0) {
    numbers <- c(numbers, 2)
    prime <- prime / 2
  }

#This 'for-loop' for starts divides number from 3 to divide it with prime number and store write values and finished loop when 'i 'number'' access to 'square for 'prime''.  
  for (i in 3:sqrt(prime)) { 
    while (prime %% i == 0) {
      numbers <- c(numbers, i)
      prime <- prime / i
    }
  }
  check if the prime number larger than '2' and store the number un
  if (prime > 2) {
    numbers <- c(numbers, prime)
  }
  #this for return numbers that have all primes number divides by 'prime'.
  return(numbers)
}

#This function for print this line.
cat("Enter the number: ")

#This for  user enter number and store it in 'number' variable.
number <- as.integer(scan(n=1))

#This called the 'primeFactors' function
primeFactors <- primesFactor(number)

#This for print the result with 'prime' value user has entered and all values stored in 'numbers' and between prime numbers print comma ','.
cat("Prime factor for (", number, ") is: (", paste(primeFactors, collapse = ", "), ")\n")


