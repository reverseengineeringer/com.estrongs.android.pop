package com.estrongs.fs.util;

import java.text.DateFormat;
import java.util.Date;

public class d
{
  private static ThreadLocal<DateFormat> a = new e();
  
  public static String a(Date paramDate)
  {
    return ((DateFormat)a.get()).format(paramDate);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */