package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.ba;
import com.estrongs.fs.b.bm;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;
import com.estrongs.fs.util.j;
import java.util.HashMap;
import java.util.Map;

public class e
  implements l, com.estrongs.a.a.p
{
  private static Map<Long, r> d = new HashMap();
  private static BroadcastReceiver e;
  private static Object f = new Object();
  private c a;
  private Activity b;
  private int c = 1;
  
  public e(Activity paramActivity, CharSequence paramCharSequence, com.estrongs.a.a parama)
  {
    b = paramActivity;
    a = new c(paramActivity);
    if ((parama instanceof ab))
    {
      a.a(2130837890);
      a.b(paramActivity.getText(2131427455));
      a.c(paramActivity.getText(2131428109));
      a.a(true);
      if ((!(parama instanceof r)) && (!(parama instanceof bm)) && (!(parama instanceof ba)) && (!(parama instanceof ad)) && (!(parama instanceof i)) && (!(parama instanceof ab)) && (!(parama instanceof com.estrongs.fs.b.p)) && (!(parama instanceof com.estrongs.android.pop.view.utils.y)) && (!(parama instanceof ag)) && (!(parama instanceof com.estrongs.fs.b.y)) && (!(parama instanceof com.estrongs.fs.b.a))) {
        break label636;
      }
      Intent localIntent = new Intent();
      localIntent.setClassName(paramActivity.getPackageName(), ShowDialogActivity.class.getName());
      localIntent.putExtra("task_id", parama.getTaskId());
      localIntent.putExtra("task_title", paramCharSequence);
      localIntent.putExtra("notification_id", a.f());
      a.a(localIntent, true);
    }
    for (;;)
    {
      parama.addProgressListener(this);
      parama.addTaskStatusChangeListener(this);
      notificationId = a.f();
      a.c();
      return;
      if ((parama instanceof ao))
      {
        a.a(2130837897);
        a.b(paramActivity.getText(2131427459));
        break;
      }
      if ((parama instanceof k))
      {
        a.a(2130837911);
        a.b(paramActivity.getText(2131428662));
        break;
      }
      if ((parama instanceof r))
      {
        a.a(2130837889);
        a.b(paramActivity.getText(2131427460));
        break;
      }
      if ((parama instanceof bm))
      {
        a.a(2130837908);
        a.b(paramActivity.getText(2131427456));
        break;
      }
      if ((parama instanceof ba))
      {
        a.a(2130837901);
        a.b(paramActivity.getText(2131427451));
        break;
      }
      if ((parama instanceof ad))
      {
        a.a(2130838075);
        a.b(paramActivity.getText(2131427458));
        break;
      }
      if ((parama instanceof i))
      {
        a.a(2130837887);
        a.b(paramActivity.getText(2131427452));
        break;
      }
      if ((parama instanceof com.estrongs.fs.b.p))
      {
        a.a(2130837902);
        a.b(paramActivity.getText(2131428292));
        break;
      }
      if ((parama instanceof com.estrongs.android.pop.view.utils.y))
      {
        a.a(2130837909);
        a.b(paramActivity.getText(2131428399));
        break;
      }
      if ((parama instanceof ag))
      {
        a.a(2130837896);
        a.b(paramActivity.getText(2131428480));
        break;
      }
      if ((parama instanceof com.estrongs.fs.b.y))
      {
        a.a(2130837910);
        a.b(paramActivity.getText(2131428481));
        break;
      }
      if (!(parama instanceof com.estrongs.fs.b.a)) {
        break;
      }
      a.a(2130837889);
      a.b(paramActivity.getText(2131427698));
      break;
      label636:
      a.a(paramActivity.getIntent(), true);
    }
  }
  
  public static com.estrongs.a.a a(long paramLong)
  {
    return (com.estrongs.a.a)d.get(Long.valueOf(paramLong));
  }
  
  public static com.estrongs.a.a b(long paramLong)
  {
    return (com.estrongs.a.a)d.remove(Long.valueOf(paramLong));
  }
  
  private void c(long paramLong)
  {
    if (paramLong > 2147483647L) {
      c = 100;
    }
    a.b((int)(paramLong / c));
  }
  
  private void d(long paramLong)
  {
    a.c((int)paramLong / c);
  }
  
  private void e() {}
  
  public String a(r paramr)
  {
    paramr = paramr.f();
    if (paramr == null) {
      return "";
    }
    String str = j.c(f);
    str = FexApplication.a().getString(2131428122, new Object[] { str });
    return FexApplication.a().getString(2131428121, new Object[] { Long.valueOf(d), str });
  }
  
  public void a()
  {
    try
    {
      if (a != null) {
        a.e();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  protected void a(com.estrongs.a.a parama) {}
  
  public void a(com.estrongs.a.a parama, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        if (a == null) {
          return;
        }
        if (paramInt2 == 4)
        {
          b.runOnUiThread(new f(this, parama));
          a(parama);
          return;
        }
      }
      finally {}
      if (paramInt2 == 5)
      {
        a.a(false);
        if (getTaskResulta == 1)
        {
          a.e();
          return;
        }
        b.runOnUiThread(new g(this, parama));
        b(parama);
      }
    }
  }
  
  public void a(com.estrongs.a.a parama, m paramm)
  {
    if ((parama.getTaskStatus() == 4) || (parama.getTaskStatus() == 5)) {
      return;
    }
    try
    {
      if (a == null) {
        return;
      }
    }
    finally {}
    if (i == 1) {
      a.c(b.getString(2131428091));
    }
    for (;;)
    {
      return;
      if (l)
      {
        if (e > 0L) {
          c(e);
        }
        if (f >= 0L) {
          d(f);
        }
      }
      for (;;)
      {
        if ((e <= 0L) && (g <= 0L)) {
          e();
        }
        if (!(parama instanceof k)) {
          break label186;
        }
        a.c(am.bL(j));
        break;
        if (c > 0L) {
          c(c);
        }
        if (d >= 0L) {
          d(d);
        }
      }
      label186:
      a.c(am.bL(a));
    }
  }
  
  protected void b(com.estrongs.a.a parama) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */