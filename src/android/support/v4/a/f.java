package android.support.v4.a;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

class f
  implements l
{
  List<b> a = new ArrayList();
  List<d> b = new ArrayList();
  View c;
  private long d;
  private long e = 200L;
  private float f = 0.0F;
  private boolean g = false;
  private boolean h = false;
  private Runnable i = new g(this);
  
  private void d()
  {
    int j = b.size() - 1;
    while (j >= 0)
    {
      ((d)b.get(j)).onAnimationUpdate(this);
      j -= 1;
    }
  }
  
  private long e()
  {
    return c.getDrawingTime();
  }
  
  private void f()
  {
    int j = a.size() - 1;
    while (j >= 0)
    {
      ((b)a.get(j)).onAnimationStart(this);
      j -= 1;
    }
  }
  
  private void g()
  {
    int j = a.size() - 1;
    while (j >= 0)
    {
      ((b)a.get(j)).onAnimationEnd(this);
      j -= 1;
    }
  }
  
  private void h()
  {
    int j = a.size() - 1;
    while (j >= 0)
    {
      ((b)a.get(j)).onAnimationCancel(this);
      j -= 1;
    }
  }
  
  public void a()
  {
    if (g) {
      return;
    }
    g = true;
    f();
    f = 0.0F;
    d = e();
    c.postDelayed(i, 16L);
  }
  
  public void a(long paramLong)
  {
    if (!g) {
      e = paramLong;
    }
  }
  
  public void a(b paramb)
  {
    a.add(paramb);
  }
  
  public void a(d paramd)
  {
    b.add(paramd);
  }
  
  public void a(View paramView)
  {
    c = paramView;
  }
  
  public void b()
  {
    if (h) {
      return;
    }
    h = true;
    if (g) {
      h();
    }
    g();
  }
  
  public float c()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */