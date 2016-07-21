package com.duapps.ad.base;

import android.content.Context;
import com.duapps.ad.entity.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class b
{
  public static c a(Context paramContext, int paramInt1, int paramInt2, String[] paramArrayOfString, long paramLong, ConcurrentHashMap<String, a<com.duapps.ad.entity.a.c>> paramConcurrentHashMap)
  {
    if ((paramContext == null) || (paramArrayOfString == null) || (paramConcurrentHashMap == null)) {}
    do
    {
      return null;
      l.c("ChangePriorityForChannels", "cacheSize==" + paramInt2);
      paramArrayOfString = a(paramArrayOfString);
    } while (paramArrayOfString == null);
    l.c("ChangePriorityForChannels", "priorityArray==" + ap.a(paramArrayOfString));
    Object localObject1 = paramConcurrentHashMap.keySet().iterator();
    List localList = Arrays.asList(paramArrayOfString);
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (String)((Iterator)localObject1).next();
      if (!localList.contains(localObject2))
      {
        localObject2 = (a)paramConcurrentHashMap.get(localObject2);
        if (localObject2 != null)
        {
          paramLong -= d;
          ((Iterator)localObject1).remove();
        }
      }
    }
    int i = 0;
    long l = paramLong;
    if (i < paramArrayOfString.length)
    {
      localObject1 = (a)paramConcurrentHashMap.get(paramArrayOfString[i]);
      if (localObject1 != null)
      {
        int j = d.a(paramArrayOfString, paramInt2, paramArrayOfString[i]);
        paramLong = d;
        ((a)localObject1).a(j);
        paramLong = l - paramLong + d;
      }
      for (;;)
      {
        i += 1;
        l = paramLong;
        break;
        localObject1 = d.a(paramContext, paramInt1, d.a(paramArrayOfString, paramInt2, paramArrayOfString[i]), new String[] { paramArrayOfString[i] }, paramConcurrentHashMap);
        paramLong = l;
        if (localObject1 != null) {
          paramLong = l + ((e)localObject1).b();
        }
      }
    }
    return new c(paramArrayOfString, l);
  }
  
  private static String[] a(String[] paramArrayOfString)
  {
    int j = 0;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    List localList = Arrays.asList(d.a);
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (localList.contains(paramArrayOfString[i])) {
        localArrayList.add(paramArrayOfString[i]);
      }
      i += 1;
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
 * Qualified Name:     com.duapps.ad.base.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */