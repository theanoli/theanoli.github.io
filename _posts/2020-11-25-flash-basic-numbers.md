---
layout: post
title: Some ballpark internal SSD latency values
--- 

Some ballpark internal SSD latency values for reference. 

| Operation | Latency (us) | 
| --- | --- |
| Read page to register | 25 | 
| Program page from register | 200 | 
| Erase block | 1500 | 
| Serial access to register | 100 | 
{:.tablestyle}

"Serial access to register" is the time to transfer data over the serial bus; the above value is for 4KB pages at 25ns/byte. 

## Reference
Agrawal, Nitin, Vijayan Prabhakaran, Ted Wobber, John D. Davis, Mark S. Manasse, and Rina Panigrahy. "Design tradeoffs for SSD performance." In USENIX Annual Technical Conference, vol. 57. 2008.
