package com.estrongs.android.pop.app.f;

import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bg;
import com.estrongs.fs.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class q
{
  public static String a(String paramString1, String paramString2)
  {
    return (String)b(paramString2).get(paramString1);
  }
  
  public static List<String> a(String paramString)
  {
    int i = 0;
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    paramString = (paramString + " ").split("\"");
    if (paramString.length % 2 != 0)
    {
      i = j;
      if (i < paramString.length)
      {
        if (i % 2 != 0) {
          if (paramString[i].length() > 0) {
            localArrayList.add(paramString[i]);
          }
        }
        for (;;)
        {
          i += 1;
          break;
          a(paramString[i], localArrayList);
        }
      }
    }
    else
    {
      if (i < paramString.length - 2)
      {
        if (i % 2 != 0) {
          if (paramString[i].length() > 0) {
            localArrayList.add(paramString[i]);
          }
        }
        for (;;)
        {
          i += 1;
          break;
          a(paramString[i], localArrayList);
        }
      }
      if (paramString.length >= 2) {
        a(paramString[(paramString.length - 2)] + "\"" + paramString[(paramString.length - 1)], localArrayList);
      }
    }
    return localArrayList;
  }
  
  public static List<i> a(Map<String, String> paramMap, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramMap.containsKey("keyword")) {
      localArrayList.add(new v(Uri.decode((String)paramMap.get("keyword")), paramBoolean));
    }
    if (paramMap.containsKey("category"))
    {
      String str = c((String)paramMap.get("category"));
      if ((str != null) || ((str == null) && ("document".equals(paramMap.get("category"))))) {
        localArrayList.add(new t(str));
      }
    }
    try
    {
      l1 = Long.parseLong((String)paramMap.get("minSize"));
    }
    catch (Exception localException3)
    {
      try
      {
        l2 = Long.parseLong((String)paramMap.get("maxSize"));
        if ((l1 > -1L) || (l2 > -1L)) {
          localArrayList.add(new w(l1, l2));
        }
      }
      catch (Exception localException3)
      {
        try
        {
          l1 = Long.parseLong((String)paramMap.get("minDate"));
        }
        catch (Exception localException3)
        {
          try
          {
            for (;;)
            {
              l2 = Long.parseLong((String)paramMap.get("maxDate"));
              if ((l1 > -1L) || (l2 > -1L)) {
                localArrayList.add(new s(l1, l2));
              }
              return localArrayList;
              localException1 = localException1;
              long l1 = -1L;
              continue;
              localException2 = localException2;
              l2 = -1L;
              continue;
              localException3 = localException3;
              l1 = -1L;
            }
          }
          catch (Exception paramMap)
          {
            for (;;)
            {
              long l2 = -1L;
            }
          }
        }
      }
    }
  }
  
  private static void a(String paramString, List<String> paramList)
  {
    if (paramString.length() == 0) {}
    for (;;)
    {
      return;
      paramString = paramString.split(" ");
      int i = 0;
      while (i < paramString.length)
      {
        if (paramString[i].length() > 0) {
          paramList.add(paramString[i]);
        }
        i += 1;
      }
    }
  }
  
  public static Map<String, String> b(String paramString)
  {
    HashMap localHashMap = new HashMap();
    paramString = paramString.split("&&");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = paramString[i];
      if (arrayOfString != null)
      {
        arrayOfString = arrayOfString.split("=");
        if ((arrayOfString != null) && (arrayOfString.length == 2)) {
          localHashMap.put(arrayOfString[0], arrayOfString[1]);
        }
      }
      i += 1;
    }
    return localHashMap;
  }
  
  private static void b(List<i> paramList)
  {
    if ((!ad.a(FexApplication.a()).q()) && (FileExplorerActivity.X() != null)) {
      paramList.add(XH);
    }
  }
  
  private static String c(String paramString)
  {
    if ("image".equals(paramString)) {
      return bg.g();
    }
    if ("music".equals(paramString)) {
      return bg.a();
    }
    if ("video".equals(paramString)) {
      return bg.b();
    }
    if ("apk".equals(paramString)) {
      return bg.h();
    }
    if ("document".equals(paramString)) {
      return bg.c();
    }
    if ("encrypt".equals(paramString)) {
      return bg.i();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */