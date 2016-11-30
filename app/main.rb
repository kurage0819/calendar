def main(argv)

	daysInyear=argv[0].to_i
	daysInMonth=argv[1].to_i
	daysInWeek=argv[2].to_i

	year,month,day = argv[3].split("-")

	stock = daysInyear%daysInMonth	#余り日数
	yearm = daysInyear/daysInMonth	#一年の月数

	leap=stock*(year.to_i-1)	#余り日数の合計
	leapday=leap/daysInMonth	#余り日数が何月分か

	sumday = ((year.to_i-1)*yearm*daysInMonth)+((month.to_i-1)*daysInMonth)+(leapday*daysInMonth) 
	week = (sumday+day.to_i)%daysInWeek

	if week == 0
		week+=daysInWeek
	end
	

	puts sumday
	if day.to_i>daysInMonth || daysInWeek>daysInMonth
		print("-1\n")
	elsif (sumday+daysInMonth)%daysInyear != 0 && month.to_i > yearm
		print("-1\n")
	else
		print (week+64).chr,"\n"

	end


end
