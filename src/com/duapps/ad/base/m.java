package com.duapps.ad.base;

import android.content.Context;
import android.text.TextUtils;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.stats.u;
import com.duapps.ad.stats.y;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class m
{
  static final String a = m.class.getSimpleName();
  public static final String b;
  private static m c;
  private static final ThreadFactory d;
  private final PriorityBlockingQueue<Runnable> e = new PriorityBlockingQueue(20);
  private HashSet<String> f = new HashSet();
  private Context g;
  private ThreadPoolExecutor h;
  
  static
  {
    String str = System.getProperty("http.agent");
    if (TextUtils.isEmpty(str)) {}
    for (b = "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA) Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18";; b = str)
    {
      d = new n();
      return;
    }
  }
  
  private m(Context paramContext)
  {
    g = paramContext;
    h = new ThreadPoolExecutor(5, 5, 1L, TimeUnit.MINUTES, e, d);
  }
  
  public static m a(Context paramContext)
  {
    try
    {
      if (c == null) {
        c = new m(paramContext.getApplicationContext());
      }
      return c;
    }
    finally {}
  }
  
  public static <T extends AdData> List<T> a(Context paramContext, List<T> paramList)
  {
    y localy = y.a(paramContext);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      AdData localAdData = (AdData)localIterator.next();
      if ((AdData.a(paramContext, localAdData)) && (localy.b(h) == 2)) {
        localIterator.remove();
      }
    }
    return paramList;
  }
  
  public p a(String paramString)
  {
    return y.a(g).a(paramString);
  }
  
  void a(AdData paramAdData, int paramInt1, int paramInt2, long paramLong)
  {
    u.a(g, paramAdData, paramInt1, paramInt2, paramLong);
  }
  
  public boolean a(AdData paramAdData)
  {
    if (com.duapps.ad.stats.n.b(h)) {
      return false;
    }
    if (f.contains(h))
    {
      l.c(a, "Task already Running.");
      return false;
    }
    paramAdData = new o(this, paramAdData);
    if (e.contains(paramAdData))
    {
      l.c(a, "Task already in Queue");
      return false;
    }
    h.execute(paramAdData);
    return true;
  }
  
  public boolean a(List<AdData> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      AdData localAdData = (AdData)paramList.next();
      if ((!ap.a(g, c)) && (AdData.a(g, localAdData))) {
        a(localAdData);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */