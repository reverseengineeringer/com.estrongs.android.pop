package com.estrongs.android.j;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.baidu.mobstat.StatService;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.z;

public class a
{
  private static String a = "Google Market";
  private boolean b = true;
  private Context c = null;
  
  public a(Context paramContext)
  {
    c = paramContext;
    a();
  }
  
  public static void a()
  {
    String str;
    if ((com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Market")) || (com.estrongs.android.pop.view.a.a.equalsIgnoreCase("web"))) {
      if ((com.estrongs.android.pop.view.a.b != null) && (com.estrongs.android.pop.view.a.b.length() > 0))
      {
        str = com.estrongs.android.pop.view.a.b;
        if (str.equalsIgnoreCase("Market")) {
          break label99;
        }
      }
    }
    for (;;)
    {
      a = str;
      StatService.setAppChannel(a);
      return;
      str = com.estrongs.android.pop.view.a.a;
      break;
      if ((com.estrongs.android.pop.view.a.a.equalsIgnoreCase("oem")) && (z.b != null))
      {
        str = z.b;
        break;
      }
      str = com.estrongs.android.pop.view.a.a;
      break;
      label99:
      str = "Google Market";
    }
  }
  
  private boolean b(String paramString, long paramLong)
  {
    boolean bool = false;
    long l = c.getSharedPreferences("Event_DB", 0).getLong(paramString, 0L);
    if ((System.currentTimeMillis() - l > paramLong) || (l == 0L)) {
      bool = true;
    }
    return bool;
  }
  
  private boolean d(String paramString)
  {
    return true;
  }
  
  private boolean e(String paramString)
  {
    return true;
  }
  
  public void a(String paramString)
  {
    if ((b) && (FexApplication.a().g()) && (d(paramString))) {
      StatService.onEvent(c, paramString, paramString);
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = c.getSharedPreferences("Event_DB", 0).edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }
  
  public void b(String paramString)
  {
    if (FexApplication.a().g()) {
      StatService.onEvent(c, paramString, paramString);
    }
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = ad.a(FexApplication.a()).ar();
      try
      {
        l = ad.a(FexApplication.a()).as();
        if ((!bool) && (l != 0L) && (System.currentTimeMillis() - l < 1296000000L))
        {
          b = false;
          if ((!b) || (!FexApplication.a().g())) {
            break label111;
          }
          StatService.onResume(c);
          ad.a(FexApplication.a()).d(System.currentTimeMillis());
          return true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
          long l = 0L;
          continue;
          b = true;
        }
      }
      return false;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public void c(String paramString)
  {
    if ((b) && (FexApplication.a().g()) && (e(paramString)) && (b(paramString, 86400000L)))
    {
      StatService.onEvent(c, paramString, paramString);
      a(paramString, System.currentTimeMillis());
    }
  }
  
  public boolean c()
  {
    try
    {
      if ((b) && (FexApplication.a().g()))
      {
        StatService.onPause(c);
        return true;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */