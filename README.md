# Objective-C Memory Management Bug: Unexpected Object Deallocation in GCD Block

This repository demonstrates a common, yet subtle, bug in Objective-C related to memory management and Grand Central Dispatch (GCD).  The bug occurs when an object is accessed within a GCD block after it has already been deallocated.

## Bug Description

The `bug.m` file contains an example where a `MyClass` object is created and then used within a GCD block.  The object's lifetime is not correctly managed, leading to a potential crash if the object is deallocated before the block executes.

## Solution

The `bugSolution.m` file presents a solution that addresses this issue using weak references or strong references with appropriate checks to avoid accessing deallocated objects.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the `bug.m` example; this may or may not crash depending on the execution timing.
4. Run the `bugSolution.m` example to see the corrected code that handles memory management correctly. 

## Note

This example highlights the importance of careful memory management in Objective-C, particularly when working with asynchronous operations.