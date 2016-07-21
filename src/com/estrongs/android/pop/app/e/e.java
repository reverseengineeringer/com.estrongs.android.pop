package com.estrongs.android.pop.app.e;

import android.graphics.drawable.Drawable;
import com.estrongs.fs.util.j;
import java.text.DecimalFormat;

public class e
{
  private long b;
  private f c;
  private long d;
  private int e;
  private String f;
  private Drawable g;
  
  public e(c paramc) {}
  
  public int a()
  {
    return e;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public void a(Drawable paramDrawable)
  {
    g = paramDrawable;
  }
  
  public void a(f paramf)
  {
    c = paramf;
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
  
  public long b()
  {
    return b;
  }
  
  public void b(long paramLong)
  {
    d = paramLong;
  }
  
  public String c()
  {
    String str = c.a(a, f);
    return c.a(a, e, " " + j.b(b), str);
  }
  
  public long d()
  {
    return d;
  }
  
  public f e()
  {
    return c;
  }
  
  public int f()
  {
    long l = j.a(b);
    return Integer.parseInt(c.b().format(b / l));
  }
  
  public Drawable g()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.e.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */