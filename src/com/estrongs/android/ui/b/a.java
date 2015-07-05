package com.estrongs.android.ui.b;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.ea;
import com.estrongs.fs.util.j;
import java.math.BigDecimal;

public class a
  extends ea
{
  boolean a;
  public final Handler b;
  public final l c;
  public TextView d;
  public TextView e;
  public TextView f;
  public TextView g;
  public TextView h;
  private int i;
  private ProgressBar j;
  private View k;
  private View l;
  private int m;
  private long n;
  private long o;
  private String p;
  private boolean q;
  private long r;
  private long s;
  private String t;
  
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
  
  private void g()
  {
    if (l != null) {
      l.setVisibility(0);
    }
    StringBuilder localStringBuilder;
    if (h != null)
    {
      localStringBuilder = new StringBuilder();
      if (!a) {
        break label69;
      }
    }
    label69:
    for (String str = j.c(m);; str = String.valueOf(m))
    {
      str = str + "/s";
      h.setText(str);
      return;
    }
  }
  
  private void h()
  {
    if (a) {}
    for (String str = j.c(n);; str = String.valueOf(n))
    {
      if (k != null) {
        k.setVisibility(0);
      }
      if (g != null) {
        g.setText(str);
      }
      j.setIndeterminate(false);
      if (n > 2147483647L) {
        i = 100;
      }
      j.setMax((int)n / i);
      return;
    }
  }
  
  private void i()
  {
    j.setProgress((int)o / i);
    TextView localTextView;
    if (f != null)
    {
      localTextView = f;
      if (!a) {
        break label71;
      }
    }
    label71:
    for (String str = j.c(o);; str = String.valueOf(o))
    {
      localTextView.setText(str);
      if (!bd.b(t)) {
        break;
      }
      e.setText(t);
      return;
    }
    e.setText(String.valueOf((int)a(o, n)) + "%");
  }
  
  private void j()
  {
    if (a) {}
    for (String str = j.c(r);; str = String.valueOf(r))
    {
      if (k != null) {
        k.setVisibility(0);
      }
      if (g != null) {
        g.setText(str);
      }
      j.setVisibility(0);
      j.setIndeterminate(false);
      if (r > 2147483647L) {
        i = 100;
      }
      j.setMax((int)r / i);
      return;
    }
  }
  
  private void k()
  {
    j.setProgress((int)s / i);
    TextView localTextView;
    if (f != null)
    {
      localTextView = f;
      if (!a) {
        break label93;
      }
    }
    label93:
    for (String str = j.c(s);; str = String.valueOf(s))
    {
      localTextView.setText(str);
      str = String.valueOf((int)a(s, r)) + "%";
      e.setText(str);
      return;
    }
  }
  
  protected int a()
  {
    return 2130903229;
  }
  
  protected String a(m paramm)
  {
    if (!bd.a(a)) {
      return am.D(a);
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    m = paramInt;
    b.sendEmptyMessage(3);
  }
  
  public void a(long paramLong)
  {
    n = paramLong;
    b.sendEmptyMessage(1);
  }
  
  public void a(String paramString)
  {
    p = paramString;
    b.sendEmptyMessage(5);
  }
  
  public void b()
  {
    b.sendEmptyMessage(6);
  }
  
  public void b(long paramLong)
  {
    o = paramLong;
    b.sendEmptyMessage(4);
  }
  
  public void b(String paramString)
  {
    p = paramString;
    d.setText(p);
  }
  
  public void c()
  {
    j.setIndeterminate(true);
  }
  
  public void c(long paramLong)
  {
    r = paramLong;
    b.sendEmptyMessage(7);
  }
  
  public void c(String paramString)
  {
    t = paramString;
  }
  
  public void d()
  {
    j.setVisibility(0);
  }
  
  public void d(long paramLong)
  {
    s = paramLong;
    b.sendEmptyMessage(8);
  }
  
  public void e()
  {
    j.setVisibility(8);
  }
  
  public void e(long paramLong)
  {
    n = paramLong;
    h();
  }
  
  public void f()
  {
    m = 0;
    n = 0L;
    o = 0L;
    p = null;
    q = false;
    r = 0L;
    s = 0L;
    t = null;
    j.setIndeterminate(true);
    a(g, null);
    a(f, null);
    a(e, null);
    a(d, null);
    a(h, null);
  }
  
  public void f(long paramLong)
  {
    o = paramLong;
    i();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */