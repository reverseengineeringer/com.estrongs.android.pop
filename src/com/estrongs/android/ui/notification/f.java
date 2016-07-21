package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.bc;
import com.estrongs.fs.b.bo;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;
import com.estrongs.fs.util.j;
import java.util.HashMap;
import java.util.Map;

public class f
  implements l, com.estrongs.a.a.p
{
  private static Map<Long, r> d = new HashMap();
  private static BroadcastReceiver e;
  private static Object f = new Object();
  private d a;
  private Activity b;
  private int c = 1;
  
  public f(Activity paramActivity, CharSequence paramCharSequence, com.estrongs.a.a parama)
  {
    b = paramActivity;
    a = new d(paramActivity);
    if ((parama instanceof ab))
    {
      a.a(2130838200);
      a.b(paramActivity.getText(2131232177));
      a.c(paramActivity.getText(2131232399));
      a.a(true);
      if ((!(parama instanceof r)) && (!(parama instanceof bo)) && (!(parama instanceof bc)) && (!(parama instanceof ad)) && (!(parama instanceof i)) && (!(parama instanceof ab)) && (!(parama instanceof com.estrongs.fs.b.p)) && (!(parama instanceof com.estrongs.android.pop.view.utils.y)) && (!(parama instanceof ag)) && (!(parama instanceof com.estrongs.fs.b.y)) && (!(parama instanceof com.estrongs.fs.b.a))) {
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
      if ((parama instanceof aq))
      {
        a.a(2130838207);
        a.b(paramActivity.getText(2131232184));
        break;
      }
      if ((parama instanceof k))
      {
        a.a(2130838225);
        a.b(paramActivity.getText(2131232200));
        break;
      }
      if ((parama instanceof r))
      {
        a.a(2130838199);
        a.b(paramActivity.getText(2131232173));
        break;
      }
      if ((parama instanceof bo))
      {
        a.a(2130838218);
        a.b(paramActivity.getText(2131232192));
        break;
      }
      if ((parama instanceof bc))
      {
        a.a(2130838211);
        a.b(paramActivity.getText(2131232187));
        break;
      }
      if ((parama instanceof ad))
      {
        a.a(2130838453);
        a.b(paramActivity.getText(2131232179));
        break;
      }
      if ((parama instanceof i))
      {
        a.a(2130838197);
        a.b(paramActivity.getText(2131232165));
        break;
      }
      if ((parama instanceof com.estrongs.fs.b.p))
      {
        a.a(2130838212);
        a.b(paramActivity.getText(2131232188));
        break;
      }
      if ((parama instanceof com.estrongs.android.pop.view.utils.y))
      {
        a.a(2130838223);
        a.b(paramActivity.getText(2131232196));
        break;
      }
      if ((parama instanceof ag))
      {
        a.a(2130838206);
        a.b(paramActivity.getText(2131232180));
        break;
      }
      if ((parama instanceof com.estrongs.fs.b.y))
      {
        a.a(2130838224);
        a.b(paramActivity.getText(2131232176));
        break;
      }
      if (!(parama instanceof com.estrongs.fs.b.a)) {
        break;
      }
      a.a(2130838199);
      a.b(paramActivity.getText(2131230974));
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
    str = FexApplication.a().getString(2131232404, new Object[] { str });
    return FexApplication.a().getString(2131232403, new Object[] { Long.valueOf(d), str });
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
          b.runOnUiThread(new g(this, parama));
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
        b.runOnUiThread(new h(this, parama));
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
      a.c(b.getString(2131231100));
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
        a.c(ap.cc(j));
        break;
        if (c > 0L) {
          c(c);
        }
        if (d >= 0L) {
          d(d);
        }
      }
      label186:
      a.c(ap.cc(a));
    }
  }
  
  protected void b(com.estrongs.a.a parama) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */