package com.estrongs.android.pop.app.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.f.k;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.an;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class PerformanceAccelerateService
  extends Service
{
  private ArrayList<com.estrongs.android.pop.app.f.f> a = new ArrayList();
  private String b;
  private boolean c = false;
  private h d = null;
  private BroadcastReceiver e;
  private Handler f;
  private g g;
  private f h;
  private Map<String, aa> i;
  private a j;
  
  private void a()
  {
    try
    {
      i.a(this);
      d = new h(this);
      f = new Handler();
      b();
      g = new g(this, f);
      h = new f(this, f);
      if ((z.w) && (!FexApplication.a().g())) {
        FexApplication.a().a(new c(this));
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
    String str = com.estrongs.android.pop.a.f + "/";
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
    } while ((aa)i.get(e) != null);
    aa localaa = new aa(e);
    i.put(e, localaa);
    localaa.a(str);
    localaa.a(new e(this, paramv));
    localaa.c();
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
    if (e != null) {
      return;
    }
    e = new d(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    registerReceiver(e, localIntentFilter);
  }
  
  private void c()
  {
    if (e != null) {
      unregisterReceiver(e);
    }
  }
  
  private String d()
  {
    b = an.c();
    return b;
  }
  
  private void e()
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
      n.b().a(true);
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
    return d;
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c();
    startService(new Intent(this, PerformanceAccelerateService.class));
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (d == null)
    {
      a();
      g.a(a);
    }
    return 1;
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    if (com.estrongs.android.pop.app.f.c.a() != null) {
      com.estrongs.android.pop.app.f.c.a().a(null);
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