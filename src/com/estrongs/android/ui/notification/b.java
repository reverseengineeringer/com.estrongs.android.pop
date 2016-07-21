package com.estrongs.android.ui.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.AudioPlayerService;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.d.g;

public class b
{
  private AudioPlayerService a;
  private boolean b;
  private Bitmap c;
  
  public b(AudioPlayerService paramAudioPlayerService)
  {
    a = paramAudioPlayerService;
    b = false;
  }
  
  public void a()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      b();
    }
    for (;;)
    {
      b = true;
      return;
      if (Build.VERSION.SDK_INT >= 14) {
        b();
      } else {
        c();
      }
    }
  }
  
  public void a(String paramString, CharSequence paramCharSequence)
  {
    try
    {
      if ((NotificationManager)a.getSystemService("notification") != null)
      {
        Notification localNotification = new Notification();
        tickerText = FexApplication.a().getString(2131230723);
        when = System.currentTimeMillis();
        icon = 2130837636;
        flags |= 0x2;
        if (paramString != null) {}
        for (;;)
        {
          Object localObject = new Intent(a, PopAudioPlayer.class);
          ((Intent)localObject).putExtra("AudioServiceNotification", true);
          localObject = PendingIntent.getActivity(a, 0, (Intent)localObject, 0);
          localNotification.setLatestEventInfo(a, paramString, paramCharSequence, (PendingIntent)localObject);
          a.startForeground(12333, localNotification);
          return;
          paramString = FexApplication.a().getString(2131230723);
        }
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void b()
  {
    localObject3 = new RemoteViews(a.getPackageName(), 2130903116);
    localObject1 = null;
    try
    {
      localObject2 = g.a(a.D(), g.a(a, 64.0F));
      localObject1 = localObject2;
    }
    catch (Exception localException3)
    {
      for (;;)
      {
        try
        {
          Object localObject2;
          a.startForeground(12333, (Notification)localObject1);
          if ((c != null) && (!c.isRecycled())) {}
          try
          {
            c.recycle();
            c = ((Bitmap)localObject2);
            return;
            localException3 = localException3;
            try
            {
              Bitmap localBitmap = g.a(a.D(), g.a(a, 64.0F));
              localObject1 = localBitmap;
            }
            catch (Exception localException4) {}
            ((RemoteViews)localObject3).setImageViewResource(2131624400, 2130837634);
          }
          catch (Exception localException1)
          {
            localException1.printStackTrace();
          }
        }
        catch (Exception localException2) {}
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = BitmapFactory.decodeResource(a.getResources(), 2130837909);
    }
    ((RemoteViews)localObject3).setImageViewBitmap(2131624395, (Bitmap)localObject2);
    ((RemoteViews)localObject3).setTextViewText(2131624397, a.B());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131624399, d());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131624400, e());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131624401, f());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131624398, g());
    if ((a.k()) && (!a.m()))
    {
      ((RemoteViews)localObject3).setImageViewResource(2131624400, 2130837633);
      localObject1 = new d(a, false);
      ((d)localObject1).a((RemoteViews)localObject3);
      ((d)localObject1).a(true);
      localObject3 = new Intent(a, PopAudioPlayer.class);
      ((Intent)localObject3).putExtra("AudioServiceNotification", true);
      ((d)localObject1).a((Intent)localObject3, true);
      ((d)localObject1).a(2130838210);
      ((d)localObject1).a(a.B() + "\n" + a.C());
      localObject1 = ((d)localObject1).d();
    }
  }
  
  public void c()
  {
    if (a.l())
    {
      a(null, FexApplication.a().getString(2131232194));
      return;
    }
    String str2 = a.B();
    int i;
    if ((a.k()) && (!a.m()))
    {
      i = 1;
      if (i == 0) {
        break label79;
      }
    }
    label79:
    for (String str1 = FexApplication.a().getString(2131232186);; str1 = FexApplication.a().getString(2131232185))
    {
      a(str2, str1);
      return;
      i = 0;
      break;
    }
  }
  
  public PendingIntent d()
  {
    Intent localIntent = new Intent("com.estrongs.action.audio.control.preview");
    return PendingIntent.getBroadcast(a, 0, localIntent, 134217728);
  }
  
  public PendingIntent e()
  {
    Intent localIntent = new Intent("com.estrongs.action.audio.control.play");
    return PendingIntent.getBroadcast(a, 0, localIntent, 134217728);
  }
  
  public PendingIntent f()
  {
    Intent localIntent = new Intent("com.estrongs.action.audio.control.next");
    return PendingIntent.getBroadcast(a, 0, localIntent, 134217728);
  }
  
  public PendingIntent g()
  {
    Intent localIntent = new Intent("com.estrongs.action.audio.control.close");
    return PendingIntent.getBroadcast(a, 0, localIntent, 134217728);
  }
  
  public boolean h()
  {
    return b;
  }
  
  public void i()
  {
    a.stopForeground(true);
    b = false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */