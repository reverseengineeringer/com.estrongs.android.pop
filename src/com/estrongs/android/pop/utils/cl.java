package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.esclasses.i;
import java.util.Locale;

public class cl
{
  public static boolean a()
  {
    return b();
  }
  
  public static boolean b()
  {
    if (i.a == null) {}
    for (String str = Locale.getDefault().getCountry(); ("CN".equalsIgnoreCase(str)) || ((i.a != null) && (i.a.equalsIgnoreCase("ug"))); str = i.a) {
      return true;
    }
    return false;
  }
  
  public static String c()
  {
    if (i.a == null) {
      return Locale.getDefault().getCountry();
    }
    return i.a;
  }
  
  public static boolean d()
  {
    if (i.a == null) {}
    for (String str = Locale.getDefault().getCountry();; str = i.a) {
      return "RU".equalsIgnoreCase(str);
    }
  }
  
  public static boolean e()
  {
    if (i.a == null) {}
    for (String str = Locale.getDefault().getCountry();; str = i.a) {
      return "CN".equalsIgnoreCase(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */