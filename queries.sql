SELECT symbol, datetime, "open", "close", high, volume, low
FROM public.stocks
order by datetime desc 
