package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.view.ak;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.d.a;
import com.estrongs.fs.impl.local.f;
import com.estrongs.io.a.a.b;
import com.estrongs.io.archive.c;
import com.estrongs.io.archive.j;
import com.estrongs.io.archive.sevenzip.x;
import java.io.File;

public class ax
{
  j a;
  private Context b;
  private c c;
  private ai d;
  private b e;
  private boolean f = false;
  
  public ax(Context paramContext, ai paramai)
  {
    b = paramContext;
    d = paramai;
    c = new c(b, null, "", true);
  }
  
  private void f()
  {
    c.c(d.a);
    c.d(d.a);
    e = new b(c);
  }
  
  public h a()
  {
    return new a(new f(new File(d.a)));
  }
  
  public void a(ImageView paramImageView)
  {
    c.a(paramImageView);
  }
  
  public void a(ProgressBar paramProgressBar)
  {
    c.a(paramProgressBar);
  }
  
  public void a(TextView paramTextView)
  {
    c.a(paramTextView);
  }
  
  public void b(TextView paramTextView)
  {
    c.d(paramTextView);
  }
  
  public boolean b()
  {
    return f;
  }
  
  public void c()
  {
    f = true;
    f();
    new ay(this, "ArchiveCompress").start();
  }
  
  public void c(TextView paramTextView)
  {
    c.c(paramTextView);
  }
  
  public int d()
  {
    return c.a();
  }
  
  public void d(TextView paramTextView)
  {
    c.b(paramTextView);
  }
  
  public void e()
  {
    e.e();
    if ((a instanceof x)) {
      ((x)a).b();
    }
    ak.d(d.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */