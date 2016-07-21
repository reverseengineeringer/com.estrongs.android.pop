package com.estrongs.fs.a;

import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.impl.media.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
{
  public static String a(String paramString)
  {
    return d(paramString.substring(0, paramString.lastIndexOf(b(paramString))));
  }
  
  public static String a(List<String> paramList, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ("/".equals(paramList.get(0))) {
      localStringBuffer.append((String)paramList.get(0));
    }
    for (;;)
    {
      int i = 1;
      while (i <= paramInt)
      {
        if (i > 1) {
          localStringBuffer.append("/");
        }
        localStringBuffer.append((String)paramList.get(i));
        i += 1;
      }
      localStringBuffer.append((String)paramList.get(0)).append("://");
    }
    return localStringBuffer.toString();
  }
  
  public static String a(List<String> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if (a(str, paramString)) {
        return str;
      }
    }
    return null;
  }
  
  public static List<String> a(List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(ap.bV((String)paramList.next()));
    }
    return localArrayList;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    return paramString2.indexOf(paramString1) == 0;
  }
  
  public static int b(List<String> paramList)
  {
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i = 0;
    if (j < paramList.size())
    {
      int i8 = g((String)paramList.get(j));
      int i7;
      int i6;
      int i5;
      int i4;
      int i3;
      if (i8 == 4)
      {
        i7 = 1;
        i6 = i2;
        i5 = i1;
        i4 = n;
        i3 = m;
      }
      for (;;)
      {
        j += 1;
        m = i3;
        n = i4;
        i1 = i5;
        i2 = i6;
        i = i7;
        break;
        if (i8 == 2)
        {
          i6 = 1;
          i3 = m;
          i4 = n;
          i5 = i1;
          i7 = i;
        }
        else if (i8 == 8)
        {
          i5 = 1;
          i3 = m;
          i4 = n;
          i6 = i2;
          i7 = i;
        }
        else if (i8 == 16)
        {
          i4 = 1;
          i3 = m;
          i5 = i1;
          i6 = i2;
          i7 = i;
        }
        else if (i8 == 32)
        {
          i3 = 1;
          i4 = n;
          i5 = i1;
          i6 = i2;
          i7 = i;
        }
        else
        {
          i3 = m;
          i4 = n;
          i5 = i1;
          i6 = i2;
          i7 = i;
          if (i8 == 64)
          {
            k = 1;
            i3 = m;
            i4 = n;
            i5 = i1;
            i6 = i2;
            i7 = i;
          }
        }
      }
    }
    if (i != 0) {}
    for (j = 5;; j = 1)
    {
      i = j;
      if (i2 != 0) {
        i = j | 0x2;
      }
      j = i;
      if (i1 != 0) {
        j = i | 0x8;
      }
      i = j;
      if (n != 0) {
        i = j | 0x10;
      }
      j = i;
      if (m != 0) {
        j = i | 0x20;
      }
      i = j;
      if (k != 0) {
        i = j | 0x40;
      }
      return i;
    }
  }
  
  public static String b(String paramString)
  {
    if ("/".equals(paramString)) {}
    List localList;
    do
    {
      return paramString;
      localList = c(paramString);
    } while (localList.size() == 0);
    return (String)localList.get(localList.size() - 1);
  }
  
  public static List<String> c(String paramString)
  {
    int i = 0;
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    if (paramString.startsWith("/")) {
      localArrayList.add("/");
    }
    if (paramString.startsWith("/"))
    {
      paramString = paramString.split("/");
      i = j;
      while (i < paramString.length)
      {
        if (paramString[i].length() > 0) {
          localArrayList.add(paramString[i]);
        }
        i += 1;
      }
    }
    if (paramString.indexOf("://") >= 0)
    {
      localArrayList.add(paramString.substring(0, paramString.indexOf("://")));
      j = paramString.indexOf("://");
      paramString = paramString.substring("://".length() + j, paramString.length()).split("/");
      while (i < paramString.length)
      {
        if (paramString[i].length() > 0) {
          localArrayList.add(paramString[i]);
        }
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public static String d(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return str;
            str = paramString;
          } while ("/".equals(paramString));
          str = paramString;
        } while (paramString.length() < 2);
        str = paramString;
      } while (paramString.charAt(paramString.length() - 1) != '/');
      str = paramString;
    } while (paramString.charAt(paramString.length() - 2) == '/');
    return paramString.substring(0, paramString.length() - 1);
  }
  
  public static boolean e(String paramString)
  {
    return paramString.startsWith("/sdcard");
  }
  
  public static String f(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith("/mnt/sdcard")) {
      str = "/sdcard" + paramString.substring("/mnt/sdcard".length(), paramString.length());
    }
    return str;
  }
  
  public static int g(String paramString)
  {
    if (!ap.bC(paramString)) {}
    do
    {
      return 1;
      if (b.a(paramString)) {
        return 4;
      }
      if (b.b(paramString)) {
        return 2;
      }
      if (b.c(paramString)) {
        return 8;
      }
      if ((bg.P(paramString)) || (bg.i(paramString))) {
        return 16;
      }
      if (bg.K(paramString)) {
        return 32;
      }
    } while (paramString.endsWith("/"));
    return 64;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */