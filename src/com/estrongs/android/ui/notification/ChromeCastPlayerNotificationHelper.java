package com.estrongs.android.ui.notification;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.PopVideoPlayer;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.app.ad;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.util.bc;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.RemoteMediaPlayerListener;

public class ChromeCastPlayerNotificationHelper
  implements ChromeCastConnectionListener, RemoteMediaPlayerListener
{
  private static ChromeCastPlayerNotificationHelper b = null;
  private boolean a = false;
  private aa c = aa.g();
  private Context d = FexApplication.a();
  private c e = null;
  
  private ChromeCastPlayerNotificationHelper()
  {
    c.a(this);
    c.a(this);
  }
  
  public static ChromeCastPlayerNotificationHelper a()
  {
    if (b == null) {
      b = new ChromeCastPlayerNotificationHelper();
    }
    return b;
  }
  
  public void b()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      c();
    }
    a = true;
  }
  
  public void c()
  {
    RemoteViews localRemoteViews = new RemoteViews(d.getPackageName(), 2130903072);
    ad localad = c.o();
    if (localad == null) {
      return;
    }
    if ((e != null) && (!e.isRecycled())) {
      localRemoteViews.setImageViewBitmap(2131361898, a.a(e, a.a(d, 64.0F)));
    }
    if (bc.c(b))
    {
      localRemoteViews.setViewVisibility(2131361902, 8);
      localRemoteViews.setViewVisibility(2131361903, 8);
      localRemoteViews.setViewVisibility(2131361904, 8);
      localRemoteViews.setViewVisibility(2131361901, 8);
    }
    localRemoteViews.setTextViewText(2131361900, c);
    localRemoteViews.setOnClickPendingIntent(2131361902, d());
    localRemoteViews.setOnClickPendingIntent(2131361903, e());
    localRemoteViews.setOnClickPendingIntent(2131361904, f());
    localRemoteViews.setOnClickPendingIntent(2131361901, g());
    localRemoteViews.setOnClickPendingIntent(2131362016, h());
    label190:
    Intent localIntent;
    if (c.r() == 2)
    {
      localRemoteViews.setImageViewResource(2131361903, 2130837525);
      localIntent = null;
      if (!bc.c(b)) {
        break label355;
      }
      localIntent = new Intent(d, PopAudioPlayer.class);
      label216:
      if (localIntent == null) {
        break label407;
      }
      if ((e == null) || (e.h())) {
        e = new c(d, true);
      }
      e.a(localRemoteViews);
      e.a(true);
      localIntent.setData(Uri.parse(a));
      localIntent.putExtra("ChromecastNotification", true);
      localIntent.putExtra("Chromecast", true);
      e.a(localIntent, true);
      if (!bc.g(b)) {
        break label409;
      }
      e.a(2130837900);
    }
    for (;;)
    {
      e.a(c);
      e.c();
      return;
      localRemoteViews.setImageViewResource(2131361903, 2130837526);
      break label190;
      label355:
      if (bc.h(b))
      {
        localIntent = new Intent(d, PopVideoPlayer.class);
        break label216;
      }
      if (!bc.g(b)) {
        break label216;
      }
      localIntent = new Intent(d, PopAudioPlayer.class);
      break label216;
      label407:
      break;
      label409:
      if (bc.h(b)) {
        e.a(2130837912);
      }
    }
  }
  
  public PendingIntent d()
  {
    Intent localIntent = new Intent("com.estrongs.action.chromecast.control.preview");
    return PendingIntent.getBroadcast(d, 0, localIntent, 134217728);
  }
  
  public PendingIntent e()
  {
    Intent localIntent = new Intent("com.estrongs.action.chromecast.control.play");
    return PendingIntent.getBroadcast(d, 0, localIntent, 134217728);
  }
  
  public PendingIntent f()
  {
    Intent localIntent = new Intent("com.estrongs.action.chromecast.control.next");
    return PendingIntent.getBroadcast(d, 0, localIntent, 134217728);
  }
  
  public PendingIntent g()
  {
    Intent localIntent = new Intent("com.estrongs.action.chromecast.control.close");
    return PendingIntent.getBroadcast(d, 0, localIntent, 134217728);
  }
  
  public PendingIntent h()
  {
    Intent localIntent = new Intent("com.estrongs.action.chromecast.control.disconnect");
    return PendingIntent.getBroadcast(d, 0, localIntent, 134217728);
  }
  
  public boolean i()
  {
    if (be != null) {
      return be.g();
    }
    return false;
  }
  
  public void j()
  {
    if (be != null) {
      be.e();
    }
  }
  
  public void onConnected() {}
  
  public void onConnectionFailed() {}
  
  public void onConnectionSuspended() {}
  
  public void onDisconnected()
  {
    if (be != null) {
      be.e();
    }
  }
  
  public void onStatusUpdated(int paramInt)
  {
    if ((e != null) && (e.g())) {
      b();
    }
    if ((paramInt == 1) && (c.z() == 1)) {
      c.k();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */