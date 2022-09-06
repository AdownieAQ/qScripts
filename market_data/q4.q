q4:{[syms;srcs;st;et]

	syms:getsyms[syms];
	srcs:getlps[srcs];

	tab: select from trade where time within(st;et), price > (avg; price) fby ([]sym;src);
	tab: select outliers: count i by sym,src from tab
 }
