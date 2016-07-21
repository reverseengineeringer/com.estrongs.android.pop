package com.estrongs.android.scanner.b;

import android.util.Pair;
import com.estrongs.android.scanner.x;
import com.estrongs.android.util.bg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
{
  private static final List<Pair<String, Integer>> a;
  private static final int b = "/tencent/micromsg/".length() + "0".length() * 32;
  private static final int c = "/tencent/mobileqq/".length();
  private static List<String> d;
  private static List<String> e;
  
  static
  {
    Object localObject = x.a();
    a = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      a.add(new Pair(str.toLowerCase(), Integer.valueOf(str.length() - 1)));
    }
    a();
  }
  
  public static int a(int paramInt)
  {
    if (bg.e(paramInt)) {
      return 2;
    }
    if (bg.a(paramInt)) {
      return 1;
    }
    if (bg.j(paramInt)) {
      return 4;
    }
    if (bg.g(paramInt)) {
      return 3;
    }
    if (bg.k(paramInt)) {
      return 5;
    }
    return 100;
  }
  
  public static int a(String paramString)
  {
    if (paramString == null) {
      return 100;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Pair)localIterator.next();
      if (paramString.startsWith((String)first))
      {
        localObject = paramString.substring(((Integer)second).intValue());
        if (b <= ((String)localObject).length())
        {
          localObject = ((String)localObject).toLowerCase();
          if ((((String)localObject).startsWith("/tencent/micromsg/")) && (((String)localObject).substring("/tencent/micromsg/".length(), b).matches("[a-z0-9]+")))
          {
            localObject = ((String)localObject).substring(b + 1);
            if (((String)localObject).startsWith("favorite/web/")) {
              return 1;
            }
            if (((String)localObject).startsWith("image/"))
            {
              localObject = ((String)localObject).substring("image/".length());
              if ((!((String)localObject).contains("/")) && (!((String)localObject).contains("."))) {
                return 1;
              }
            }
            else if (((String)localObject).startsWith("music/"))
            {
              return 2;
            }
          }
        }
      }
    }
    return 100;
  }
  
  public static int a(String paramString1, String paramString2)
  {
    int i;
    if (paramString2 == null) {
      i = a(paramString1);
    }
    int j;
    do
    {
      return i;
      paramString2 = paramString2.toLowerCase();
      if (".eslock".equals(paramString2)) {
        return 7;
      }
      if (".apk".equals(paramString2)) {
        return 6;
      }
      j = a(bg.a(paramString2));
      i = j;
    } while (j != 100);
    if (e.b(paramString2)) {
      return 4;
    }
    return b(paramString1, paramString2);
  }
  
  private static void a()
  {
    d = new ArrayList();
    d.add("video/");
    d.add("package/");
    d.add("music/");
    d.add("openapi/");
    d.add("favorite/web/");
    d.add("favorite/voice/");
    d.add("favorite/music/");
    e = new ArrayList();
    e.add("photo/");
    e.add("funcall/");
    e.add("thumb/");
    e.add("webviewcheck/");
    e.add("front_info/");
    e.add("head/_hd");
  }
  
  public static int b(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      return 100;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Pair)localIterator.next();
      if (paramString1.startsWith((String)first))
      {
        localObject = paramString1.substring(((Integer)second).intValue());
        if (c <= ((String)localObject).length())
        {
          localObject = ((String)localObject).toLowerCase();
          if ((((String)localObject).startsWith("/tencent/mobileqq/")) && (((String)localObject).substring(c).startsWith("head/_hd/")))
          {
            if ((".jpg_".equals(paramString2)) || (".jpeg_".equals(paramString2))) {
              return 1;
            }
            return 100;
          }
        }
      }
    }
    return 100;
  }
  
  public static Pair<Boolean, Boolean> b(String paramString)
  {
    boolean bool2 = true;
    Iterator localIterator1 = a.iterator();
    boolean bool1 = false;
    Object localObject;
    for (;;)
    {
      if (localIterator1.hasNext())
      {
        localObject = (Pair)localIterator1.next();
        if (paramString.startsWith((String)first))
        {
          localObject = paramString.substring(((Integer)second).intValue()).toLowerCase();
          if (((String)localObject).startsWith("/tencent/micromsg/")) {
            if (b > ((String)localObject).length()) {
              bool1 = bool2;
            }
          }
        }
      }
    }
    for (;;)
    {
      return new Pair(Boolean.valueOf(bool1), Boolean.valueOf(false));
      if (((String)localObject).substring("/tencent/micromsg/".length(), b).matches("[a-z0-9]+"))
      {
        localObject = ((String)localObject).substring(b + 1);
        bool1 = bool2;
        if (((String)localObject).length() != 0)
        {
          if (((String)localObject).startsWith("image/"))
          {
            if (((String)localObject).equals("image/")) {
              return new Pair(Boolean.valueOf(true), Boolean.valueOf(true));
            }
            return new Pair(Boolean.valueOf(true), Boolean.valueOf(false));
          }
          Iterator localIterator2 = d.iterator();
          while (localIterator2.hasNext()) {
            if (((String)localObject).startsWith((String)localIterator2.next())) {
              return new Pair(Boolean.valueOf(true), Boolean.valueOf(true));
            }
          }
        }
      }
      else
      {
        bool1 = true;
        for (;;)
        {
          break;
        }
      }
    }
  }
  
  public static Pair<Boolean, Boolean> c(String paramString)
  {
    boolean bool2 = true;
    Iterator localIterator1 = a.iterator();
    boolean bool1 = false;
    Object localObject;
    for (;;)
    {
      if (localIterator1.hasNext())
      {
        localObject = (Pair)localIterator1.next();
        if (paramString.startsWith((String)first))
        {
          localObject = paramString.substring(((Integer)second).intValue()).toLowerCase();
          if (((String)localObject).startsWith("/tencent/mobileqq/"))
          {
            if (c > ((String)localObject).length())
            {
              bool1 = true;
              continue;
            }
            localObject = ((String)localObject).substring(c);
            if (((String)localObject).length() == 0) {
              bool1 = bool2;
            }
          }
        }
      }
    }
    for (;;)
    {
      return new Pair(Boolean.valueOf(bool1), Boolean.valueOf(false));
      Iterator localIterator2 = e.iterator();
      while (localIterator2.hasNext()) {
        if (((String)localObject).startsWith((String)localIterator2.next())) {
          return new Pair(Boolean.valueOf(true), Boolean.valueOf(true));
        }
      }
      bool1 = true;
      for (;;)
      {
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */