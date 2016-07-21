package com.dianxinos.dxservice.stat;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.System;
import android.util.Log;
import com.dianxinos.dxservice.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public final class e
{
  private static String a;
  private static Context b;
  private static b c;
  private static boolean d;
  private static int e;
  private static boolean f;
  private final Runnable g = new f(this);
  private final Runnable h = new g(this);
  private IntentFilter i = null;
  private BroadcastReceiver j = null;
  
  public e(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new b(b, "z");
    a = com.dianxinos.dxservice.a.h.a(paramContext).a();
    e = 0;
    f = false;
  }
  
  private void a(String paramString)
  {
    paramString = a.a(paramString).iterator();
    while (paramString.hasNext())
    {
      j localj = (j)paramString.next();
      if ((!a.a(localj)) && (a(localj)))
      {
        if (com.dianxinos.dxservice.a.c.c) {
          Log.d("stat.AppInfoService", "Success to putToDB with token : " + a + " packageName: " + localj.a());
        }
        a.b(localj);
      }
    }
  }
  
  private boolean a(j paramj)
  {
    r localr = b(paramj);
    try
    {
      boolean bool = c.a(localr);
      if ((bool) && (com.dianxinos.dxservice.a.c.c)) {
        Log.d("stat.AppInfoService", "Success to putToDB with token : " + a + " packageName: " + paramj.a());
      }
      return bool;
    }
    catch (Exception paramj)
    {
      if (com.dianxinos.dxservice.a.c.e) {
        Log.e("stat.AppInfoService", "Failed to push DbAppInfo into Datebase!", paramj);
      }
    }
    return false;
  }
  
  private r b(j paramj)
  {
    String str1 = u.a(b);
    if (str1 == null) {
      return null;
    }
    String str2 = u.a();
    String str3 = s.a(str2, str1);
    ContentResolver localContentResolver = b.getContentResolver();
    String str4 = Settings.System.getString(localContentResolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}");
    e = Settings.System.getInt(localContentResolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}", 0);
    if ((str4 != null) && (!str4.equals(str1))) {
      c.a(e);
    }
    if ((str4 == null) || (!str4.equals(str1)))
    {
      Settings.System.putString(localContentResolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}", str1);
      int k = e + 1;
      e = k;
      Settings.System.putInt(localContentResolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}", k);
    }
    return new r(paramj, str3, a, e, str2);
  }
  
  private void f()
  {
    if (i == null)
    {
      i = new IntentFilter("android.intent.action.PACKAGE_ADDED");
      i.addAction("android.intent.action.PACKAGE_REMOVED");
      i.addAction("android.intent.action.PACKAGE_REPLACED");
      i.addDataScheme("package");
    }
    if (j == null) {
      j = new h(this);
    }
    b.registerReceiver(j, i);
  }
  
  private void g()
  {
    if (j != null) {
      b.unregisterReceiver(j);
    }
  }
  
  private boolean h()
  {
    long l = b.getSharedPreferences("rt", 0).getLong("al", -1L);
    if ((c != null) && (c.a() > 20480)) {}
    do
    {
      return true;
      if (System.currentTimeMillis() - Long.valueOf(l).longValue() <= 1209600000L) {
        break;
      }
    } while ((c != null) && (!c.b()));
    j();
    return false;
  }
  
  private boolean i()
  {
    if (!com.dianxinos.dxservice.a.c.a(b)) {
      if (com.dianxinos.dxservice.a.c.c) {
        Log.d("stat.AppInfoService", "Network is unavailable!");
      }
    }
    do
    {
      return false;
      try
      {
        Object localObject = com.dianxinos.dxservice.a.c.a("appInfo", b);
        c localc = c.b(1000);
        String str1 = aa.b(localc.a());
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new BasicNameValuePair("token", a));
        String str2 = u.a(b);
        String str3 = s.a(u.a(), str2);
        localArrayList.add(new BasicNameValuePair("pu", str2));
        localArrayList.add(new BasicNameValuePair("ci", str3));
        localArrayList.add(new BasicNameValuePair("ap", s.a(str1, u.b())));
        boolean bool = new com.dianxinos.dxservice.a.f(b, (String)localObject, "DXStatisticAppInfo", "stat.AppInfoService").a(localArrayList);
        if (bool)
        {
          if (com.dianxinos.dxservice.a.c.c) {
            Log.d("stat.AppInfoService", "Success to reportAppInfo with maxRowId :" + localc.b());
          }
          c.a(localc.b());
          localObject = b.getSharedPreferences("rt", 0).edit();
          ((SharedPreferences.Editor)localObject).putLong("al", System.currentTimeMillis());
          ((SharedPreferences.Editor)localObject).commit();
        }
        return bool;
      }
      catch (Exception localException) {}
    } while (!com.dianxinos.dxservice.a.c.e);
    Log.e("stat.AppInfoService", "Can not report AppInfo!", localException);
    return false;
  }
  
  private void j()
  {
    a(new j(b, "beat"));
  }
  
  public void a()
  {
    if (com.dianxinos.dxservice.a.c.c) {
      Log.i("stat.AppInfoService", "Start!");
    }
    a.a(b);
    d = com.dianxinos.dxservice.a.c.d(b);
    if (!d)
    {
      if (com.dianxinos.dxservice.a.c.c) {
        Log.i("stat.AppInfoService", "Not the app to report!");
      }
      return;
    }
    if ((c != null) && (!c.b())) {
      com.dianxinos.dxservice.a.e.a(h);
    }
    com.dianxinos.dxservice.a.e.a(g);
    f();
  }
  
  public void b()
  {
    if (!d) {
      return;
    }
    if (com.dianxinos.dxservice.a.c.c) {
      Log.d("stat.AppInfoService", "Shutdown!");
    }
    g();
    com.dianxinos.dxservice.a.c.e(b);
  }
  
  public void c()
  {
    if (h()) {
      com.dianxinos.dxservice.a.e.a(h);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */