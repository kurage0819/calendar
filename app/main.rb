def main(argv)

	daysInyear=argv[0].to_i
	daysInMonth=argv[1].to_i
	daysInWeek=argv[2].to_i

	year,month,day = argv[3].split("-")

	stock = daysInyear%daysInMonth

	leap = daysInMonth/stock
	
	if day.to_i>daysInMonth || daysInWeek>daysInMonth
		print("-1\n")

	elsif year.to_i%leap != 0 && month.to_i > (daysInyear/daysInMonth)		
		print("-1\n")
	
	else 
		week = ((daysInyear*(year.to_i-1))+(daysInMonth*(month.to_i+(year.to_i/leap)-1))+day.to_i) % daysInWeek

		if week == 0
			week+=daysInWeek
		end


		print (week+64).chr,"\n"

	end


end
