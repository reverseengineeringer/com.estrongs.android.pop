package com.dianxinos.lockscreen.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a
{
  private static final boolean a = g.a;
  private static a b = null;
  private Context c;
  private List<d> d = new LinkedList();
  private c e;
  private BroadcastReceiver f = new b(this);
  
  private a(Context paramContext)
  {
    c = paramContext.getApplicationContext();
  }
  
  public static a a(Context paramContext)
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new a(paramContext);
      }
      return b;
    }
    finally {}
  }
  
  private void a(Intent paramIntent)
  {
    b(paramIntent);
  }
  
  private void a(c paramc)
  {
    Object localObject2 = new LinkedList();
    synchronized (d)
    {
      ((List)localObject2).addAll(d);
      ??? = ((List)localObject2).iterator();
      while (((Iterator)???).hasNext())
      {
        localObject2 = (d)((Iterator)???).next();
        if (localObject2 != null) {
          ((d)localObject2).a(paramc);
        }
      }
    }
  }
  
  private void b(Intent paramIntent)
  {
    c localc = new c();
    a = paramIntent.getIntExtra("level", 0);
    b = paramIntent.getIntExtra("scale", 100);
    c = paramIntent.getIntExtra("plugged", 0);
    d = paramIntent.getIntExtra("status", 1);
    int i;
    if (b < 1)
    {
      i = a;
      c.a(localc, i);
      if ((c.a(localc) < 0) || (c.a(localc) > 100)) {
        break label123;
      }
      e = c.a(localc);
    }
    for (;;)
    {
      e = localc;
      a(localc);
      return;
      i = a * 100 / b;
      break;
      label123:
      if (c.a(localc) < 0) {
        e = 0;
      } else if (c.a(localc) > 100) {
        e = 100;
      }
    }
  }
  
  private void c()
  {
    Object localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("android.intent.action.BATTERY_CHANGED");
    localObject = c.registerReceiver(f, (IntentFilter)localObject);
    if (localObject != null) {
      b((Intent)localObject);
    }
    if (g.a) {
      g.b("BatteryInfoTracker", "BatteryInfoTracker, service started");
    }
  }
  
  private void d()
  {
    try
    {
      c.unregisterReceiver(f);
      if (g.a) {
        g.b("BatteryInfoTracker", "BatteryInfoTracker, service stopped");
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public c a()
  {
    return e;
  }
  
  public void a(d paramd)
  {
    synchronized (d)
    {
      if (d.size() == 0) {
        c();
      }
      if (!d.contains(paramd)) {
        d.add(paramd);
      }
      if (e != null) {
        paramd.a(e);
      }
      return;
    }
  }
  
  public void b(d paramd)
  {
    synchronized (d)
    {
      d.remove(paramd);
      if (d.size() == 0) {
        d();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */