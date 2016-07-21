package com.estrongs.android.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class j
{
  public static int a()
  {
    return a(System.currentTimeMillis());
  }
  
  public static int a(long paramLong)
  {
    return Integer.parseInt(new SimpleDateFormat("yyyyMMdd").format(new Date(paramLong)));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */