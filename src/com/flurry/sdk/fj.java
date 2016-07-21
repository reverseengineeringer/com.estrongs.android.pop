package com.flurry.sdk;

import android.annotation.SuppressLint;
import java.util.Calendar;

@SuppressLint({"DefaultLocale"})
public class fj
{
  private static String a = null;
  private static float b = 0.0F;
  
  public static int a(Long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong.longValue());
    int i = localCalendar.get(1);
    return Calendar.getInstance().get(1) - i;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */