def main(argv)

	daysInyear=argv[0].to_i
	daysInMonth=argv[1].to_i
	daysInWeek=argv[2].to_i

	year,month,day = argv[3].split("-")

	stock = daysInyear%daysInMonth
	yearm = daysInyear/daysInMonth

#	leap = daysInMonth/stock
#
#	if stock*leap<daysInMonth
#		leap+=1
#	end


#puts (((year.to_i-1)*daysInyear)+((month.to_i-1)*daysInMonth)+day.to_i)%daysInWeek
#puts (((year.to_i-1)*yearm*daysInMonth)+((month.to_i-1)*daysInMonth)+day.to_i)%daysInWeek

	leap=stock*year.to_i
	leapday=leap/daysInMonth



	if day.to_i>daysInMonth || daysInWeek>daysInMonth
		print("-1\n")

	elsif leapday == 0 && month.to_i > (daysInyear/daysInMonth)
		print("-1\n")
	
	elsif leapday>=1 && month.to_i<=yearm
		week = (((year.to_i-1)*yearm*daysInMonth)+((month.to_i-1)*daysInMonth)+day.to_i)%daysInWeek

	end

	if week == 0
		week+=daysInWeek
	end


	print (week+64).chr,"\n"


end
