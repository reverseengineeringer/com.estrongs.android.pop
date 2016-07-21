package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class fn
{
  private static final String a = fn.class.getSimpleName();
  private static int b = 500;
  
  static int a()
  {
    return b;
  }
  
  static int a(String paramString)
  {
    int j = 0;
    int i = j;
    if (paramString != null)
    {
      paramString = Pattern.compile("(\\d{2}):(\\d{2}):(\\d{2})").matcher(paramString);
      i = j;
      if (paramString.find())
      {
        i = j;
        if (paramString.groupCount() != 3) {}
      }
    }
    try
    {
      i = Integer.parseInt(paramString.group(1));
      j = Integer.parseInt(paramString.group(2));
      int k = Integer.parseInt(paramString.group(3));
      i = k + (i * 60 * 60 + j * 60);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return 0;
  }
  
  static fz a(List<fz> paramList)
  {
    Object localObject = null;
    fz localfz = null;
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      paramList = localfz;
      localObject = paramList;
      if (localIterator.hasNext())
      {
        localfz = (fz)localIterator.next();
        if ((localfz.b() <= a()) && (localfz.a() != null) && (((localfz.c() != null) && (localfz.c().equalsIgnoreCase("video/mp4"))) || (localfz.a().endsWith("mp4")))) {
          if (paramList == null) {
            localObject = localfz;
          }
        }
        for (;;)
        {
          paramList = (List<fz>)localObject;
          break;
          localObject = localfz;
          if (paramList.b() >= localfz.b()) {
            localObject = paramList;
          }
        }
      }
    }
    return (fz)localObject;
  }
  
  public static void a(int paramInt)
  {
    b = paramInt;
  }
  
  public static void a(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(fs.q), paramString1, paramString2, "Close Tracking URL");
    }
  }
  
  private static void a(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new dj(paramString1, paramString2, paramString3, System.currentTimeMillis() + 900000L, false, 2);
    i.a().i().b(paramString1);
  }
  
  private static void a(List<String> paramList, String paramString1, String paramString2, String paramString3)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (!TextUtils.isEmpty(str))
        {
          kg.a(3, a, paramString3 + ": " + str);
          a(paramString1, paramString2, str);
        }
      }
    }
  }
  
  public static void b(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.g(), paramString1, paramString2, "Error Tracking URL");
    }
  }
  
  public static void c(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(ft.c), paramString1, paramString2, "ClickTracking Tracking URL");
    }
  }
  
  public static void d(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.h(), paramString1, paramString2, "Impression Tracking URL");
    }
  }
  
  public static void e(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(fs.c), paramString1, paramString2, "Start Tracking URL");
    }
  }
  
  public static void f(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(fs.e), paramString1, paramString2, "First Quartile Tracking URL");
    }
  }
  
  public static void g(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(fs.d), paramString1, paramString2, "Midpoint Tracking URL");
    }
  }
  
  public static void h(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(fs.f), paramString1, paramString2, "Third Quartile Tracking URL");
    }
  }
  
  public static void i(au paramau, String paramString1, String paramString2)
  {
    paramau = paramau.g();
    if (paramau != null) {
      a(paramau.a(fs.g), paramString1, paramString2, "Complete Tracking URL");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */