package com.estrongs.android.ftp;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.estrongs.android.pop.ftp.ESFtpShortcut;

public class k
{
  private static k d = null;
  public Integer a = Integer.valueOf(0);
  boolean b = false;
  private ESFtpService c = null;
  private m e = null;
  private ServiceConnection f = new l(this);
  
  public static k a()
  {
    try
    {
      if (d == null) {
        d = new k();
      }
      k localk = d;
      return localk;
    }
    finally {}
  }
  
  public static void a(Context paramContext)
  {
    if (paramContext == null) {
      com.estrongs.android.util.l.e("ESFtpServer", "Failed to closeFtpServer - context is null.");
    }
    try
    {
      if (a().b().i())
      {
        Intent localIntent = new Intent(paramContext, ESFtpShortcut.class);
        localIntent.putExtra("mode", 2);
        paramContext.startActivity(localIntent);
      }
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public a a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    return c.a(paramString1, paramString2, paramInt, paramString3);
  }
  
  public void a(Context paramContext, m paramm)
  {
    synchronized (a)
    {
      Integer localInteger2 = a;
      a = Integer.valueOf(a.intValue() + 1);
      if (!b)
      {
        paramContext.bindService(new Intent(paramContext, ESFtpService.class), f, 1);
        e = paramm;
        return;
      }
    }
    paramm.a();
  }
  
  public void a(String paramString)
  {
    c.a(paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    c.a(paramString1, paramString2);
  }
  
  public a b()
  {
    return c.a();
  }
  
  public void b(Context paramContext)
  {
    synchronized (a)
    {
      Integer localInteger2 = a;
      a = Integer.valueOf(a.intValue() - 1);
      if ((!b) || (a.intValue() != 0)) {}
    }
  }
  
  public void c()
  {
    c.b();
  }
  
  public int d()
  {
    return c.c();
  }
  
  public boolean e()
  {
    return c.e();
  }
  
  public boolean f()
  {
    return c.f();
  }
  
  public boolean g()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */