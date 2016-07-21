package com.dianxinos.library.notify.h;

import android.text.TextUtils;
import com.dianxinos.library.b.b.a;
import com.dianxinos.library.b.b.b;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.data.k;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class e
{
  private static b a = b.a(c.a(), "notify_items", k.b());
  private static a b;
  
  static
  {
    if (a != null) {
      b = a.a("storage");
    }
  }
  
  public static String a(String paramString)
  {
    try
    {
      if ((b != null) && (paramString != null))
      {
        paramString = b.b(paramString, (String)null);
        return paramString;
      }
      return null;
    }
    catch (Throwable paramString) {}
    return null;
  }
  
  public static Set<String> a()
  {
    return c("notify_set");
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if (b != null) {
      return b.a(paramString1, paramString2);
    }
    return false;
  }
  
  private static boolean a(String paramString, Set<String> paramSet)
  {
    if (b != null)
    {
      if ((paramSet != null) && (!paramSet.isEmpty()))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        paramSet = paramSet.iterator();
        while (paramSet.hasNext())
        {
          String str = (String)paramSet.next();
          if (paramSet.hasNext()) {
            localStringBuilder.append(str).append("|");
          } else {
            localStringBuilder.append(str);
          }
        }
        return b.a(paramString, localStringBuilder.toString());
      }
      return b.a(paramString);
    }
    return false;
  }
  
  public static boolean a(Set<String> paramSet)
  {
    return a("notify_set", paramSet);
  }
  
  public static Set<String> b()
  {
    return c("splash_set");
  }
  
  public static boolean b(String paramString)
  {
    if (b != null) {
      return b.a(paramString);
    }
    return false;
  }
  
  public static boolean b(Set<String> paramSet)
  {
    return a("splash_set", paramSet);
  }
  
  public static Set<String> c()
  {
    return c("pandora_set");
  }
  
  private static Set<String> c(String paramString)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    if (b != null)
    {
      paramString = b.b(paramString, (String)null);
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = paramString.split("\\|");
        int j = paramString.length;
        int i = 0;
        while (i < j)
        {
          localLinkedHashSet.add(paramString[i]);
          i += 1;
        }
      }
    }
    return localLinkedHashSet;
  }
  
  public static boolean c(Set<String> paramSet)
  {
    return a("pandora_set", paramSet);
  }
  
  public static Set<String> d()
  {
    return c("data_pipe_set");
  }
  
  public static boolean d(Set<String> paramSet)
  {
    return a("data_pipe_set", paramSet);
  }
  
  public static void e()
  {
    if (b != null) {
      b.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.h.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */