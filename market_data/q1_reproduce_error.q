q1:{[syms;st;et];

 syms:getsyms[syms];

        tabA: select from quote where time within (st;et), sym in syms;

        tabA: select avgDuration:`time$avg next[time]-time,
                avgSpread:avg ask-bid,
        TWAS:(next[time]-time) wavg (ask-bid)
                        by sym, src from tabA


 }


