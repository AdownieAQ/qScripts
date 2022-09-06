/ Question 2: Look up how xbar is used (code.kx.com) and use it to create a script that given
/ an individual sym, start time and end time calculates the first time, last time,
/  min price and max price for each 10 minute interval of trades for that sym between those times

s2:{[searchSym;st;et];

	test: select firstTime: first time, lastTime: last time,
 		minPrice: min price, maxPrice: max price 
		by 10 xbar time.minute from trade 
		where time within(st;et), sym = searchSym; 
	

 } 
