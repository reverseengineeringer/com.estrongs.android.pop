package com.estrongs.android.pop.app.analysis;

import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.notification.d;
import java.util.Timer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;

public class p
{
  public static String a = "appName";
  public static String b = "packageName";
  public static String c = "com.estrongs.analysis.sensitive";
  public static String d = "com.estrongs.analysis.action.NOTIFICATION_REMOVED";
  private d e;
  private BlockingQueue<String> f = new LinkedBlockingDeque();
  private Timer g = new Timer();
  private boolean h = false;
  
  public static p a()
  {
    return r.a;
  }
  
  public void a(Context paramContext, String paramString)
  {
    if (!f.contains(paramString)) {
      f.offer(paramString);
    }
    if (((e == null) || (e.h())) && (!d()))
    {
      a(true);
      g.schedule(new t(this, paramContext, paramString), 30000L);
    }
  }
  
  public void a(d paramd)
  {
    e = paramd;
  }
  
  public void a(String paramString)
  {
    b(paramString);
    if (!f.isEmpty()) {
      g.schedule(new s(this, null), 7170000L);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void b()
  {
    if ((e == null) && (!f.isEmpty()))
    {
      String str = (String)f.peek();
      a(FexApplication.a(), str);
    }
  }
  
  public void b(Context paramContext, String paramString)
  {
    paramContext.sendBroadcast(d(paramString));
  }
  
  public void b(String paramString)
  {
    if (e != null)
    {
      e.e();
      e = null;
    }
    if (!f.isEmpty()) {
      f.remove(paramString);
    }
  }
  
  public void c(String paramString)
  {
    if (!f.isEmpty()) {
      f.remove(paramString);
    }
  }
  
  public boolean c()
  {
    return e != null;
  }
  
  public Intent d(String paramString)
  {
    Intent localIntent = new Intent(d);
    localIntent.putExtra(b, paramString);
    return localIntent;
  }
  
  public boolean d()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */