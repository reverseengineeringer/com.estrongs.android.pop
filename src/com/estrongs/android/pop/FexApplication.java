package com.estrongs.android.pop;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration.Builder;
import com.baidu.sapi2.SapiConfiguration.SmsLoginConfig;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.FastLoginFeature;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.Switch;
import com.estrongs.android.nativetool.NativeAuth;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.at;
import com.estrongs.android.util.h;
import com.estrongs.android.util.v;
import com.estrongs.fs.impl.local.l;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FexApplication
  extends Application
{
  private static FexApplication c = null;
  private static boolean o = false;
  boolean a = false;
  boolean b = false;
  private boolean d = false;
  private List<g> e;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private com.estrongs.android.pop.app.service.b j;
  private Handler k;
  private List<q> l;
  private boolean m;
  private long n = -1L;
  
  public static FexApplication a()
  {
    return c;
  }
  
  public static void a(Context paramContext)
  {
    if (!o) {}
    try
    {
      paramContext = new SapiConfiguration.Builder(paramContext).setProductLineInfo("esfb", "1", "3e504de3df373ce5e1080f3b9c33afba").fastLoginSupport(new FastLoginFeature[] { FastLoginFeature.SINA_WEIBO_WEBVIEW, FastLoginFeature.TX_QQ_WEBVIEW, FastLoginFeature.RENREN_WEBVIEW }).enableB2CSync(true).setRuntimeEnvironment(Domain.DOMAIN_ONLINE).initialShareStrategy(LoginShareStrategy.SILENT).smsLoginConfig(new SapiConfiguration.SmsLoginConfig(Switch.OFF, Switch.OFF, Switch.OFF)).debug(true).build();
      SapiAccountManager.getInstance().init(paramContext);
      o = true;
      return;
    }
    catch (Exception paramContext)
    {
      o = false;
    }
  }
  
  public static boolean e()
  {
    do
    {
      try
      {
        if ("Market".equalsIgnoreCase("Market")) {
          return false;
        }
        FexApplication localFexApplication = c;
        localObject = localFexApplication;
        if (localFexApplication != null) {
          continue;
        }
        localObject = c;
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
      bool = ((Boolean)new al(localObject).a("isUserAMonkey")).booleanValue();
      return bool;
    } while (localException != null);
    return false;
  }
  
  private void n()
  {
    try
    {
      
      if (!z.w)
      {
        d = true;
        return;
      }
      e = new ArrayList();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  private void o()
  {
    File localFile2 = getFilesDir();
    File localFile1 = Environment.getExternalStorageDirectory();
    if (localFile2 != null)
    {
      h.a(getFilesDir().getAbsolutePath());
      l.a(getFilesDir().getAbsolutePath());
    }
    for (;;)
    {
      if (localFile1 != null) {
        try
        {
          localFile1 = new File(a.e);
          if ((!localFile1.exists()) && (!localFile1.mkdirs())) {
            throw new Exception();
          }
        }
        catch (Exception localException1) {}
      }
      try
      {
        com.estrongs.android.util.be.a(getCacheDir().getAbsolutePath());
        com.estrongs.android.util.w.a(getCacheDir().getAbsolutePath());
        Object localObject = getCacheDir().getAbsolutePath();
        if (localFile2 != null)
        {
          str = localFile2.getAbsolutePath();
          label108:
          com.estrongs.fs.impl.j.b.a((String)localObject, str);
          if (localFile2 == null) {
            break label279;
          }
        }
        label232:
        label258:
        label265:
        label279:
        for (String str = localFile2.getAbsolutePath();; str = a.e)
        {
          at.a(str);
          return;
          localObject = getDir("files", 3);
          if (!((File)localObject).exists())
          {
            if (((File)localObject).mkdir()) {
              break;
            }
            break;
          }
          h.a(((File)localObject).getAbsolutePath());
          l.a(((File)localObject).getAbsolutePath());
          break;
          if (!b.d())
          {
            v.a("exteral database not writable");
            throw new Exception();
          }
          com.estrongs.android.util.be.a(a.e);
          com.estrongs.android.util.w.a(a.e);
          localObject = a.e;
          if (localFile2 != null)
          {
            str = localFile2.getAbsolutePath();
            com.estrongs.fs.impl.j.b.a((String)localObject, str);
            localObject = a.e;
            if (localFile2 == null) {
              break label258;
            }
            str = localFile2.getAbsolutePath();
            SPFileSystem.setPath((String)localObject, str);
            if (localFile2 == null) {
              break label265;
            }
          }
          for (str = localFile2.getAbsolutePath();; str = a.e)
          {
            at.a(str);
            return;
            str = a.e;
            break;
            str = a.e;
            break label232;
          }
          str = a.e;
          break label108;
        }
        return;
      }
      catch (Exception localException2) {}
    }
  }
  
  private void p()
  {
    SapiAccountManager.registerSilentShareListener(new e(this));
    SapiAccountManager.registerReceiveShareListener(new f(this));
  }
  
  public void a(com.estrongs.android.pop.app.service.b paramb)
  {
    j = paramb;
  }
  
  public void a(g paramg)
  {
    if (e != null) {
      e.add(paramg);
    }
  }
  
  /* Error */
  public void a(q paramq)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	com/estrongs/android/pop/FexApplication:l	Ljava/util/List;
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 59	com/estrongs/android/pop/FexApplication:l	Ljava/util/List;
    //   13: aload_1
    //   14: invokeinterface 302 2 0
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
  
  public void a(String paramString, Object paramObject)
  {
    try
    {
      k.post(new d(this, paramString, paramObject));
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
    boolean bool = d;
    d = paramBoolean;
    if ((!bool) && (paramBoolean) && (e != null))
    {
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).a();
      }
    }
  }
  
  /* Error */
  public void b(q paramq)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	com/estrongs/android/pop/FexApplication:l	Ljava/util/List;
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 59	com/estrongs/android/pop/FexApplication:l	Ljava/util/List;
    //   13: aload_1
    //   14: invokeinterface 337 2 0
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
    f = paramBoolean;
  }
  
  public boolean b()
  {
    return m;
  }
  
  public void c()
  {
    m = true;
    if ((n != -1L) && (System.currentTimeMillis() - n > 3000L)) {
      new Thread(new c(this)).start();
    }
  }
  
  public void c(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void d()
  {
    m = false;
    n = System.currentTimeMillis();
  }
  
  public void d(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void e(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void f()
  {
    if (e != null) {
      e.clear();
    }
  }
  
  public boolean g()
  {
    return d;
  }
  
  public Resources getResources()
  {
    return com.estrongs.android.pop.esclasses.k.a(super.getResources());
  }
  
  public boolean h()
  {
    return (g) && (!f);
  }
  
  public boolean i()
  {
    return (h) && (!f);
  }
  
  public boolean j()
  {
    return (i) && (!f);
  }
  
  /* Error */
  public void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	com/estrongs/android/pop/FexApplication:l	Ljava/util/List;
    //   6: astore_1
    //   7: aload_1
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 59	com/estrongs/android/pop/FexApplication:l	Ljava/util/List;
    //   13: invokeinterface 361 1 0
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
    if (j == null)
    {
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
      if (localFileExplorerActivity != null) {
        localFileExplorerActivity.i();
      }
    }
    return j;
  }
  
  public boolean m()
  {
    if (!b) {
      if ((!"Market".equalsIgnoreCase("Market")) || ((FileExplorerActivity.e != null) && (!"".equals(FileExplorerActivity.e)))) {
        break label55;
      }
    }
    label55:
    for (a = com.estrongs.android.pop.utils.w.a("com.android.vending");; a = false)
    {
      b = true;
      return a;
    }
  }
  
  public void onCreate()
  {
    c = this;
    ag.a();
    k = new Handler();
    try
    {
      com.estrongs.android.pop.esclasses.e.a(this);
      getResources();
      am.a(true);
      com.estrongs.android.pop.view.a.a(this);
      n();
      b.c();
      com.estrongs.android.ui.d.a.a(this);
      com.estrongs.android.d.f.a(this);
      com.estrongs.android.d.f.a(ad.a(this).s());
      Object localObject = new com.estrongs.fs.impl.h.b();
      com.estrongs.fs.d.a("http", (com.estrongs.fs.k)localObject);
      com.estrongs.fs.d.a("https", (com.estrongs.fs.k)localObject);
      com.estrongs.fs.d.a("flashair", new com.estrongs.fs.impl.f.c());
      localObject = new com.estrongs.fs.impl.g.a();
      ((com.estrongs.fs.impl.g.a)localObject).a("local", new com.estrongs.fs.impl.g.c(getContentResolver()));
      com.estrongs.fs.d.a("gallery", (com.estrongs.fs.k)localObject);
      com.estrongs.fs.d.a("adb", new com.estrongs.fs.impl.adb.c());
      com.estrongs.android.pop.app.be.b();
      o();
      com.estrongs.android.ui.notification.c.b();
      l = new ArrayList();
      localObject = ad.a(this);
      c(((ad)localObject).H());
      d(((ad)localObject).I());
      e(((ad)localObject).J());
      NativeAuth.a();
      NativeAuth.a = true;
      p();
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
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