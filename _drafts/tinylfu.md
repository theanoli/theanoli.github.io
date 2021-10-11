--- 
layout: post 
title: Understanding TinyLFU
tags: computer-science, caching
--- 

## Basic Summary

The paper targets caching in various settings, including for web services where access patterns change over time. 
They observe that LRU and LFU (and Windowed LFU or WLFU), two popular eviction algorithms, have shortcomings: LRU gets poor hit ratios unless the cache is large, and LFU is difficult to implement efficiently. 
TinyLFU is a data structure that efficiently approximates 
The paper shows how to use TinyLFU to build an eviction algorithm called TLFU that approximates WLFU. 
The paper also describes how to use TinyLFU to build an admission policy to layer on top of existing eviction algorithms; the admission policy filters out insertions if they are deemed less valuable than the eviction algorithm's victim. 
The paper demonstrates that TinyLFU can (1) significantly improve hit ratios, and (2) that using TinyLFU essentially obliterates differences among caching algorithms evaluated, enabling them to perform nearly equally well. 

## Discussion

### Claim: Adding TinyLRU to filter admissions makes the difference between eviction policies marginal. 
What are the implications of this? 
It almost suggests that the eviction policy doesn't matter---does this mean we can use FIFO, or maybe something only slightly more effective but still very simple---instead of fancy, metadata-intensive eviction algorithms? 

The implications for caching on flash are especially interesting. 
It means we can scrap more sophisticated algorithms in favor of algorithms that are flash-friendly (FIFO, queue-based ones like SLRU). 


## Some terms

* WLFU: windowed LFU, where access frequencies are *windowed* to include only the most recent accesses. This reduces metadata volume and gradually ages out objects that were popular in the past. 


## References

[^1] Einziger, Gil, Roy Friedman, and Ben Manes. "Tinylfu: A highly efficient cache admission policy." ACM Transactions on Storage (ToS) 13, no. 4 (2017): 1-31.
