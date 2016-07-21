package com.estrongs.android.pop;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.AlarmManager;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import android.support.multidex.MultiDexApplication;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration.Builder;
import com.baidu.sapi2.SapiConfiguration.SmsLoginConfig;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.FastLoginFeature;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.Switch;
import com.estrongs.android.nativetool.NativeAuth;
import com.estrongs.android.pop.app.ReportAliveReceiver;
import com.estrongs.android.pop.app.bi;
import com.estrongs.android.pop.app.messagebox.n;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.esclasses.p;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.scanner.service.FileScannerService;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.ax;
import com.estrongs.android.util.bm;
import com.estrongs.android.util.x;
import com.estrongs.android.util.y;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.u;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FexApplication
  extends MultiDexApplication
  implements com.estrongs.android.pop.app.d.b
{
  public static boolean a = true;
  private static FexApplication e = null;
  private static boolean r = false;
  boolean b = false;
  boolean c = false;
  Application.ActivityLifecycleCallbacks d = new g(this);
  private boolean f = false;
  private PackageManager g;
  private List<h> h;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  private com.estrongs.android.pop.app.service.b m;
  private Handler n;
  private List<q> o;
  private boolean p;
  private long q = -1L;
  
  public static FexApplication a()
  {
    return e;
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    if (paramContext == null) {
      return null;
    }
    paramContext = paramContext.getRunningAppProcesses();
    if (paramContext == null) {
      return null;
    }
    paramContext = paramContext.iterator();
    while (paramContext.hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
      if (pid == paramInt) {
        return processName;
      }
    }
    return null;
  }
  
  public static void a(Context paramContext)
  {
    if (!r) {}
    try
    {
      paramContext = new SapiConfiguration.Builder(paramContext).setProductLineInfo("esfb", "1", "3e504de3df373ce5e1080f3b9c33afba").fastLoginSupport(new FastLoginFeature[] { FastLoginFeature.SINA_WEIBO_WEBVIEW, FastLoginFeature.TX_QQ_WEBVIEW, FastLoginFeature.RENREN_WEBVIEW }).enableB2CSync(true).setRuntimeEnvironment(Domain.DOMAIN_ONLINE).initialShareStrategy(LoginShareStrategy.SILENT).smsLoginConfig(new SapiConfiguration.SmsLoginConfig(Switch.OFF, Switch.OFF, Switch.OFF)).debug(true).build();
      SapiAccountManager.getInstance().init(paramContext);
      r = true;
      return;
    }
    catch (Exception paramContext)
    {
      r = false;
    }
  }
  
  public static boolean e()
  {
    do
    {
      try
      {
        if (com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Market")) {
          return false;
        }
        FexApplication localFexApplication = e;
        localObject = localFexApplication;
        if (localFexApplication != null) {
          continue;
        }
        localObject = e;
      }
      catch (Exception localException)
      {
        Object localObject;
        boolean bool;
        return false;
      }
      localObject = (ActivityManager)((Context)localObject).getSystemService("activity");
      if (localObject == null) {
        return false;
      }
      bool = ((Boolean)new ao(localObject).a("isUserAMonkey")).booleanValue();
      return bool;
    } while (localException != null);
    return false;
  }
  
  private void p()
  {
    try
    {
      
      if (!z.w)
      {
        f = true;
        return;
      }
      h = new ArrayList();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  private void q()
  {
    File localFile2 = getFilesDir();
    File localFile1 = Environment.getExternalStorageDirectory();
    if (localFile2 != null)
    {
      com.estrongs.android.util.g.a(getFilesDir().getAbsolutePath());
      m.a(getFilesDir().getAbsolutePath());
    }
    for (;;)
    {
      if (localFile1 != null) {
        try
        {
          localFile1 = new File(a.a);
          if ((localFile1.exists()) && (localFile1.isFile()))
          {
            localFile1.delete();
            if (!localFile1.mkdir()) {
              throw new Exception();
            }
          }
        }
        catch (Exception localException1) {}
      }
      try
      {
        bm.a(getCacheDir().getAbsolutePath());
        y.a(getCacheDir().getAbsolutePath());
        Object localObject2 = getCacheDir().getAbsolutePath();
        if (localFile2 != null)
        {
          localObject1 = localFile2.getAbsolutePath();
          label120:
          com.estrongs.fs.impl.o.b.a((String)localObject2, (String)localObject1);
          if (localFile2 == null) {
            break label325;
          }
        }
        label278:
        label304:
        label311:
        label325:
        for (Object localObject1 = localFile2.getAbsolutePath();; localObject1 = a.g)
        {
          ax.a((String)localObject1);
          return;
          localObject2 = getDir("files", 3);
          if (!((File)localObject2).exists())
          {
            if (((File)localObject2).mkdir()) {
              break;
            }
            break;
          }
          com.estrongs.android.util.g.a(((File)localObject2).getAbsolutePath());
          m.a(((File)localObject2).getAbsolutePath());
          break;
          localObject1 = new File(a.g);
          if ((!((File)localObject1).exists()) && (!((File)localObject1).mkdirs())) {
            throw new Exception();
          }
          if (!b.d())
          {
            x.a("exteral database not writable");
            throw new Exception();
          }
          bm.a(a.g);
          y.a(a.g);
          localObject2 = a.g;
          if (localFile2 != null)
          {
            localObject1 = localFile2.getAbsolutePath();
            com.estrongs.fs.impl.o.b.a((String)localObject2, (String)localObject1);
            localObject2 = a.g;
            if (localFile2 == null) {
              break label304;
            }
            localObject1 = localFile2.getAbsolutePath();
            SPFileSystem.setPath((String)localObject2, (String)localObject1);
            if (localFile2 == null) {
              break label311;
            }
          }
          for (localObject1 = localFile2.getAbsolutePath();; localObject1 = a.g)
          {
            ax.a((String)localObject1);
            return;
            localObject1 = a.g;
            break;
            localObject1 = a.g;
            break label278;
          }
          localObject1 = a.g;
          break label120;
        }
        return;
      }
      catch (Exception localException2) {}
    }
  }
  
  private void r()
  {
    SapiAccountManager.registerSilentShareListener(new e(this));
    SapiAccountManager.registerReceiveShareListener(new f(this));
  }
  
  private void s()
  {
    com.estrongs.android.pop.view.a.a = com.estrongs.android.pop.utils.a.a(a(), "oem");
    com.estrongs.android.pop.view.a.b = com.estrongs.android.pop.utils.a.a(a(), "channel");
  }
  
  private void t()
  {
    n.a(this).a("prod");
    com.dianxinos.dxservice.core.e.a("others");
    try
    {
      com.dianxinos.dxservice.core.e.b("prod");
      u();
      n.a(getApplicationContext()).a();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  private void u()
  {
    com.dianxinos.library.notify.g localg = new com.dianxinos.library.notify.g();
    a = getApplicationContext();
    b = false;
    e = "others";
    com.dianxinos.library.notify.c.a(localg);
  }
  
  private void v()
  {
    com.estrongs.android.k.d locald = new com.estrongs.android.k.d("lock_realtimemonitor");
    com.estrongs.android.k.h.a().a(locald);
    locald = new com.estrongs.android.k.d("lock_nomedia");
    com.estrongs.android.k.h.a().a(locald);
  }
  
  public List<ApplicationInfo> a(int paramInt)
  {
    try
    {
      List localList = getPackageManager().getInstalledApplications(paramInt);
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(com.estrongs.android.pop.app.service.b paramb)
  {
    m = paramb;
  }
  
  public void a(h paramh)
  {
    if (h != null) {
      h.add(paramh);
    }
  }
  
  /* Error */
  public void a(q paramq)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/estrongs/android/pop/FexApplication:o	Ljava/util/List;
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 116	com/estrongs/android/pop/FexApplication:o	Ljava/util/List;
    //   13: aload_1
    //   14: invokeinterface 434 2 0
    //   19: pop
    //   20: aload_2
    //   21: monitorexit
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_2
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	FexApplication
    //   0	35	1	paramq	q
    // Exception table:
    //   from	to	target	type
    //   9	22	25	finally
    //   26	28	25	finally
    //   2	9	30	finally
    //   28	30	30	finally
  }
  
  public void a(Runnable paramRunnable)
  {
    n.post(paramRunnable);
  }
  
  public void a(String paramString, Object paramObject)
  {
    try
    {
      n.post(new d(this, paramString, paramObject));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool = f;
    f = paramBoolean;
    if ((!bool) && (paramBoolean) && (h != null))
    {
      Iterator localIterator = h.iterator();
      while (localIterator.hasNext()) {
        ((h)localIterator.next()).a();
      }
    }
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    android.support.multidex.a.a(this);
  }
  
  public List<PackageInfo> b(int paramInt)
  {
    try
    {
      List localList = getPackageManager().getInstalledPackages(paramInt);
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void b(q paramq)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/estrongs/android/pop/FexApplication:o	Ljava/util/List;
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 116	com/estrongs/android/pop/FexApplication:o	Ljava/util/List;
    //   13: aload_1
    //   14: invokeinterface 468 2 0
    //   19: pop
    //   20: aload_2
    //   21: monitorexit
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_2
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	FexApplication
    //   0	35	1	paramq	q
    // Exception table:
    //   from	to	target	type
    //   9	22	25	finally
    //   26	28	25	finally
    //   2	9	30	finally
    //   28	30	30	finally
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public boolean b()
  {
    return p;
  }
  
  public void c()
  {
    p = true;
    if ((q != -1L) && (System.currentTimeMillis() - q > 3000L)) {
      new Thread(new c(this)).start();
    }
  }
  
  public void c(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void d()
  {
    p = false;
    q = System.currentTimeMillis();
  }
  
  public void d(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void e(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public void f()
  {
    if (h != null) {
      h.clear();
    }
  }
  
  public boolean g()
  {
    return f;
  }
  
  public PackageManager getPackageManager()
  {
    try
    {
      if (g == null) {
        g = super.getPackageManager();
      }
      PackageManager localPackageManager = g;
      return localPackageManager;
    }
    finally {}
  }
  
  public Resources getResources()
  {
    return p.a(super.getResources());
  }
  
  public boolean h()
  {
    return (j) && (!i);
  }
  
  public boolean i()
  {
    return (k) && (!i);
  }
  
  public boolean j()
  {
    return (l) && (!i);
  }
  
  /* Error */
  public void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/estrongs/android/pop/FexApplication:o	Ljava/util/List;
    //   6: astore_1
    //   7: aload_1
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 116	com/estrongs/android/pop/FexApplication:o	Ljava/util/List;
    //   13: invokeinterface 491 1 0
    //   18: aload_1
    //   19: monitorexit
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: astore_2
    //   24: aload_1
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	FexApplication
    //   28	4	1	localObject1	Object
    //   23	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	20	23	finally
    //   24	26	23	finally
    //   2	9	28	finally
    //   26	28	28	finally
  }
  
  public com.estrongs.android.pop.app.service.b l()
  {
    if (m == null)
    {
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
      if (localFileExplorerActivity != null) {
        localFileExplorerActivity.k();
      }
    }
    return m;
  }
  
  public boolean m()
  {
    if (!c) {
      if ((!com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Market")) || ((com.estrongs.android.pop.view.a.b != null) && (!"".equals(com.estrongs.android.pop.view.a.b)))) {
        break label56;
      }
    }
    label56:
    for (b = w.a("com.android.vending");; b = false)
    {
      c = true;
      return b;
    }
  }
  
  public Context n()
  {
    return this;
  }
  
  public void o()
  {
    ad localad = ad.a(this);
    c(localad.I());
    d(localad.J());
    e(localad.K());
    com.estrongs.android.h.f.a(localad.t());
  }
  
  public void onCreate()
  {
    super.onCreate();
    e = this;
    Object localObject = a(this, Process.myPid());
    if ((localObject != null) && (((String)localObject).equals(".esfm")))
    {
      b.c();
      u();
      return;
    }
    ai.b(this).c();
    com.b.a.a.a(e);
    s();
    ak.a();
    n = new Handler();
    try
    {
      i.a(this);
      getResources();
      ap.a(true);
      com.estrongs.android.pop.view.a.a(this);
      p();
      b.c();
      com.estrongs.android.ui.d.g.a(this);
      com.estrongs.android.h.f.a(this);
      com.estrongs.android.h.f.a(ad.a(this).t());
      localObject = new com.estrongs.fs.impl.m.b();
      com.estrongs.fs.d.a("http", (u)localObject);
      com.estrongs.fs.d.a("https", (u)localObject);
      com.estrongs.fs.d.a("flashair", new com.estrongs.fs.impl.k.c());
      localObject = new com.estrongs.fs.impl.l.a();
      ((com.estrongs.fs.impl.l.a)localObject).a("local", new com.estrongs.fs.impl.l.c(getContentResolver()));
      com.estrongs.fs.d.a("gallery", (u)localObject);
      com.estrongs.fs.d.a("adb", new com.estrongs.fs.impl.adb.c());
      com.estrongs.fs.d.c();
      com.estrongs.fs.d.a(ap.bP("flashair://"), new com.estrongs.fs.impl.k.c());
      com.estrongs.fs.d.a(ap.bP("search://"), com.estrongs.fs.impl.s.b.a());
      bi.b();
      com.estrongs.android.i.a.a();
      q();
      com.estrongs.android.ui.notification.d.b();
      o = new ArrayList();
      localObject = ad.a(this);
      c(((ad)localObject).I());
      d(((ad)localObject).J());
      e(((ad)localObject).K());
      NativeAuth.a();
      NativeAuth.a = true;
      r();
      com.estrongs.android.pop.app.ad.a.a().a(this);
      com.estrongs.android.pop.app.ad.a.a.a().a(this);
      com.estrongs.android.j.c.a(this).c();
      com.estrongs.android.c.c.a.a(this);
      localObject = (AlarmManager)getSystemService("alarm");
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(this, 0, new Intent(this, ReportAliveReceiver.class), 134217728);
      ((AlarmManager)localObject).cancel(localPendingIntent);
      ((AlarmManager)localObject).setRepeating(0, System.currentTimeMillis() + 86400000, 86400000, localPendingIntent);
      com.estrongs.android.c.b.a.a(this);
      v();
      t();
      com.estrongs.android.pop.app.a.a.a(this);
      FileScannerService.a(this);
      registerActivityLifecycleCallbacks(d);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    com.estrongs.android.h.a.e.c();
  }
  
  public void sendBroadcast(Intent paramIntent)
  {
    try
    {
      super.sendBroadcast(paramIntent);
      return;
    }
    catch (Exception paramIntent) {}
  }
  
  public void sendBroadcast(Intent paramIntent, String paramString)
  {
    try
    {
      super.sendBroadcast(paramIntent, paramString);
      return;
    }
    catch (Exception paramIntent) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.FexApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */