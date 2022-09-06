q1: {[syms;st;et];
 	syms:getsyms[syms];

	/syms:getsyms[`] THIS IS VITAL FOR KDB SIDE


        tabA: select from quote where time within (st;et), sym in syms;

        tabA2: select avgDuration:`time$avg next[time]-time,
                avgSpread:avg ask-bid,
        	TWAS:(next[time]-time) wavg (ask-bid),
		avgSize:avg(bsize+asize)
                        by sym, src from tabA;

        tabB:select from trade where time within (st;et), sym in syms;
        
	tabB2: select TWAP:(next[time]-time) wavg(price),
        	TWAV:(next[time]-time) wavg(amount),
        	priceRange:(max(price) - min(price))
                        by sym, src from tabB;


	joinedT: tabA2 lj tabB2

 }
