package com.example.app.utility;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;
public class GetAllWeekDays {

	public static void main(String[] args) {

		 
		List<LocalDate> localDateList=new ArrayList<LocalDate>();
		for(int i=1;i<=12;i++){
			localDateList.addAll(weeksInCalendar(YearMonth.of(2020, i)));
		}
		System.out.println(localDateList);
		for(LocalDate localDate:localDateList)
		{
			System.out.println(localDate);
		}
	  }

	  public static List<LocalDate> weeksInCalendar(YearMonth month) {
	    List<LocalDate> firstDaysOfWeeks = new ArrayList<>();
	    for (LocalDate day = firstDayOfCalendar(month); stillInCalendar(month, day); day = day
	        .plusWeeks(1)) {
	      firstDaysOfWeeks.add(day);
	    }
	    return firstDaysOfWeeks;
	  }

	  private static LocalDate firstDayOfCalendar(YearMonth month) {
	    DayOfWeek FIRST_DAY_OF_WEEK = DayOfWeek.FRIDAY;
	    return month.atDay(1).with(FIRST_DAY_OF_WEEK);
	  }

	  private static boolean stillInCalendar(YearMonth yearMonth, LocalDate day) {
	    return !day.isAfter(yearMonth.atEndOfMonth());
	  }
	  }


