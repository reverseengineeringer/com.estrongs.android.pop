package com.estrongs.android.ui.notification;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.widget.RemoteViews;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.g;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class d
{
  private static Set<Integer> c = new HashSet();
  private static ESTaskService d;
  private static ServiceConnection e = new e();
  private static boolean f;
  private static AtomicInteger g = new AtomicInteger(0);
  private static List<d> h = new LinkedList();
  private int A;
  private boolean B = false;
  private boolean C;
  public long a = 0L;
  public long b = 0L;
  private Context i;
  private NotificationManager j;
  private boolean k;
  private Notification l;
  private int m;
  private int n;
  private CharSequence o;
  private CharSequence p;
  private CharSequence q;
  private PendingIntent r;
  private PendingIntent s;
  private RemoteViews t;
  private boolean u;
  private long v = -1L;
  private long w = -1L;
  private NotificationCompat.Builder x;
  private Object y;
  private TextPaint z = new TextPaint();
  
  public d(Context paramContext)
  {
    this(paramContext, true);
  }
  
  public d(Context paramContext, boolean paramBoolean)
  {
    i = paramContext;
    C = paramBoolean;
    j = ((NotificationManager)i.getSystemService("notification"));
    k = false;
    m = (g.addAndGet(1) + (int)SystemClock.elapsedRealtime());
    z.setTextSize(16.0F);
    if (Build.VERSION.SDK_INT >= 14)
    {
      paramContext = i;
      y = g.a(null, "android.app.Notification$Builder", new Class[] { Context.class }, new Context[] { paramContext });
    }
    for (;;)
    {
      if (d != null) {}
      synchronized (c)
      {
        if (C)
        {
          c.add(Integer.valueOf(m));
          if (!f)
          {
            if (!bk.j()) {
              break label305;
            }
            paramContext = new Notification(2130838202, FexApplication.a().getText(2131232395), System.currentTimeMillis());
            PendingIntent localPendingIntent = PendingIntent.getActivity(FexApplication.a(), 0, new Intent(), 0);
            paramContext.setLatestEventInfo(FexApplication.a(), FexApplication.a().getText(2131230724), FexApplication.a().getText(2131232395), localPendingIntent);
            flags |= 0x20;
            d.startForeground(g.addAndGet(1) + (int)SystemClock.elapsedRealtime(), paramContext);
            f = true;
          }
        }
        return;
        x = new NotificationCompat.Builder(i);
        continue;
        label305:
        paramContext = new Notification(0, null, System.currentTimeMillis());
      }
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      A |= paramInt;
      return;
    }
    A &= (paramInt ^ 0xFFFFFFFF);
  }
  
  public static void b()
  {
    try
    {
      Intent localIntent = new Intent();
      localIntent.setClass(FexApplication.a(), ESTaskService.class);
      FexApplication.a().bindService(localIntent, e, 1);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a()
  {
    if (k)
    {
      if (Build.VERSION.SDK_INT < 14) {
        break label80;
      }
      ao.a(y).a("setProgress", new Class[] { Integer.TYPE, Integer.TYPE, Boolean.TYPE }, new Object[] { Integer.valueOf(0), Integer.valueOf(0), Boolean.valueOf(false) });
    }
    for (;;)
    {
      c();
      return;
      label80:
      x.setContentText(q);
    }
  }
  
  public void a(int paramInt)
  {
    n = paramInt;
    if (Build.VERSION.SDK_INT >= 14) {
      ao.a(y).a("setSmallIcon", Integer.TYPE, Integer.valueOf(paramInt));
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      x.setSmallIcon(paramInt);
    }
  }
  
  public void a(Intent paramIntent, boolean paramBoolean)
  {
    if (paramIntent.getComponent() != null)
    {
      if (!paramIntent.getComponent().getClassName().equals(FileExplorerActivity.class.getName())) {
        paramIntent.setAction(Long.toString(System.currentTimeMillis()));
      }
    }
    else
    {
      if (!paramBoolean) {
        break label106;
      }
      r = PendingIntent.getActivity(i, 0, paramIntent, 134217728);
      label57:
      if (Build.VERSION.SDK_INT < 14) {
        break label125;
      }
      ao.a(y).a("setContentIntent", r);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      paramIntent.addFlags(603979776);
      break;
      label106:
      r = PendingIntent.getBroadcast(i, 0, paramIntent, 134217728);
      break label57;
      label125:
      x.setContentIntent(r);
    }
  }
  
  @TargetApi(11)
  public void a(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      ao.a(y).a("setLargeIcon", Bitmap.class, paramBitmap);
    }
  }
  
  public void a(RemoteViews paramRemoteViews)
  {
    t = paramRemoteViews;
    if (Build.VERSION.SDK_INT >= 14)
    {
      ao.a(y).a("setContent", paramRemoteViews);
      return;
    }
    x.setContent(paramRemoteViews);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    o = paramCharSequence;
    if (Build.VERSION.SDK_INT >= 14) {
      ao.a(y).a("setTicker", CharSequence.class, paramCharSequence);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      x.setTicker(paramCharSequence);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    u = paramBoolean;
    if (Build.VERSION.SDK_INT >= 14) {
      ao.a(y).a("setOngoing", Boolean.TYPE, Boolean.valueOf(paramBoolean));
    }
    for (;;)
    {
      if ((!paramBoolean) && (d != null)) {}
      synchronized (c)
      {
        if ((C) && (c.remove(Integer.valueOf(m))) && (c.isEmpty()))
        {
          d.stopForeground(true);
          f = false;
        }
        if (k) {
          c();
        }
        return;
        x.setOngoing(paramBoolean);
      }
    }
  }
  
  public void b(int paramInt)
  {
    w = paramInt;
  }
  
  public void b(Intent paramIntent, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      s = PendingIntent.getActivity(i, 0, paramIntent, 134217728);
      if (Build.VERSION.SDK_INT < 14) {
        break label77;
      }
      ao.a(y).a("setDeleteIntent", s);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      s = PendingIntent.getBroadcast(i, 0, paramIntent, 134217728);
      break;
      label77:
      x.setDeleteIntent(s);
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    p = paramCharSequence;
    if (Build.VERSION.SDK_INT >= 14) {
      ao.a(y).a("setContentTitle", CharSequence.class, paramCharSequence);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      x.setContentTitle(paramCharSequence);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    a(16, paramBoolean);
  }
  
  public void c()
  {
    for (;;)
    {
      try
      {
        if (B) {
          return;
        }
        if (Build.VERSION.SDK_INT >= 14)
        {
          l = ((Notification)ao.a(y).a("getNotification"));
          if (t != null) {
            l.contentView = t;
          }
          Notification localNotification = l;
          flags |= A;
          j.notify(m, l);
          if (!B) {
            break;
          }
          j.cancel(m);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      l = x.getNotification();
    }
    k = true;
  }
  
  public void c(int paramInt)
  {
    v = paramInt;
    Object localObject = Long.valueOf(new Date().getTime());
    if ((((Long)localObject).longValue() - a < 300L) && (v != w)) {}
    do
    {
      return;
      a = ((Long)localObject).longValue();
    } while (!k);
    if (Build.VERSION.SDK_INT >= 14)
    {
      localObject = ao.a(y);
      Class localClass1 = Integer.TYPE;
      Class localClass2 = Integer.TYPE;
      Class localClass3 = Boolean.TYPE;
      int i1 = (int)w;
      ((ao)localObject).a("setProgress", new Class[] { localClass1, localClass2, localClass3 }, new Object[] { Integer.valueOf(i1), Integer.valueOf(paramInt), Boolean.valueOf(false) });
    }
    for (;;)
    {
      c();
      return;
      long l1 = v * 100L / w;
      x.setContentText(q + "  " + l1 + "%");
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      q = paramCharSequence;
      paramCharSequence = Long.valueOf(new Date().getTime());
      if ((paramCharSequence.longValue() - b >= 300L) || (v == w)) {
        break label91;
      }
    }
    for (;;)
    {
      return;
      if (paramCharSequence != null)
      {
        q = TextUtils.ellipsize(paramCharSequence, z, 200.0F, TextUtils.TruncateAt.MIDDLE);
        break;
      }
      q = "";
      break;
      label91:
      b = paramCharSequence.longValue();
      if (Build.VERSION.SDK_INT >= 14) {
        ao.a(y).a("setContentText", CharSequence.class, q);
      }
      while (k)
      {
        c();
        return;
        if (v != -1L) {
          x.setContentText(q + "  " + v * 100L / w + "%");
        } else {
          x.setContentText(q);
        }
      }
    }
  }
  
  public Notification d()
  {
    if (Build.VERSION.SDK_INT >= 14) {}
    for (l = ((Notification)ao.a(y).a("getNotification"));; l = x.getNotification()) {
      return l;
    }
  }
  
  public void e()
  {
    B = true;
    j.cancel(m);
    if (d != null) {}
    synchronized (c)
    {
      if ((C) && (c.remove(Integer.valueOf(m))) && (c.isEmpty()))
      {
        d.stopForeground(true);
        f = false;
      }
      k = false;
      return;
    }
  }
  
  public int f()
  {
    return m;
  }
  
  public boolean g()
  {
    return k;
  }
  
  public boolean h()
  {
    return B;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */