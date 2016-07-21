package com.dianxinos.lockscreen;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.dianxinos.lockscreen.ad.AdvertDataMgr;
import java.util.concurrent.atomic.AtomicBoolean;

public class c
{
  private static c a;
  private Context b;
  private AtomicBoolean c;
  private boolean d = false;
  private f e;
  private boolean f = true;
  private h g;
  private g h;
  private r i;
  private String j;
  
  private c(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new AtomicBoolean(false);
    b(paramContext);
  }
  
  public static c a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new c(paramContext.getApplicationContext());
      }
      return a;
    }
    finally {}
  }
  
  private void a(Intent paramIntent)
  {
    boolean bool1;
    boolean bool2;
    if (paramIntent != null)
    {
      paramIntent = paramIntent.getAction();
      bool1 = TextUtils.equals(paramIntent, "android.intent.action.SCREEN_ON");
      bool2 = TextUtils.equals(paramIntent, "android.intent.action.SCREEN_OFF");
      if ((bool1) || (bool2)) {
        break label37;
      }
    }
    label37:
    label111:
    label125:
    do
    {
      do
      {
        do
        {
          return;
          paramIntent = null;
          break;
          if (bool2)
          {
            AdvertDataMgr.a(b).g();
            f = true;
          }
          if (bool1)
          {
            if (!f) {
              break label111;
            }
            f = false;
          }
          com.dianxinos.lockscreen.c.c localc = com.dianxinos.lockscreen.c.a.a(b).a();
          if ((localc != null) && (c != 0)) {
            break label125;
          }
        } while (!com.dianxinos.lockscreen.c.g.a);
        com.dianxinos.lockscreen.c.g.a("ChargingManager", "battery data null or is not charging, remove lockscreen");
        return;
      } while (!com.dianxinos.lockscreen.c.g.a);
      com.dianxinos.lockscreen.c.g.a("ChargingManager", "Screen is on, and LockScreen want to show twice");
      return;
      if (com.dianxinos.lockscreen.c.e.c(b))
      {
        if (com.dianxinos.lockscreen.c.g.a) {
          com.dianxinos.lockscreen.c.g.a("ChargingManager", "calling, remove lockscreen");
        }
        b.b(b);
        return;
      }
    } while ((!paramIntent.equals("android.intent.action.SCREEN_OFF")) && (!paramIntent.equals("android.intent.action.SCREEN_ON")));
    if (com.dianxinos.lockscreen.c.g.a) {
      com.dianxinos.lockscreen.c.g.a("ChargingManager", "try show lockscreen");
    }
    b.a(b);
  }
  
  private void a(com.dianxinos.lockscreen.c.c paramc)
  {
    boolean bool2 = d;
    boolean bool1;
    if ((paramc != null) && (c != 0))
    {
      bool1 = true;
      d = bool1;
      if (d) {
        break label47;
      }
      a.a(b).a(0);
    }
    label47:
    do
    {
      return;
      bool1 = false;
      break;
      i locali = i.a(b);
      long l = SystemClock.elapsedRealtime();
      locali.a(c, a, b, l, false);
    } while ((bool2) || (!d));
    a.a(b).a(0);
    if ((!com.dianxinos.lockscreen.c.e.a()) && (com.dianxinos.lockscreen.c.e.b(b)) && (a.a(b).a()))
    {
      com.dianxinos.lockscreen.c.g.a("ChargingManager", "start lockSreen");
      b.a(b);
    }
    AdvertDataMgr.a(b).g();
  }
  
  public static void a(boolean paramBoolean)
  {
    com.dianxinos.lockscreen.c.g.a = paramBoolean;
  }
  
  private void b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = metaData.getString("du_lockscreen_action");
        if ((TextUtils.isEmpty(paramContext)) || ((!paramContext.equals("com.du.action.private")) && (!paramContext.equals("com.du.action.public")))) {
          throw new IllegalArgumentException("Do you define du_lockscreen_action meta-data in your AndroidManifest correctly?");
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      if (com.dianxinos.lockscreen.c.g.a) {
        com.dianxinos.lockscreen.c.g.a("ChargingManager", "LockScreen", paramContext);
      }
    }
  }
  
  r a()
  {
    return i;
  }
  
  public void a(f paramf)
  {
    if (c.getAndSet(true)) {}
    do
    {
      return;
      if (paramf == null) {
        throw new IllegalArgumentException("LockScreenProvider shouldn`t be null, you may need implements this interface");
      }
      if (com.dianxinos.lockscreen.c.g.a) {
        com.dianxinos.lockscreen.c.g.a("ChargingManager", "start LockScreen now");
      }
      com.dianxinos.lockscreen.b.c.a(b).a();
      e = paramf;
      com.dianxinos.lockscreen.c.f.a = e.b();
      com.dianxinos.lockscreen.c.a.a(b).a(new d(this));
      paramf = new IntentFilter();
      paramf.addAction("android.intent.action.SCREEN_ON");
      paramf.addAction("android.intent.action.SCREEN_OFF");
      try
      {
        b.registerReceiver(new e(this), paramf);
        return;
      }
      catch (Throwable paramf) {}
    } while (!com.dianxinos.lockscreen.c.g.a);
    com.dianxinos.lockscreen.c.g.a("ChargingManager", "LockScreen", paramf);
  }
  
  public void a(g paramg)
  {
    h = paramg;
  }
  
  public void a(h paramh)
  {
    g = paramh;
  }
  
  public void a(r paramr)
  {
    i = paramr;
  }
  
  void a(Boolean paramBoolean)
  {
    if (h != null)
    {
      if (paramBoolean.booleanValue()) {
        h.a();
      }
    }
    else {
      return;
    }
    h.b();
  }
  
  public void a(String paramString)
  {
    j = paramString;
  }
  
  v b()
  {
    if (e != null)
    {
      v localv = e.a();
      if (localv != null) {
        return localv;
      }
      return new o(b);
    }
    return null;
  }
  
  void b(Boolean paramBoolean)
  {
    if (g != null) {
      g.a(paramBoolean);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    a.a(b).b(paramBoolean);
  }
  
  public boolean c()
  {
    return a.a(b).a();
  }
  
  String d()
  {
    if (TextUtils.isEmpty(j)) {
      j = b.getApplicationInfo().loadLabel(b.getPackageManager()).toString();
    }
    return j;
  }
  
  public com.dianxinos.lockscreen.a.c e()
  {
    com.dianxinos.lockscreen.a.c localc = e.c();
    if (localc == null) {
      throw new IllegalArgumentException("real time card can`t be null");
    }
    return localc;
  }
  
  public com.dianxinos.lockscreen.a.b f()
  {
    com.dianxinos.lockscreen.a.b localb = e.d();
    if (localb == null) {
      throw new IllegalArgumentException("progress card can`t be null");
    }
    return localb;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */