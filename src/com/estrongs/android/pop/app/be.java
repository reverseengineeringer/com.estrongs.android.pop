package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.zeroconf.u;
import com.estrongs.android.pop.zeroconf.v;
import com.estrongs.android.pop.zeroconf.w;
import java.util.ArrayList;
import java.util.Iterator;

public class be
  implements v
{
  public static int a = 42136;
  public static String b = "ESDevice";
  private static final String c = be.class.getSimpleName();
  private static be e = null;
  private w d = null;
  private BroadcastReceiver f = new bf(this);
  private Object g = new Object();
  private ArrayList<bj> h = new ArrayList();
  
  private be()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    FexApplication.a().registerReceiver(f, localIntentFilter);
  }
  
  public static be a()
  {
    if (e == null) {
      e = new be();
    }
    return e;
  }
  
  public static void b()
  {
    if (FexApplication.a().g()) {
      a();
    }
  }
  
  private bi c(u paramu)
  {
    bi localbi = new bi();
    a = f;
    bi.a(localbi, paramu.b());
    int i = a.indexOf("-");
    b = a.substring(0, i);
    return localbi;
  }
  
  private void d()
  {
    synchronized (g)
    {
      if (d != null)
      {
        e();
        d = null;
      }
      new Thread(new bg(this)).start();
      return;
    }
  }
  
  private void e()
  {
    synchronized (g)
    {
      if (d == null) {
        return;
      }
      w localw = d;
      d = null;
      new Thread(new bh(this, localw)).start();
      return;
    }
  }
  
  public void a(bj parambj)
  {
    h.add(parambj);
  }
  
  public void a(u paramu)
  {
    paramu = c(paramu);
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((bj)localIterator.next()).a(paramu);
    }
  }
  
  public void b(bj parambj)
  {
    h.remove(parambj);
  }
  
  public void b(u paramu)
  {
    paramu = c(paramu);
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((bj)localIterator.next()).b(paramu);
    }
  }
  
  public void c()
  {
    synchronized (g)
    {
      if (d != null)
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(w.b);
        d.a(localArrayList, 0);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */