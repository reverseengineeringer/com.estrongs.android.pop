package com.estrongs.android.pop.app.b;

import android.util.Log;
import com.estrongs.a.a;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicInteger;

public class m
  extends Observable
  implements Runnable, Observer
{
  protected static int a = 30;
  private static final String b = m.class.getSimpleName();
  private ArrayList<f> c = null;
  private AtomicInteger d = new AtomicInteger(0);
  private boolean e = false;
  private c f;
  private boolean g = false;
  private boolean h = true;
  
  public m(c paramc)
  {
    f = paramc;
  }
  
  private void b(ArrayList<f> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0) || (e)) {
      return;
    }
    Vector localVector = f.b();
    int i = 0;
    for (;;)
    {
      if (i < localVector.size())
      {
        localObject = a.getCurrentTask();
        if (!e) {}
      }
      else
      {
        while ((!e) && (d.get() != 0)) {
          try
          {
            Thread.sleep(600L);
          }
          catch (InterruptedException paramArrayList) {}
        }
      }
      if ((localObject != null) && (((a)localObject).taskStopped())) {
        c.a().e();
      }
      Object localObject = (InetAddress)localVector.get(i);
      while (d.get() > a) {
        try
        {
          Thread.sleep(70L);
        }
        catch (InterruptedException localInterruptedException) {}
      }
      localObject = new p((InetAddress)localObject, paramArrayList);
      ((p)localObject).addObserver(this);
      localObject = new n(this, (Runnable)localObject);
      ((n)localObject).setPriority(1);
      ((n)localObject).start();
      i += 1;
    }
    d.set(0);
  }
  
  public void a(ArrayList<f> paramArrayList)
  {
    if (paramArrayList != null) {
      c = ((ArrayList)paramArrayList.clone());
    }
  }
  
  public boolean a()
  {
    return g;
  }
  
  public void b()
  {
    e = true;
  }
  
  public void run()
  {
    if (c == null)
    {
      Log.e(b, "ScanAllHosts run error, scan type is null");
      return;
    }
    g = true;
    if (h)
    {
      ArrayList localArrayList1 = (ArrayList)c.clone();
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        f localf = (f)localIterator.next();
        if (g == 0)
        {
          localArrayList2.add(localf);
          localArrayList1.remove(localf);
        }
      }
      b(localArrayList2);
      b(localArrayList1);
    }
    for (;;)
    {
      setChanged();
      notifyObservers();
      d.set(0);
      e = false;
      g = false;
      return;
      b(c);
    }
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if ((!(paramObservable instanceof p)) || (paramObject == null) || (!(paramObject instanceof o))) {}
    while (d != 0) {
      return;
    }
    setChanged();
    notifyObservers(paramObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */