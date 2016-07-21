package com.duapps.ad.base;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.content.r;
import android.text.TextUtils;
import com.duapps.ad.coin.CoinManager;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.a.b;
import com.duapps.ad.stats.c;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.q;
import com.duapps.ad.stats.u;
import java.net.URI;

public class DuAdNetwork
{
  public static boolean a = false;
  private static DuAdNetwork.Region b = DuAdNetwork.Region.OVERSEA;
  private static DuAdNetwork c;
  private static g d;
  private static boolean f = false;
  private static final Object g = new Object();
  private static int h = 500;
  private static volatile boolean j = false;
  private String e;
  private Context i;
  
  private DuAdNetwork(Context paramContext)
  {
    i = paramContext;
    h();
    q.a(paramContext);
  }
  
  public static String a()
  {
    if (d != null) {
      return d.a();
    }
    return null;
  }
  
  public static void a(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null)) {
      if (l.a()) {
        l.c("DuAdNetwork", "Params error.");
      }
    }
    boolean bool;
    do
    {
      String str;
      do
      {
        return;
        str = paramIntent.getAction();
        if ("android.intent.action.PACKAGE_ADDED".equals(str)) {
          break;
        }
      } while (!l.a());
      l.c("DuAdNetwork", "Not ACTION_PACKAGE_ADDED: " + str);
      return;
      bool = paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false);
      if (l.a()) {
        l.c("DuAdNetwork", "ACTION_PACKAGE_ADDED, replaceing? " + bool);
      }
    } while (bool);
    b(paramContext, URI.create(paramIntent.getDataString()).getSchemeSpecificPart());
  }
  
  static void a(Context paramContext, p paramp)
  {
    if ((paramContext == null) || (paramp == null))
    {
      l.c("DuAdNetwork", "context or record is null");
      return;
    }
    an.a().a(new f(paramContext, paramp));
  }
  
  public static void a(Context paramContext, String paramString)
  {
    ag.a(paramContext).a(paramString);
    try
    {
      if (c == null) {
        c = new DuAdNetwork(paramContext.getApplicationContext());
      }
      return;
    }
    finally {}
  }
  
  public static void a(String paramString)
  {
    if ("prod".equals(paramString)) {
      a = false;
    }
    for (;;)
    {
      l.a(a);
      b.a(a);
      t.a(paramString);
      q.a(paramString);
      CoinManager.a(paramString);
      return;
      if ("dev".equals(paramString)) {
        a = true;
      } else if ("test".equals(paramString)) {
        a = true;
      }
    }
  }
  
  private static void b(Context paramContext, String paramString)
  {
    t localt = t.a(paramContext);
    p localp = localt.c(paramString);
    if (localp == null)
    {
      if (l.a()) {
        l.c("DuAdNetwork", "Non-click item, skip.");
      }
      c(paramContext, paramString);
      if (!e()) {}
    }
    do
    {
      return;
      localt.d(paramString);
      return;
      u.f(paramContext, localp);
      if (localp.q())
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("pkgName", paramString);
        localIntent.putExtra("cate", gu);
        localIntent.setAction("com.dianxinos.common.toolbox.action.INSTALL");
        r.a(paramContext).a(localIntent);
      }
      if ((e()) && (localp.b() > 0))
      {
        localt.e(paramString);
        a(paramContext, localp);
      }
    } while ((e()) && (localp.b() > 0));
    localt.d(paramString);
  }
  
  public static DuAdNetwork c()
  {
    if (c == null) {
      throw new IllegalStateException("Please call init first.");
    }
    return c;
  }
  
  private static void c(Context paramContext, String paramString)
  {
    p localp = t.a(paramContext).f(paramString);
    if (localp == null) {}
    do
    {
      return;
      l.c("DuAdNetwork", "TiggerPreParse:packageName:" + paramString + ";id=" + localp.c() + ";preParse=" + localp.n());
    } while (localp.n() != 1);
    localp.a(true);
    new c(paramContext).e(localp, localp.j());
  }
  
  @Deprecated
  public static boolean d()
  {
    return b == DuAdNetwork.Region.OVERSEA;
  }
  
  public static boolean e()
  {
    return f;
  }
  
  private void h()
  {
    try
    {
      e = i.getPackageManager().getApplicationInfo(i.getPackageName(), 128).metaData.getString("app_license");
      if (TextUtils.isEmpty(e)) {
        throw new IllegalArgumentException("license should not null");
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
  }
  
  public String b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.DuAdNetwork
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */