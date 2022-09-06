q2:{[syms;srcs;b]

	syms:getsyms[syms];
	srcs:getlps[srcs];

	tab:select from quote where sym in syms, src in srcs; 

	tab:update minB: b xbar time.minute, maxB: b+b xbar time.minute,
		 pAsk:prev ask, pBid:prev bid by sym, src from tab;

	tab:select TWAS:(1_deltas((1#minB),time,(1#maxB))) 
		wavg((1#(pAsk-pBid)),(ask-bid))
		by sym, src, bucket:b xbar time.minute from tab;


	exec (asc exec distinct src from tab)#(src!"F"$.Q.f[2] each TWAS)
		by bucket:bucket from tab


 }
