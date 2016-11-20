def main(argv)

	daysInyear=argv[0].to_i
	daysInMonth=argv[1].to_i
	daysInWeek=argv[2].to_i

	year,month,day = argv[3].split("-")

	stock = daysInyear%daysInMonth

	leap = stock * year.to_i


	leapct=0
	while(leap>daysInMonth)
		leapct+=1
		leap-=daysInMonth
	end




	if month.to_i>daysInMonth || daysInWeek>daysInMonth
		print"-1\n"
	else
		week = ((daysInyear*year.to_i)+(daysInMonth*month.to_i)+day.to_i)%daysInMonth

		if week == 0
			week+=daysInWeek
		end


		print (week+64).chr,"\n"

	end


end
