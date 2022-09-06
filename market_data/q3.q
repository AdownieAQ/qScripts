q3:{[syms;srcs;st;et]
	syms:getsyms[`];
	srcs:getlps[`];

	pos: select from positions where time within(st;et), src in srcs, sym in syms;

	update position:sums amount * ?[side=`sell; -1; 1]by src, sym from pos

 }
