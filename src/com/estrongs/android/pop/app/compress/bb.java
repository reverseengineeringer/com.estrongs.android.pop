package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.res.Resources;
import android.os.HandlerThread;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.d.e;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.bg;
import com.estrongs.android.view.ak;
import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.c;
import com.estrongs.io.archive.i;

public class bb
{
  protected String a;
  private Context b;
  private c c;
  private HandlerThread d = null;
  private String e;
  private i f = null;
  private a g;
  private cb h = null;
  private ba i;
  private ProgressBar j = null;
  private TextView k;
  private TextView l;
  private TextView m;
  private ImageView n;
  private TextView o;
  private br p = null;
  private ci q = null;
  
  public bb(Context paramContext)
  {
    b = paramContext;
    c = new bc(this, b, null, "", false);
  }
  
  private void f()
  {
    c.c(i.a);
    c.d(i.a);
    g = new bf(this, c, i.c);
  }
  
  private void g()
  {
    if (h == null) {
      a();
    }
    h.show();
  }
  
  private void h()
  {
    d = new bp(this, "ArchiveExtract", 5);
    d.start();
  }
  
  protected void a()
  {
    if (h == null)
    {
      h = new cb(b, true, false);
      h.setButton(-1, b.getResources().getString(2131231270), new bh(this));
      h.setButton(-2, b.getResources().getString(2131231265), new bi(this));
      h.setOnCancelListener(new bj(this));
    }
  }
  
  public void a(ImageView paramImageView)
  {
    n = paramImageView;
    c.a(paramImageView);
  }
  
  public void a(ProgressBar paramProgressBar)
  {
    j = paramProgressBar;
    c.a(paramProgressBar);
  }
  
  public void a(TextView paramTextView)
  {
    o = paramTextView;
    c.a(paramTextView);
  }
  
  public void a(ba paramba)
  {
    i = paramba;
  }
  
  public void a(br parambr)
  {
    p = parambr;
  }
  
  protected void a(String paramString)
  {
    if (q == null)
    {
      q = new e(b, new bd(this), true);
      q.setTitle(b.getResources().getString(2131231721));
      q.setOnKeyListener(new be(this));
    }
    q.setMessage(b.getResources().getString(2131231340) + "\n" + paramString);
  }
  
  public void b()
  {
    ak.a(i.a, this);
    f();
    if ((i.d == null) && (bg.m(i.a)))
    {
      new Thread(new bk(this)).start();
      return;
    }
    h();
  }
  
  public void b(TextView paramTextView)
  {
    m = paramTextView;
    c.d(paramTextView);
  }
  
  public int c()
  {
    return c.a();
  }
  
  public void c(TextView paramTextView)
  {
    l = paramTextView;
    c.c(paramTextView);
  }
  
  public void d()
  {
    d = null;
    if ((g != null) && (!g.b())) {
      g.e();
    }
    if ((f != null) && (f.e())) {
      f.d();
    }
    n.setImageResource(2130838551);
    o.setText(b.getResources().getString(2131231461));
    ak.c(i.a);
  }
  
  public void d(TextView paramTextView)
  {
    k = paramTextView;
    c.b(paramTextView);
  }
  
  public void e()
  {
    p = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */