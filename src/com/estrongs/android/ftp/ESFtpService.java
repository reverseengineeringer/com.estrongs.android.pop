package com.estrongs.android.ftp;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.IBinder;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.l;
import java.net.InetAddress;

public class ESFtpService
  extends Service
{
  private static boolean d = true;
  Handler a = new e(this);
  d b = new f(this);
  private final IBinder c = new g(this);
  private int e = 0;
  
  private String a(int paramInt)
  {
    Resources localResources = getResources();
    String str2 = com.estrongs.android.pop.esclasses.e.b(paramInt);
    String str1 = str2;
    if (str2 == null) {
      str1 = (String)localResources.getText(paramInt);
    }
    return str1;
  }
  
  private void g()
  {
    if (a.e() != null) {
      ej = null;
    }
    a.removeMessages(1);
    a.removeMessages(2);
    b();
  }
  
  public a a()
  {
    return a.e();
  }
  
  a a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    a.a(paramString1, paramString2, paramInt, paramString3);
    if (a.e() == null) {
      return null;
    }
    ej = b;
    return a.e();
  }
  
  public void a(int paramInt, String paramString)
  {
    try
    {
      NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
      if (localNotificationManager != null)
      {
        if ((a.e() == null) || (d))
        {
          localNotificationManager.cancel(37219999);
          e = 0;
          return;
        }
        Notification localNotification = new Notification();
        tickerText = a(2131427655);
        when = System.currentTimeMillis();
        if (paramInt == 0) {
          icon = 2130837669;
        }
        for (;;)
        {
          flags |= 0x2;
          String str = a(2131427655);
          Intent localIntent = new Intent(this, ShowDialogActivity.class);
          localIntent.putExtra("stop_ftp_server", true);
          localNotification.setLatestEventInfo(this, str, paramString, PendingIntent.getActivity(this, 0, localIntent, 268435456));
          localNotificationManager.notify(37219999, localNotification);
          return;
          if (paramInt == 1) {
            icon = 2130837668;
          } else if (paramInt == 2) {
            icon = 2130837670;
          } else if (paramInt == 3) {
            icon = 2130837671;
          }
        }
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void a(String paramString)
  {
    if (a.e() == null) {
      return;
    }
    a.e().a(paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (a.e() == null) {
      return;
    }
    a.e().a(paramString1, paramString2);
  }
  
  public void b()
  {
    a.j();
    d();
    l.b();
  }
  
  public int c()
  {
    if (a.e() == null) {
      return 1;
    }
    a.f = ad.a(this).W();
    int i = a.e().a(this);
    if (i == 0) {}
    for (;;)
    {
      try
      {
        d = false;
        localObject = null;
        a locala = a.e();
        if (locala == null) {
          continue;
        }
        String str = com.estrongs.android.pop.esclasses.e.b(2131427645);
        localObject = str;
        if (str == null) {
          localObject = (String)getText(2131427645);
        }
        localObject = (String)localObject + "ftp:/" + locala.g().toString() + ":" + locala.h() + "/";
      }
      catch (Exception localException)
      {
        Object localObject;
        localException.printStackTrace();
        continue;
        if (localException == null) {
          continue;
        }
        continue;
      }
      a(0, (String)localObject);
      e = 0;
      l.a();
      return i;
      localObject = a(2131427657) + "...";
    }
  }
  
  public void d()
  {
    try
    {
      ((NotificationManager)getSystemService("notification")).cancel(37219999);
      e = 0;
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
  
  public boolean e()
  {
    a.i = true;
    return true;
  }
  
  public boolean f()
  {
    a.i = false;
    return false;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return c;
  }
  
  public void onCreate()
  {
    d = false;
    try
    {
      com.estrongs.android.pop.esclasses.e.a(this);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onDestroy()
  {
    d = true;
    g();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    d = false;
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.ESFtpService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */