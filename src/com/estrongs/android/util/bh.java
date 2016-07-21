package com.estrongs.android.util;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.baidu.android.common.security.MD5Util;
import com.estrongs.android.pop.a;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class bh
{
  private static final String a = a.h;
  private static final String b = a + "/icons";
  private static Map<String, Set<Handler>> c = new HashMap();
  
  public static void a(int paramInt)
  {
    if (paramInt <= 0) {}
    Object localObject1;
    do
    {
      do
      {
        return;
        localObject1 = new File(b);
      } while ((!((File)localObject1).exists()) || (!((File)localObject1).isDirectory()));
      localObject1 = ((File)localObject1).listFiles();
    } while (localObject1 == null);
    long l1 = System.currentTimeMillis();
    long l2 = paramInt * 24 * 60 * 60 * 1000;
    int i = localObject1.length;
    paramInt = 0;
    label72:
    Object localObject2;
    if (paramInt < i)
    {
      localObject2 = localObject1[paramInt];
      if (((File)localObject2).getName().startsWith("/cache_".substring(1))) {
        break label107;
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label72;
      break;
      label107:
      if (l1 - l2 > ((File)localObject2).lastModified()) {
        ((File)localObject2).delete();
      }
    }
  }
  
  private static void a(String paramString, Handler paramHandler, bj parambj)
  {
    String str = b(paramString);
    synchronized (c)
    {
      if (!c.containsKey(str))
      {
        HashSet localHashSet = new HashSet();
        if (paramHandler != null) {
          localHashSet.add(paramHandler);
        }
        c.put(str, localHashSet);
        paramHandler = new aa(paramString);
        d = str;
        paramHandler.a(b + "/cache_" + str);
        paramHandler.a(paramHandler);
        paramHandler.a(new bi(parambj, paramString));
        paramHandler.c();
        return;
      }
      if (paramHandler != null) {
        ((Set)c.get(str)).add(paramHandler);
      }
      return;
    }
  }
  
  public static void a(String paramString, bj parambj)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      Drawable localDrawable = c(paramString);
      if ((localDrawable != null) && (parambj != null))
      {
        parambj.a(localDrawable, paramString);
        return;
      }
      if ((an.b()) || (an.d())) {}
      for (int i = 1; (i != 0) && (parambj != null); i = 0)
      {
        b(paramString, parambj);
        return;
      }
    }
  }
  
  private static String b(String paramString)
  {
    return MD5Util.toMd5(paramString.getBytes(), true);
  }
  
  private static void b(String paramString, bj parambj)
  {
    a(paramString, null, parambj);
  }
  
  private static Drawable c(String paramString)
  {
    paramString = b(paramString);
    paramString = b + "/cache_" + paramString;
    if (new File(paramString).exists()) {
      return BitmapDrawable.createFromPath(paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */