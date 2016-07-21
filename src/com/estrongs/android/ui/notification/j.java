package com.estrongs.android.ui.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import com.estrongs.android.pop.app.PopPreferenceActivity;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.navigation.r;
import com.estrongs.android.ui.preference.TabletSettingsActivity;
import com.estrongs.android.util.ap;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class j
{
  private static j a = null;
  private Context b;
  private HashMap<String, d> c = new HashMap();
  private HashMap<String, RemoteViews> d = new HashMap();
  private HashMap<String, Integer> e = new HashMap();
  private boolean f;
  
  public j(Context paramContext)
  {
    b = paramContext;
    if (Build.VERSION.SDK_INT >= 14) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public static j a(Context paramContext)
  {
    if (a == null) {
      a = new j(paramContext);
    }
    return a;
  }
  
  public static void a()
  {
    a = null;
  }
  
  private void a(Notification paramNotification, int paramInt)
  {
    ((NotificationManager)b.getSystemService("notification")).notify(paramInt, paramNotification);
  }
  
  private void a(Notification paramNotification, String paramString)
  {
    int i = 0;
    if (e.containsKey(paramString)) {
      i = ((Integer)e.get(paramString)).intValue();
    }
    for (;;)
    {
      a(paramNotification, i);
      return;
      int j = 0;
      while (i < paramString.length())
      {
        j += paramString.charAt(i) * (i + 1);
        i += 1;
      }
      i = 12300000 + j;
      e.put(paramString, Integer.valueOf(i));
    }
  }
  
  private void c(String paramString)
  {
    d locald = new d(b);
    locald.a(2130838213);
    locald.a(((BitmapDrawable)b.getResources().getDrawable(2130838079)).getBitmap());
    locald.a(e(paramString), true);
    locald.a(true);
    a(locald.d(), paramString);
    c.put(paramString, locald);
  }
  
  private PendingIntent d()
  {
    Intent localIntent = new Intent();
    if (r.a(b)) {
      localIntent.setClass(b, PopPreferenceActivity.class);
    }
    for (;;)
    {
      localIntent.putExtra("category", "preference_display_settings_category");
      return PendingIntent.getActivity(b, 0, localIntent, 134217728);
      localIntent.setClass(b, TabletSettingsActivity.class);
    }
  }
  
  private void d(String paramString)
  {
    RemoteViews localRemoteViews = new RemoteViews(b.getPackageName(), 2130903413);
    d locald = new d(b, false);
    locald.a(localRemoteViews);
    localRemoteViews.setOnClickPendingIntent(2131625474, f(paramString));
    localRemoteViews.setOnClickPendingIntent(2131625475, d());
    locald.a(e(paramString), true);
    locald.a(2130838213);
    locald.a(true);
    a(locald.d(), paramString);
    c.put(paramString, locald);
    d.put(paramString, localRemoteViews);
  }
  
  private Intent e(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(b, FileExplorerActivity.class);
    localIntent.setFlags(67108864);
    localIntent.setData(Uri.fromFile(new File(paramString)));
    boolean bool1 = ap.bl(paramString);
    boolean bool2 = ap.bL(paramString);
    if ((bool1) && (bool2))
    {
      localIntent.setAction("select_notification_usb");
      return localIntent;
    }
    localIntent.setAction("select_notification_sd");
    return localIntent;
  }
  
  private PendingIntent f(String paramString)
  {
    Intent localIntent = new Intent("com.estrongs.action.PERFNOTIFY");
    localIntent.putExtra("path", paramString);
    return PendingIntent.getBroadcast(b, (int)System.currentTimeMillis(), localIntent, 134217728);
  }
  
  public void a(String paramString)
  {
    d locald = (d)c.get(paramString);
    if (locald == null)
    {
      if (f)
      {
        d(paramString);
        return;
      }
      c(paramString);
      return;
    }
    Object localObject;
    long l1;
    long l2;
    if (f)
    {
      localObject = (RemoteViews)d.get(paramString);
      ((RemoteViews)localObject).setTextViewText(2131624135, ap.d(paramString));
      long[] arrayOfLong = com.estrongs.fs.util.j.k(paramString);
      l1 = (arrayOfLong[0] - arrayOfLong[1]) * arrayOfLong[2];
      l2 = arrayOfLong[0];
      l2 = arrayOfLong[2] * l2;
      if (l2 >= 0L)
      {
        ((RemoteViews)localObject).setProgressBar(2131624429, (int)(l2 / 1024L), (int)(l1 / 1024L), false);
        ((RemoteViews)localObject).setTextViewText(2131624494, com.estrongs.fs.util.j.c(l1));
        ((RemoteViews)localObject).setTextViewText(2131624496, com.estrongs.fs.util.j.c(l2));
        locald.a((RemoteViews)localObject);
      }
    }
    for (;;)
    {
      a(locald.d(), paramString);
      return;
      ((RemoteViews)localObject).setProgressBar(2131624429, (int)l2, (int)l1, false);
      break;
      locald.b(ap.d(paramString));
      localObject = com.estrongs.fs.util.j.k(paramString);
      l1 = localObject[0];
      l2 = localObject[1];
      long l3 = localObject[2];
      long l4 = localObject[0];
      long l5 = localObject[2];
      locald.c("(" + com.estrongs.fs.util.j.c((l1 - l2) * l3) + "/" + com.estrongs.fs.util.j.c(l4 * l5) + ")");
    }
  }
  
  public void b()
  {
    Object localObject = ap.a();
    String str = b.b();
    if (((List)localObject).remove(str)) {
      ((List)localObject).add(0, str);
    }
    localObject = ((List)localObject).iterator();
    if (((Iterator)localObject).hasNext())
    {
      str = (String)((Iterator)localObject).next();
      if (c.get(str) == null)
      {
        if (!f) {
          break label83;
        }
        d(str);
      }
      for (;;)
      {
        a(str);
        break;
        label83:
        c(str);
      }
    }
  }
  
  public void b(String paramString)
  {
    if ((paramString == null) || (!e.containsKey(paramString))) {
      return;
    }
    ((NotificationManager)b.getSystemService("notification")).cancel(((Integer)e.remove(paramString)).intValue());
    c.remove(paramString);
    d.remove(paramString);
  }
  
  public void c()
  {
    NotificationManager localNotificationManager = (NotificationManager)b.getSystemService("notification");
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext()) {
      localNotificationManager.cancel(((Integer)localIterator.next()).intValue());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */