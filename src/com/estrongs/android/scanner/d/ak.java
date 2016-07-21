package com.estrongs.android.scanner.d;

import android.database.Cursor;
import android.util.Pair;
import android.util.SparseArray;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.scanner.g;
import com.estrongs.android.util.l;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class ak
{
  private final g a;
  private final a b;
  private final SparseArray<String> c;
  private final long d;
  private final long e;
  private final long f;
  private final SparseArray<List<ar>> g;
  private final SparseArray<long[]> h;
  private Comparator<Pair<Long, List<b>>> i = new an(this);
  private Comparator<b> j = new ao(this);
  
  public ak(long paramLong1, long paramLong2, g paramg)
  {
    a = paramg;
    b = a.a();
    d = paramLong1;
    e = paramLong2;
    f = a();
    g = new SparseArray();
    h = new SparseArray();
    c = new SparseArray();
    c.put(6, "apkview");
    c.put(1, "imageview");
    c.put(2, "audioview");
    c.put(3, "videoview");
    c.put(4, "textview");
  }
  
  private int a(String paramString, long paramLong1, long paramLong2, long paramLong3)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("pid").append('=').append(paramLong1);
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append('>').append(paramLong2);
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append("<=").append(paramLong3);
    localObject = ((StringBuilder)localObject).toString();
    paramString = b.a(paramString, new String[] { "_id" }, (String)localObject, "pid,name", null, null);
    if (paramString == null) {
      return 0;
    }
    int k = paramString.getCount();
    paramString.close();
    return k;
  }
  
  private long a()
  {
    long l1 = ad.a(FexApplication.a()).bn();
    long l2 = d - 2419200000L;
    if (l1 == -1L) {}
    while (l2 > l1) {
      return l2;
    }
    return l1;
  }
  
  private List<ar> a(int paramInt, long paramLong1, long paramLong2)
  {
    String str = (String)c.get(paramInt);
    if (str == null) {
      return Collections.emptyList();
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("isLogPath").append("=1");
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append(">").append(paramLong1);
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append("<=").append(paramLong2);
    localObject = ((StringBuilder)localObject).toString();
    long[] arrayOfLong = new long[2];
    arrayOfLong[0] = Long.MAX_VALUE;
    arrayOfLong[1] = Long.MIN_VALUE;
    LinkedList localLinkedList = new LinkedList();
    am localam = new am(this, localLinkedList, arrayOfLong);
    b.a(localam, str, new String[] { "pid", "groupname", "path", "min(lastmodified)", "max(lastmodified)" }, (String)localObject, "pid,groupname", null, null);
    h.put(paramInt, arrayOfLong);
    return localLinkedList;
  }
  
  private List<i> a(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("pid").append('=').append(paramLong1);
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append('>').append(paramLong2);
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append("<=").append(paramLong3);
    localObject = ((StringBuilder)localObject).toString();
    LinkedList localLinkedList = new LinkedList();
    paramString2 = new al(this, paramString2, localLinkedList);
    b.a(paramString2, paramString1, new String[] { "name", "size", "lastmodified" }, (String)localObject, "pid,name", "lastmodified DESC LIMIT 0,4", null);
    return localLinkedList;
  }
  
  private boolean b(int paramInt, long paramLong1, long paramLong2)
  {
    long[] arrayOfLong = (long[])h.get(paramInt);
    if (arrayOfLong == null) {
      return true;
    }
    return (arrayOfLong[1] <= paramLong1) || (arrayOfLong[0] > paramLong2);
  }
  
  private long[] b()
  {
    long l1 = f;
    if (l1 > e) {
      return new long[0];
    }
    long l4 = d;
    long l2 = d - 3600000L;
    long l3 = d - 86400000L;
    new SimpleDateFormat("yyyy-MM-dd H:m:s");
    Object localObject = new ArrayList(20);
    ((ArrayList)localObject).add(Long.valueOf(e));
    int k;
    long[] arrayOfLong;
    if (e <= l3)
    {
      l.e("LogReader", "落在按天计算的区间");
      k = 1;
      for (;;)
      {
        l2 = l3 - 86400000L * k;
        if (l2 < l1)
        {
          ((ArrayList)localObject).add(Long.valueOf(l1));
          arrayOfLong = new long[((ArrayList)localObject).size()];
          localObject = ((ArrayList)localObject).iterator();
          k = 0;
          while (((Iterator)localObject).hasNext())
          {
            arrayOfLong[k] = ((Long)((Iterator)localObject).next()).longValue();
            k += 1;
          }
        }
        if (l2 < e) {
          ((ArrayList)localObject).add(Long.valueOf(l2));
        }
        k += 1;
      }
    }
    if (e <= l2)
    {
      l.e("LogReader", "起点落在按小时计算的区间");
      if (l1 > l3)
      {
        l.e("LogReader", "终点也落在按小时计算的区间");
        k = 1;
        for (;;)
        {
          l3 = l2 - 3600000L * k;
          if (l3 < l1)
          {
            ((ArrayList)localObject).add(Long.valueOf(l1));
            break;
          }
          if (l3 < e) {
            ((ArrayList)localObject).add(Long.valueOf(l3));
          }
          k += 1;
        }
      }
      l.e("LogReader", "终点落在按天计算的区间");
      k = 1;
      label309:
      l4 = l2 - 3600000L * k;
      if (l4 < l3) {
        k = 1;
      }
      for (;;)
      {
        l2 = l3 - 86400000L * k;
        if (l2 < l1)
        {
          ((ArrayList)localObject).add(Long.valueOf(l1));
          break;
          if (l4 < e) {
            ((ArrayList)localObject).add(Long.valueOf(l4));
          }
          k += 1;
          break label309;
        }
        ((ArrayList)localObject).add(Long.valueOf(l2));
        k += 1;
      }
    }
    if (e <= l4)
    {
      l.e("LogReader", "起点落在按分钟计算的区间");
      if (l1 > l2)
      {
        l.e("LogReader", "终点也落在按分钟计算的区间");
        k = 1;
        for (;;)
        {
          l2 = l4 - 60000L * k;
          if (l2 < l1)
          {
            ((ArrayList)localObject).add(Long.valueOf(l1));
            break;
          }
          if (l2 < e) {
            ((ArrayList)localObject).add(Long.valueOf(l2));
          }
          k += 1;
        }
      }
      if (l1 > l3)
      {
        l.e("LogReader", "终点落在按小时计算的区间");
        k = 1;
        label518:
        l3 = l4 - 60000L * k;
        if (l3 < l2) {
          k = 1;
        }
        for (;;)
        {
          l3 = l2 - 3600000L * k;
          if (l3 < l1)
          {
            ((ArrayList)localObject).add(Long.valueOf(l1));
            break;
            if (l3 < e) {
              ((ArrayList)localObject).add(Long.valueOf(l3));
            }
            k += 1;
            break label518;
          }
          ((ArrayList)localObject).add(Long.valueOf(l3));
          k += 1;
        }
      }
      l.e("LogReader", "终点落在按天计算的区间");
      k = 1;
      for (;;)
      {
        long l5 = l4 - 60000L * k;
        if (l5 < l2)
        {
          k = 1;
          while (k < 24)
          {
            ((ArrayList)localObject).add(Long.valueOf(l2 - 3600000L * k));
            k += 1;
          }
        }
        if (l5 < e) {
          ((ArrayList)localObject).add(Long.valueOf(l5));
        }
        k += 1;
      }
      k = 1;
      for (;;)
      {
        l2 = l3 - 86400000L * k;
        if (l2 < l1)
        {
          ((ArrayList)localObject).add(Long.valueOf(l1));
          break;
        }
        ((ArrayList)localObject).add(Long.valueOf(l2));
        k += 1;
      }
    }
    throw new IllegalStateException("mStartTimestamp > startTmByMinute");
    return arrayOfLong;
  }
  
  public final List<Pair<Long, List<b>>> a(int paramInt)
  {
    b.b();
    int i1 = c.size();
    Object localObject1 = Executors.newFixedThreadPool(i1);
    Object localObject4 = new ArrayList(i1);
    int k = 0;
    while (k < i1)
    {
      ((ArrayList)localObject4).add(((ExecutorService)localObject1).submit(new aq(this, c.keyAt(k))));
      k += 1;
    }
    Object localObject2 = b();
    if (localObject2.length <= 1)
    {
      ((ExecutorService)localObject1).shutdownNow();
      b.close();
      return Collections.emptyList();
    }
    Object localObject3 = new LinkedList();
    localObject4 = ((ArrayList)localObject4).iterator();
    while (((Iterator)localObject4).hasNext())
    {
      Future localFuture = (Future)((Iterator)localObject4).next();
      try
      {
        ((List)localObject3).addAll((List)localFuture.get());
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    localObject3 = new HashMap();
    localObject4 = new ArrayList(i1);
    int m = 0;
    k = 0;
    for (;;)
    {
      long l1;
      long l2;
      if (m < localObject2.length - 1)
      {
        l1 = localObject2[(m + 1)];
        l2 = localObject2[m];
        ((ArrayList)localObject4).clear();
        int n = 0;
        if (n < i1)
        {
          int i2 = c.keyAt(n);
          if (b(i2, l1, l2)) {}
          for (;;)
          {
            n += 1;
            break;
            ((ArrayList)localObject4).add(((ExecutorService)localObject1).submit(new ap(this, i2, l1, l2)));
          }
        }
        Iterator localIterator = ((ArrayList)localObject4).iterator();
        label472:
        while (localIterator.hasNext())
        {
          Object localObject5 = (Future)localIterator.next();
          for (;;)
          {
            Object localObject6;
            List localList;
            try
            {
              localObject5 = (Map)((Future)localObject5).get();
              localObject5 = ((Map)localObject5).entrySet().iterator();
              if (!((Iterator)localObject5).hasNext()) {
                break label472;
              }
              localObject6 = (Map.Entry)((Iterator)localObject5).next();
              Long localLong = (Long)((Map.Entry)localObject6).getKey();
              localObject6 = (List)((Map.Entry)localObject6).getValue();
              localList = (List)((Map)localObject3).get(localLong);
              if (localList == null)
              {
                ((Map)localObject3).put(localLong, localObject6);
                k += ((List)localObject6).size();
                continue;
              }
            }
            catch (Exception localException2)
            {
              localException2.printStackTrace();
            }
            localList.addAll((Collection)localObject6);
          }
        }
        if (k < paramInt) {}
      }
      else
      {
        ((ExecutorService)localObject1).shutdownNow();
        b.close();
        localObject1 = new ArrayList(paramInt);
        localObject2 = ((Map)localObject3).entrySet().iterator();
        for (paramInt = 0; ((Iterator)localObject2).hasNext(); paramInt = k)
        {
          localObject4 = (Map.Entry)((Iterator)localObject2).next();
          localObject3 = (Long)((Map.Entry)localObject4).getKey();
          localObject4 = (List)((Map.Entry)localObject4).getValue();
          Collections.sort((List)localObject4, j);
          k = paramInt;
          if (localObject4 != null)
          {
            l1 = d;
            l2 = ((Long)localObject3).longValue();
            k = paramInt + ((List)localObject4).size();
            ((List)localObject1).add(new Pair(Long.valueOf(l1 - l2), localObject4));
          }
        }
      }
      m += 1;
    }
    Collections.sort((List)localObject1, i);
    return (List<Pair<Long, List<b>>>)localObject1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */