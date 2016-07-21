package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.zeroconf.u;
import com.estrongs.android.pop.zeroconf.v;
import com.estrongs.android.pop.zeroconf.w;
import java.util.ArrayList;
import java.util.Iterator;

public class bi
  implements v
{
  public static int a = 42136;
  public static String b = "ESDevice";
  private static final String c = bi.class.getSimpleName();
  private static bi e = null;
  private w d = null;
  private BroadcastReceiver f = new bj(this);
  private Object g = new Object();
  private ArrayList<bn> h = new ArrayList();
  
  private bi()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    FexApplication.a().registerReceiver(f, localIntentFilter);
  }
  
  public static bi a()
  {
    if (e == null) {
      e = new bi();
    }
    return e;
  }
  
  public static void b()
  {
    if (FexApplication.a().g()) {
      a();
    }
  }
  
  private bm c(u paramu)
  {
    bm localbm = new bm();
    a = f;
    bm.a(localbm, paramu.b());
    int i = a.indexOf("-");
    b = a.substring(0, i);
    return localbm;
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
      new Thread(new bk(this)).start();
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
      new Thread(new bl(this, localw)).start();
      return;
    }
  }
  
  public void a(bn parambn)
  {
    h.add(parambn);
  }
  
  public void a(u paramu)
  {
    paramu = c(paramu);
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((bn)localIterator.next()).a(paramu);
    }
  }
  
  public void b(bn parambn)
  {
    h.remove(parambn);
  }
  
  public void b(u paramu)
  {
    paramu = c(paramu);
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((bn)localIterator.next()).b(paramu);
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
 * Qualified Name:     com.estrongs.android.pop.app.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */