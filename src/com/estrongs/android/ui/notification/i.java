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
import com.estrongs.android.ui.navigation.s;
import com.estrongs.android.ui.preference.TabletSettingsActivity;
import com.estrongs.android.util.am;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class i
{
  private static i a = null;
  private Context b;
  private HashMap<String, c> c = new HashMap();
  private HashMap<String, RemoteViews> d = new HashMap();
  private HashMap<String, Integer> e = new HashMap();
  private boolean f;
  
  public i(Context paramContext)
  {
    b = paramContext;
    if (Build.VERSION.SDK_INT >= 14) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public static i a(Context paramContext)
  {
    if (a == null) {
      a = new i(paramContext);
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
    c localc = new c(b);
    localc.a(2130837903);
    localc.a(((BitmapDrawable)b.getResources().getDrawable(2130837719)).getBitmap());
    localc.a(e(paramString), true);
    localc.a(true);
    a(localc.d(), paramString);
    c.put(paramString, localc);
  }
  
  private PendingIntent d()
  {
    Intent localIntent = new Intent();
    if (s.a(b)) {
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
    RemoteViews localRemoteViews = new RemoteViews(b.getPackageName(), 2130903242);
    c localc = new c(b, false);
    localc.a(localRemoteViews);
    localRemoteViews.setOnClickPendingIntent(2131362700, f(paramString));
    localRemoteViews.setOnClickPendingIntent(2131362701, d());
    localc.a(e(paramString), true);
    localc.a(2130837903);
    localc.a(true);
    a(localc.d(), paramString);
    c.put(paramString, localc);
    d.put(paramString, localRemoteViews);
  }
  
  private Intent e(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(b, FileExplorerActivity.class);
    localIntent.setFlags(67108864);
    localIntent.setData(Uri.fromFile(new File(paramString)));
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
    c localc = (c)c.get(paramString);
    if (localc == null)
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
      ((RemoteViews)localObject).setTextViewText(2131361808, am.d(paramString));
      long[] arrayOfLong = j.k(paramString);
      l1 = (arrayOfLong[0] - arrayOfLong[1]) * arrayOfLong[2];
      l2 = arrayOfLong[0];
      l2 = arrayOfLong[2] * l2;
      if (l2 >= 0L)
      {
        ((RemoteViews)localObject).setProgressBar(2131361935, (int)(l2 / 1024L), (int)(l1 / 1024L), false);
        ((RemoteViews)localObject).setTextViewText(2131361981, j.c(l1));
        ((RemoteViews)localObject).setTextViewText(2131361982, j.c(l2));
        localc.a((RemoteViews)localObject);
      }
    }
    for (;;)
    {
      a(localc.d(), paramString);
      return;
      ((RemoteViews)localObject).setProgressBar(2131361935, (int)l2, (int)l1, false);
      break;
      localc.b(am.d(paramString));
      localObject = j.k(paramString);
      l1 = localObject[0];
      l2 = localObject[1];
      long l3 = localObject[2];
      long l4 = localObject[0];
      long l5 = localObject[2];
      localc.c("(" + j.c((l1 - l2) * l3) + "/" + j.c(l4 * l5) + ")");
    }
  }
  
  public void b()
  {
    Object localObject = am.a();
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
 * Qualified Name:     com.estrongs.android.ui.notification.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */