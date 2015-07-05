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
import android.support.v4.app.af;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.widget.RemoteViews;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.al;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.h;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class c
{
  private static Set<Integer> c = new HashSet();
  private static ESTaskService d;
  private static ServiceConnection e = new d();
  private static boolean f;
  private static AtomicInteger g = new AtomicInteger(0);
  private static List<c> h = new LinkedList();
  private boolean A = false;
  private boolean B;
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
  private boolean t;
  private long u = -1L;
  private long v = -1L;
  private af w;
  private Object x;
  private TextPaint y = new TextPaint();
  private int z;
  
  public c(Context paramContext)
  {
    this(paramContext, true);
  }
  
  public c(Context paramContext, boolean paramBoolean)
  {
    i = paramContext;
    B = paramBoolean;
    j = ((NotificationManager)i.getSystemService("notification"));
    k = false;
    m = (g.addAndGet(1) + (int)SystemClock.elapsedRealtime());
    y.setTextSize(16.0F);
    if (Build.VERSION.SDK_INT >= 14)
    {
      paramContext = i;
      x = h.b(null, "android.app.Notification$Builder", new Class[] { Context.class }, new Context[] { paramContext });
    }
    for (;;)
    {
      if (d != null) {}
      synchronized (c)
      {
        if (B)
        {
          c.add(Integer.valueOf(m));
          if (!f)
          {
            if (!bd.j()) {
              break label305;
            }
            paramContext = new Notification(2130837892, FexApplication.a().getText(2131428105), System.currentTimeMillis());
            PendingIntent localPendingIntent = PendingIntent.getActivity(FexApplication.a(), 0, new Intent(), 0);
            paramContext.setLatestEventInfo(FexApplication.a(), FexApplication.a().getText(2131427488), FexApplication.a().getText(2131428105), localPendingIntent);
            flags |= 0x20;
            d.startForeground(g.addAndGet(1) + (int)SystemClock.elapsedRealtime(), paramContext);
            f = true;
          }
        }
        return;
        w = new af(i);
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
      z |= paramInt;
      return;
    }
    z &= (paramInt ^ 0xFFFFFFFF);
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
      al.a(x).a("setProgress", new Class[] { Integer.TYPE, Integer.TYPE, Boolean.TYPE }, new Object[] { Integer.valueOf(0), Integer.valueOf(0), Boolean.valueOf(false) });
    }
    for (;;)
    {
      c();
      return;
      label80:
      w.b(q);
    }
  }
  
  public void a(int paramInt)
  {
    n = paramInt;
    if (Build.VERSION.SDK_INT >= 14) {
      al.a(x).a("setSmallIcon", Integer.TYPE, Integer.valueOf(paramInt));
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      w.a(paramInt);
    }
  }
  
  public void a(Intent paramIntent, boolean paramBoolean)
  {
    if (!paramIntent.getComponent().getClassName().equals(FileExplorerActivity.class.getName()))
    {
      paramIntent.setAction(Long.toString(System.currentTimeMillis()));
      if (!paramBoolean) {
        break label99;
      }
      r = PendingIntent.getActivity(i, 0, paramIntent, 134217728);
      label50:
      if (Build.VERSION.SDK_INT < 14) {
        break label118;
      }
      al.a(x).a("setContentIntent", r);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      paramIntent.addFlags(603979776);
      break;
      label99:
      r = PendingIntent.getBroadcast(i, 0, paramIntent, 134217728);
      break label50;
      label118:
      w.a(r);
    }
  }
  
  @TargetApi(11)
  public void a(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      al.a(x).a("setLargeIcon", Bitmap.class, paramBitmap);
    }
  }
  
  public void a(RemoteViews paramRemoteViews)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      al.a(x).a("setContent", paramRemoteViews);
      return;
    }
    w.a(paramRemoteViews);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    o = paramCharSequence;
    if (Build.VERSION.SDK_INT >= 14) {
      al.a(x).a("setTicker", CharSequence.class, paramCharSequence);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      w.c(paramCharSequence);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    t = paramBoolean;
    if (Build.VERSION.SDK_INT >= 14) {
      al.a(x).a("setOngoing", Boolean.TYPE, Boolean.valueOf(paramBoolean));
    }
    for (;;)
    {
      if ((!paramBoolean) && (d != null)) {}
      synchronized (c)
      {
        if ((B) && (c.remove(Integer.valueOf(m))) && (c.isEmpty()))
        {
          d.stopForeground(true);
          f = false;
        }
        if (k) {
          c();
        }
        return;
        w.a(paramBoolean);
      }
    }
  }
  
  public void b(int paramInt)
  {
    v = paramInt;
  }
  
  public void b(Intent paramIntent, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      s = PendingIntent.getActivity(i, 0, paramIntent, 134217728);
      if (Build.VERSION.SDK_INT < 14) {
        break label77;
      }
      al.a(x).a("setDeleteIntent", s);
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
      w.b(s);
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    p = paramCharSequence;
    if (Build.VERSION.SDK_INT >= 14) {
      al.a(x).a("setContentTitle", CharSequence.class, paramCharSequence);
    }
    for (;;)
    {
      if (k) {
        c();
      }
      return;
      w.a(paramCharSequence);
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
        if (A) {
          return;
        }
        if (Build.VERSION.SDK_INT >= 14)
        {
          l = ((Notification)al.a(x).a("getNotification"));
          Notification localNotification = l;
          flags |= z;
          j.notify(m, l);
          if (!A) {
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
      l = w.a();
    }
    k = true;
  }
  
  public void c(int paramInt)
  {
    u = paramInt;
    Object localObject = Long.valueOf(new Date().getTime());
    if ((((Long)localObject).longValue() - a < 300L) && (u != v)) {}
    do
    {
      return;
      a = ((Long)localObject).longValue();
    } while (!k);
    if (Build.VERSION.SDK_INT >= 14)
    {
      localObject = al.a(x);
      Class localClass1 = Integer.TYPE;
      Class localClass2 = Integer.TYPE;
      Class localClass3 = Boolean.TYPE;
      int i1 = (int)v;
      ((al)localObject).a("setProgress", new Class[] { localClass1, localClass2, localClass3 }, new Object[] { Integer.valueOf(i1), Integer.valueOf(paramInt), Boolean.valueOf(false) });
    }
    for (;;)
    {
      c();
      return;
      long l1 = u * 100L / v;
      w.b(q + "  " + l1 + "%");
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      q = paramCharSequence;
      paramCharSequence = Long.valueOf(new Date().getTime());
      if ((paramCharSequence.longValue() - b >= 300L) || (u == v)) {
        break label91;
      }
    }
    for (;;)
    {
      return;
      if (paramCharSequence != null)
      {
        q = TextUtils.ellipsize(paramCharSequence, y, 200.0F, TextUtils.TruncateAt.MIDDLE);
        break;
      }
      q = "";
      break;
      label91:
      b = paramCharSequence.longValue();
      if (Build.VERSION.SDK_INT >= 14) {
        al.a(x).a("setContentText", CharSequence.class, q);
      }
      while (k)
      {
        c();
        return;
        if (u != -1L) {
          w.b(q + "  " + u * 100L / v + "%");
        } else {
          w.b(q);
        }
      }
    }
  }
  
  public Notification d()
  {
    if (Build.VERSION.SDK_INT >= 14) {}
    for (l = ((Notification)al.a(x).a("getNotification"));; l = w.a()) {
      return l;
    }
  }
  
  public void e()
  {
    A = true;
    j.cancel(m);
    if (d != null) {}
    synchronized (c)
    {
      if ((B) && (c.remove(Integer.valueOf(m))) && (c.isEmpty()))
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
    return A;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */