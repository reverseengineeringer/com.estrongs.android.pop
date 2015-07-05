package com.estrongs.android.pop.app.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.ESStatisticsActivity;
import com.estrongs.android.pop.app.b.k;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.y;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class PerformanceAccelerateService
  extends Service
{
  private ArrayList<com.estrongs.android.pop.app.b.f> a = new ArrayList();
  private String b;
  private boolean c = false;
  private i d = null;
  private BroadcastReceiver e;
  private Handler f;
  private h g;
  private g h;
  private Map<String, y> i;
  private a j;
  
  private void a()
  {
    try
    {
      com.estrongs.android.pop.esclasses.e.a(this);
      d = new i(this);
      f = new Handler();
      c();
      g = new h(this, f);
      h = new g(this, f);
      if ((z.w) && (!FexApplication.a().g())) {
        FexApplication.a().a(new d(this));
      }
      for (;;)
      {
        a.add(new k());
        return;
        h.a(60000L);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private void a(v paramv)
  {
    String str = com.estrongs.android.pop.a.d + "/";
    str = str + e.hashCode() + ".apk";
    if (new File(str).exists()) {}
    do
    {
      do
      {
        return;
      } while (w.a(f));
      if (i == null) {
        i = new HashMap();
      }
    } while ((y)i.get(e) != null);
    y localy = new y(e);
    i.put(e, localy);
    localy.a(str);
    localy.a(new f(this, paramv));
    localy.c();
  }
  
  private boolean a(long paramLong)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    try
    {
      long l1 = localSimpleDateFormat.parse("2014-06-20").getTime();
      long l2 = localSimpleDateFormat.parse("2014-07-01").getTime();
      long l3 = System.currentTimeMillis();
      if ((l3 < l1) || (l3 > l2)) {}
      while (l3 - paramLong <= 1728000000L) {
        return false;
      }
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private void b()
  {
    if ((cc.d()) && (System.currentTimeMillis() - ad.a(FexApplication.a()).ar() > 432000000L) && (ad.a(FexApplication.a()).aS() < 2))
    {
      Intent localIntent = new Intent(this, ESStatisticsActivity.class);
      localIntent.setFlags(343932928);
      startActivity(localIntent);
    }
  }
  
  private void c()
  {
    if (e != null) {
      return;
    }
    e = new e(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    registerReceiver(e, localIntentFilter);
  }
  
  private void d()
  {
    if (e != null) {
      unregisterReceiver(e);
    }
  }
  
  private String e()
  {
    b = ak.c();
    return b;
  }
  
  private void f()
  {
    v[] arrayOfv = n.b().c(this);
    if (arrayOfv != null)
    {
      int m = arrayOfv.length;
      int k = 0;
      while (k < m)
      {
        v localv = arrayOfv[k];
        if ((localv.b()) && (localv.c() == null)) {
          a(localv);
        }
        k += 1;
      }
    }
    if (n.b().a(this) > 86400000L)
    {
      n.b().c();
      h.a(60000L);
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if (d == null)
    {
      a();
      g.a(a);
    }
    if ((z.w) && (!FexApplication.a().g())) {
      FexApplication.a().a(new c(this));
    }
    for (;;)
    {
      return d;
      b();
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    d();
    startService(new Intent(this, PerformanceAccelerateService.class));
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (d == null)
    {
      a();
      g.a(a);
    }
    if ((!z.w) || (FexApplication.a().g())) {
      b();
    }
    return 1;
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    if (com.estrongs.android.pop.app.b.c.a() != null) {
      com.estrongs.android.pop.app.b.c.a().a(null);
    }
    j = null;
    return super.onUnbind(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.PerformanceAccelerateService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */