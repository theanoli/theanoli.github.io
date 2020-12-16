--- 
layout: post 
title: Stack Algorithms in Caching
tags: computer-science
--- 

## What is a stack algorithm?
A stack algorithm is a cache replacement algorithm where a cache with a larger capacity will always have the same items as a cache with a smaller capacity[^1]. 
This is true for LRU, but not for FIFO (surprise!). 
Belady showed in 1969 that you can construct access patterns where FIFO will exhibit more page faults with a larger cache than with a smaller one.
This is called Belady's anomaly[^2]. 

## Why should we care? 

## Some terms

## References
[^1]: https://www.cs.uic.edu/~jbell/CourseNotes/OperatingSystems/9_VirtualMemory.html
