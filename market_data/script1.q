s1:{[srcs;st;et]

	src:getlps[srcs];
	test: select from trade where time within (st;et) src in srcs;
		
	test: select TWAP:(next[time]-time) wavg(price),
		 VWAP: amount wavg price
			 by sym, src from test 
 }
