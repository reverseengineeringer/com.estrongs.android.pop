package com.duapps.ad.base;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class d
{
  public static final String[] a = { "facebook", "download", "inmobi", "admob", "online" };
  private static boolean b;
  
  public static int a(String[] paramArrayOfString, int paramInt, String paramString)
  {
    int i1 = 0;
    int n = 1;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0) || (paramString == null)) {
      k = 0;
    }
    do
    {
      return k;
      i = paramInt;
      if (paramInt < 1) {
        i = 1;
      }
      k = n;
    } while (i <= paramArrayOfString.length - 1);
    int j = i;
    if (i > 5) {
      j = 5;
    }
    int k = 0;
    int i = 0;
    paramInt = 0;
    label64:
    int m = i1;
    if (k < paramArrayOfString.length)
    {
      m = i;
      if ("download".equals(paramArrayOfString[k]))
      {
        if (k != 0) {
          break label187;
        }
        m = 1;
        paramInt = 1;
      }
    }
    for (;;)
    {
      k += 1;
      i = m;
      break label64;
      do
      {
        m += 1;
        k = n;
        if (m >= paramArrayOfString.length) {
          break;
        }
      } while (!paramString.equals(paramArrayOfString[m]));
      if ((i == 0) || (m != 1))
      {
        k = n;
        if (i != 0) {
          break;
        }
        k = n;
        if (m != 0) {
          break;
        }
      }
      if (paramInt != 0) {
        return j - paramArrayOfString.length + 2;
      }
      return j - paramArrayOfString.length + 1;
      label187:
      paramInt = 1;
      m = i;
    }
  }
  
  public static e a(Context paramContext, int paramInt1, int paramInt2, String[] paramArrayOfString, ConcurrentHashMap<String, com.duapps.ad.entity.a.a<com.duapps.ad.entity.a.c>> paramConcurrentHashMap)
  {
    long l2 = 0L;
    if ((paramContext == null) || (paramArrayOfString == null) || (paramConcurrentHashMap == null)) {}
    do
    {
      return null;
      l.c("ChannelFactory", "cacheSize==" + paramInt2);
      paramArrayOfString = a(paramArrayOfString, paramContext);
    } while (paramArrayOfString == null);
    long l1 = l2;
    int i;
    int j;
    if (b)
    {
      l1 = l2;
      if (a("facebook", paramArrayOfString))
      {
        l.c("ChannelFactory", "create FacebookCacheManager, SID = " + paramInt1);
        i = a(paramArrayOfString, paramInt2, "facebook");
        l.c("ChannelFactory", "fbCacheSize==" + i);
        j = r.b(paramContext, paramInt1);
        paramConcurrentHashMap.put("facebook", new com.duapps.ad.entity.d(paramContext, paramInt1, j, i));
        l1 = j + 0L;
      }
    }
    l2 = l1;
    if (a("admob", paramArrayOfString))
    {
      l.c("ChannelFactory", "create AdmobCacheManager, SID = " + paramInt1);
      i = a(paramArrayOfString, paramInt2, "admob");
      l.c("ChannelFactory", "amCacheSize==" + i);
      j = r.d(paramContext, paramInt1);
      paramConcurrentHashMap.put("admob", new com.duapps.ad.a.a(paramContext, paramInt1, j, i));
      l2 = l1 + j;
    }
    l1 = l2;
    if (a("inmobi", paramArrayOfString))
    {
      l.c("ChannelFactory", "create InmobiCacheManager, SID = " + paramInt1);
      i = a(paramArrayOfString, paramInt2, "inmobi");
      l.c("ChannelFactory", "imCacheSize==" + i);
      j = r.c(paramContext, paramInt1);
      paramConcurrentHashMap.put("inmobi", new com.duapps.ad.inmobi.c(paramContext, paramInt1, j, i));
      l1 = l2 + j;
    }
    l2 = l1;
    if (a("download", paramArrayOfString))
    {
      l.c("ChannelFactory", "create DownloadCacheManager, SID = " + paramInt1);
      i = r.a(paramContext, paramInt1);
      l2 = l1 + i;
      paramConcurrentHashMap.put("download", new ae(paramContext, paramInt1, i));
    }
    if (a("online", paramArrayOfString))
    {
      l.c("ChannelFactory", "create onlineCacheManager, SID = " + paramInt1);
      paramInt2 = a(paramArrayOfString, paramInt2, "online");
      l.c("ChannelFactory", "olCacheSize==" + paramInt2);
      i = r.e(paramContext, paramInt1);
      l2 += i;
      paramConcurrentHashMap.put("online", new ah(paramContext, paramInt1, i, paramInt2));
    }
    for (;;)
    {
      return new e(paramArrayOfString, l2);
      l.c("ChannelFactory", "has no online");
    }
  }
  
  private static boolean a(String paramString, String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0) || (paramString == null)) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < paramArrayOfString.length)
      {
        if (paramString.equals(paramArrayOfString[i])) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  private static String[] a(String[] paramArrayOfString, Context paramContext)
  {
    int j = 0;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0) || (paramContext == null)) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    List localList = Arrays.asList(a);
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      if (localList.contains(paramArrayOfString[i]))
      {
        if ((!"facebook".equals(paramArrayOfString[i])) || (!ap.b(paramContext))) {
          break label95;
        }
        b = true;
        localArrayList.add(paramArrayOfString[i]);
      }
      for (;;)
      {
        i += 1;
        break;
        label95:
        if (("facebook".equals(paramArrayOfString[i])) && (!ap.b(paramContext))) {
          b = false;
        } else {
          localArrayList.add(paramArrayOfString[i]);
        }
      }
    }
    paramArrayOfString = new String[localArrayList.size()];
    i = j;
    while (i < localArrayList.size())
    {
      paramArrayOfString[i] = ((String)localArrayList.get(i));
      i += 1;
    }
    return paramArrayOfString;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */