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

public class a
{
  private AudioPlayerService a;
  private boolean b;
  private Bitmap c;
  
  public a(AudioPlayerService paramAudioPlayerService)
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
        tickerText = FexApplication.a().getString(2131427489);
        when = System.currentTimeMillis();
        icon = 2130837528;
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
          paramString = FexApplication.a().getString(2131427489);
        }
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void b()
  {
    localObject3 = new RemoteViews(a.getPackageName(), 2130903054);
    localObject1 = null;
    try
    {
      localObject2 = com.estrongs.android.ui.d.a.a(a.D(), com.estrongs.android.ui.d.a.a(a, 64.0F));
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
              Bitmap localBitmap = com.estrongs.android.ui.d.a.a(a.D(), com.estrongs.android.ui.d.a.a(a, 64.0F));
              localObject1 = localBitmap;
            }
            catch (Exception localException4) {}
            ((RemoteViews)localObject3).setImageViewResource(2131361903, 2130837526);
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
      localObject2 = BitmapFactory.decodeResource(a.getResources(), 2130837518);
    }
    ((RemoteViews)localObject3).setImageViewBitmap(2131361898, (Bitmap)localObject2);
    ((RemoteViews)localObject3).setTextViewText(2131361900, a.B());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131361902, d());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131361903, e());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131361904, f());
    ((RemoteViews)localObject3).setOnClickPendingIntent(2131361901, g());
    if ((a.k()) && (!a.m()))
    {
      ((RemoteViews)localObject3).setImageViewResource(2131361903, 2130837525);
      localObject1 = new c(a, false);
      ((c)localObject1).a((RemoteViews)localObject3);
      ((c)localObject1).a(true);
      localObject3 = new Intent(a, PopAudioPlayer.class);
      ((Intent)localObject3).putExtra("AudioServiceNotification", true);
      ((c)localObject1).a((Intent)localObject3, true);
      ((c)localObject1).a(2130837900);
      ((c)localObject1).a(a.B() + "\n" + a.C());
      localObject1 = ((c)localObject1).d();
    }
  }
  
  public void c()
  {
    if (a.l())
    {
      a(null, FexApplication.a().getString(2131427464));
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
    for (String str1 = FexApplication.a().getString(2131427463);; str1 = FexApplication.a().getString(2131427465))
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
 * Qualified Name:     com.estrongs.android.ui.notification.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */