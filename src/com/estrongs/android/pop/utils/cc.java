package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.esclasses.e;
import java.util.Locale;

public class cc
{
  public static boolean a()
  {
    return b();
  }
  
  public static boolean b()
  {
    if (e.a == null) {}
    for (String str = Locale.getDefault().getCountry(); ("CN".equalsIgnoreCase(str)) || ((e.a != null) && (e.a.equalsIgnoreCase("ug"))); str = e.a) {
      return true;
    }
    return false;
  }
  
  public static boolean c()
  {
    return (b()) || ((e.a != null) && (e.a.equalsIgnoreCase("tw")));
  }
  
  public static boolean d()
  {
    if ((a()) || (c()) || (ch.a())) {}
    String str;
    do
    {
      return true;
      str = Locale.getDefault().getCountry();
    } while (("zh".equalsIgnoreCase(Locale.getDefault().getLanguage())) || ("tw".equalsIgnoreCase(str)) || ("hk".equalsIgnoreCase(str)) || ("mo".equalsIgnoreCase(str)) || ("cn".equalsIgnoreCase(str)));
    return false;
  }
  
  public static String e()
  {
    if (e.a == null) {
      return Locale.getDefault().getCountry();
    }
    return e.a;
  }
  
  public static boolean f()
  {
    if (e.a == null) {}
    for (String str = Locale.getDefault().getCountry();; str = e.a) {
      return "KO".equalsIgnoreCase(str);
    }
  }
  
  public static boolean g()
  {
    if (e.a == null) {}
    for (String str = Locale.getDefault().getCountry();; str = e.a) {
      return "RU".equalsIgnoreCase(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */