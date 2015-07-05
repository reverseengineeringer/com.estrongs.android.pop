package com.estrongs.io.archive;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.app.compress.l;
import com.estrongs.android.ui.notification.c;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.util.j;
import java.math.BigDecimal;
import java.text.MessageFormat;

public class d
  extends Handler
{
  private long a = 0L;
  public String b;
  public long c = 1L;
  public int d = 0;
  public String e;
  public long f = 0L;
  public int g = 0;
  private String h = "";
  private int i = 0;
  private Context j;
  private String k;
  private TextView l;
  private TextView m;
  private TextView n;
  private ProgressBar o = null;
  private TextView p;
  private TextView q;
  private TextView r;
  private String s;
  private l t;
  private c u;
  
  public d(Context paramContext, l paraml, String paramString)
  {
    j = paramContext;
    t = paraml;
    k = paramString;
    u = new c(paramContext);
    if (t == null)
    {
      u.a(2130837888);
      u.b(paramContext.getResources().getString(2131427453));
    }
    for (;;)
    {
      u.a(true);
      paramContext = new Intent();
      paramContext.setClassName(FexApplication.a().getPackageName(), ShowDialogActivity.class.getName());
      paramContext.putExtra("compress", true);
      paramContext.putExtra("application", FexApplication.a().toString());
      paramContext.putExtra("notification_id", u.f());
      u.a(paramContext, true);
      u.c();
      return;
      u.a(2130837893);
      u.b(paramContext.getResources().getString(2131427454));
    }
  }
  
  private static double a(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {
      return 1.0D;
    }
    return new BigDecimal((float)paramLong1 / (float)paramLong2 * 100.0F).setScale(2, 4).doubleValue();
  }
  
  public void a(ProgressBar paramProgressBar)
  {
    o = paramProgressBar;
  }
  
  public void a(TextView paramTextView)
  {
    n = paramTextView;
  }
  
  public void a(String paramString) {}
  
  public void b(TextView paramTextView)
  {
    l = paramTextView;
  }
  
  public void b(String paramString)
  {
    s = paramString;
    if (t == null) {
      u.c(s);
    }
  }
  
  public void c(TextView paramTextView)
  {
    m = paramTextView;
  }
  
  public void c(String paramString)
  {
    u.c(paramString);
  }
  
  public void d(TextView paramTextView)
  {
    p = paramTextView;
  }
  
  public void e(TextView paramTextView)
  {
    q = paramTextView;
  }
  
  public void f(TextView paramTextView)
  {
    r = paramTextView;
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject;
    int i1;
    if (2 == what)
    {
      if (k == null) {
        break label260;
      }
      if (k.indexOf("{0}") < 0)
      {
        localObject = "" + obj;
        Log.e("ArchiveHandler", (String)localObject);
        ag.a(j, (CharSequence)localObject, 1);
        if (t != null) {
          t.c();
        }
        u.e();
      }
    }
    else if (1 == what)
    {
      o.setProgress(i);
      u.c(i);
      if (obj != null) {
        ag.a(j, MessageFormat.format(j.getString(2131427857), new Object[] { obj.toString() }), 1);
      }
      if (arg1 != 10) {
        break label287;
      }
      i1 = 1;
      label173:
      if (i1 == 0) {
        break label293;
      }
      localObject = new Intent("com.estrongs.android.intent.action.ARCHIVE_DONE");
      ((Intent)localObject).putExtra("output_path", s);
      ((Activity)j).sendBroadcast((Intent)localObject);
    }
    for (;;)
    {
      u.e();
      if (7 != what) {
        break label310;
      }
      u.e();
      return;
      localObject = MessageFormat.format(k, new Object[] { obj });
      break;
      label260:
      localObject = "" + obj;
      break;
      label287:
      i1 = 0;
      break label173;
      label293:
      if (t != null) {
        t.c();
      }
    }
    label310:
    if (3 == what)
    {
      a(obj.toString());
      return;
    }
    double d1;
    if (4 == what)
    {
      m.setText("" + d);
      a = j.a(c);
      h = j.b(a);
      if (a == 0L) {
        a = 1L;
      }
      d1 = new BigDecimal(c / a).setScale(2, 4).doubleValue();
      r.setText(d1 + h);
      i = Integer.MAX_VALUE;
      o.setMax(i);
      u.b(i);
      return;
    }
    if (6 == what)
    {
      long l1 = j.a(f);
      d1 = new BigDecimal(f / l1).setScale(2, 4).doubleValue();
      q.setText(d1 + j.b(l1));
      d1 = a(f, c);
      if (f > c) {
        d1 = 98.0D;
      }
      i1 = (int)(i * (d1 / 100.0D));
      p.setText(d1 + "%");
      if (d1 < 100.0D)
      {
        if (i1 < i) {
          break label751;
        }
        i1 = i - i / 10;
      }
    }
    label751:
    for (;;)
    {
      o.setProgress(i1);
      u.c(i1);
      return;
      o.setProgress(i);
      u.c(i);
      return;
      if (5 != what) {
        break;
      }
      n.setText(e);
      l.setText("" + g);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */