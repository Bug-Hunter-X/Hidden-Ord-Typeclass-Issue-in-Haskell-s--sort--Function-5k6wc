# Haskell Sort Function Bug

This repository demonstrates a subtle bug that can occur in Haskell when using the `sort` function from `Data.List`.  The bug arises when attempting to sort elements that do not belong to the `Ord` typeclass.  This leads to a compile-time error, highlighting the importance of careful type checking in Haskell.

**Bug:**
The original `bug.hs` file attempts to sort a list of functions.  Since functions do not have a natural ordering, this results in a compilation error.

**Solution:**
The `bugSolution.hs` file demonstrates how to correct the issue.  Either change the list elements to a type that implements Ord (e.g., integers) or use a different sorting method if a custom comparison is needed.