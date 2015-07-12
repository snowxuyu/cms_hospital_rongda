package com.rongda.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Util {
	public static Date string2Data(String str)
	{
		SimpleDateFormat stf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try 
		{
			date = stf.parse(str);
		} catch (ParseException e) 
		{
			e.printStackTrace();
		}
		return date;
	}
}
