# Lexical Scoping Example in R

# Function to create a list of functions
create_counter <- function() {
  count <- 0
  list(
    increment = function() {
      count <<- count + 1
      count
    },
    decrement = function() {
      count <<- count - 1
      count
    },
    get_count = function() {
      count
    }
  )
}

# Create a counter object
counter <- create_counter()

# Increment the counter
counter$increment()  # Output should be 1
counter$increment()  # Output should be 2

# Decrement the counter
counter$decrement()  # Output should be 1

# Get the current count
current_count <- counter$get_count()
print(current_count)  # Output should be 1
