package com.estrongs.android.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class as
{
  private DateFormat a;
  private String[] b;
  
  public as(DateFormat paramDateFormat, String[] paramArrayOfString)
  {
    Object localObject = paramDateFormat;
    if (paramDateFormat == null) {
      localObject = new SimpleDateFormat("yyyy-MM-dd");
    }
    a = ((DateFormat)localObject);
    a.setTimeZone(TimeZone.getDefault());
    b = paramArrayOfString;
  }
  
  public String a(Date paramDate)
  {
    long l1 = 0L;
    long l2 = Calendar.getInstance(TimeZone.getTimeZone("GMT+00:00")).getTime().getTime() - paramDate.getTime();
    if (l2 < 0L) {}
    for (;;)
    {
      if (l1 < 60000L) {
        return l1 / 1000L + " " + b[0];
      }
      if (l1 < 3600000L) {
        return l1 / 60000L + " " + b[1];
      }
      if (l1 < 86400000L) {
        return l1 / 3600000L + " " + b[2];
      }
      if (l1 < 604800000L) {
        return l1 / 86400000L + " " + b[3];
      }
      if (l1 < 2592000000L) {
        return l1 / 604800000L + " " + b[4];
      }
      if (l1 < 31536000000L) {
        return l1 / 2592000000L + " " + b[5];
      }
      return a.format(paramDate);
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */