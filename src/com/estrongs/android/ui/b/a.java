package com.estrongs.android.ui.b;

import android.app.Activity;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.gf;
import com.estrongs.fs.util.j;
import java.math.BigDecimal;

public class a
  extends gf
{
  boolean a;
  public final Handler b;
  public final l c;
  public TextView d;
  public TextView e;
  public TextView f;
  public TextView g;
  private int h;
  private ProgressBar i;
  private int j;
  private long k;
  private long l;
  private String m;
  private boolean n;
  private long o;
  private long p;
  private String q;
  
  public a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    this(paramActivity, paramViewGroup, null);
  }
  
  public a(Activity paramActivity, ViewGroup paramViewGroup, String paramString) {}
  
  private double a(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {
      return 1.0D;
    }
    if (paramLong1 >= paramLong2) {
      return 100.0D;
    }
    return new BigDecimal((float)paramLong1 / (float)paramLong2 * 100.0F).setScale(2, 4).doubleValue();
  }
  
  private void a(TextView paramTextView, String paramString)
  {
    if (paramTextView != null) {
      paramTextView.setText(paramString);
    }
  }
  
  private void g() {}
  
  private void h()
  {
    if (a) {}
    for (String str = j.c(k);; str = String.valueOf(k))
    {
      if (g != null) {
        g.setText(str);
      }
      i.setIndeterminate(false);
      if (k > 2147483647L) {
        h = 100;
      }
      i.setMax((int)k / h);
      return;
    }
  }
  
  private void i()
  {
    i.setProgress((int)l / h);
    TextView localTextView;
    if (f != null)
    {
      localTextView = f;
      if (!a) {
        break label71;
      }
    }
    label71:
    for (String str = j.c(l);; str = String.valueOf(l))
    {
      localTextView.setText(str);
      if (!bk.b(q)) {
        break;
      }
      e.setText(q);
      return;
    }
    e.setText(String.valueOf((int)a(l, k)) + "%");
  }
  
  private void j()
  {
    if (a) {}
    for (String str = j.c(o);; str = String.valueOf(o))
    {
      if (g != null) {
        g.setText(str);
      }
      i.setVisibility(0);
      i.setIndeterminate(false);
      if (o > 2147483647L) {
        h = 100;
      }
      i.setMax((int)o / h);
      return;
    }
  }
  
  private void k()
  {
    i.setProgress((int)p / h);
    TextView localTextView;
    if (f != null)
    {
      localTextView = f;
      if (!a) {
        break label93;
      }
    }
    label93:
    for (String str = j.c(p);; str = String.valueOf(p))
    {
      localTextView.setText(str);
      str = String.valueOf((int)a(p, o)) + "%";
      e.setText(str);
      return;
    }
  }
  
  protected int a()
  {
    return 2130903393;
  }
  
  protected String a(m paramm)
  {
    if (!bk.a(a)) {
      return ap.F(a);
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    j = paramInt;
    b.sendEmptyMessage(3);
  }
  
  public void a(long paramLong)
  {
    k = paramLong;
    b.sendEmptyMessage(1);
  }
  
  public void a(String paramString)
  {
    m = paramString;
    b.sendEmptyMessage(5);
  }
  
  public void b()
  {
    b.sendEmptyMessage(6);
  }
  
  public void b(long paramLong)
  {
    l = paramLong;
    b.sendEmptyMessage(4);
  }
  
  public void b(String paramString)
  {
    m = paramString;
    d.setText(m);
  }
  
  public void c()
  {
    i.setIndeterminate(true);
  }
  
  public void c(long paramLong)
  {
    o = paramLong;
    b.sendEmptyMessage(7);
  }
  
  public void c(String paramString)
  {
    q = paramString;
  }
  
  public void d()
  {
    i.setVisibility(0);
  }
  
  public void d(long paramLong)
  {
    p = paramLong;
    b.sendEmptyMessage(8);
  }
  
  public void e()
  {
    i.setVisibility(4);
  }
  
  public void e(long paramLong)
  {
    k = paramLong;
    h();
  }
  
  public void f()
  {
    j = 0;
    k = 0L;
    l = 0L;
    m = null;
    n = false;
    o = 0L;
    p = 0L;
    q = null;
    i.setIndeterminate(true);
    a(g, null);
    a(f, null);
    a(e, null);
    a(d, null);
  }
  
  public void f(long paramLong)
  {
    l = paramLong;
    i();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */