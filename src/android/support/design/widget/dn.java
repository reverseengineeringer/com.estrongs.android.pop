package android.support.design.widget;

import android.os.Build.VERSION;
import android.support.v4.view.cn;
import android.view.View;
import android.view.ViewParent;

class dn
{
  private final View a;
  private int b;
  private int c;
  private int d;
  private int e;
  
  public dn(View paramView)
  {
    a = paramView;
  }
  
  private static void a(View paramView)
  {
    float f = cn.p(paramView);
    cn.b(paramView, 1.0F + f);
    cn.b(paramView, f);
  }
  
  private void c()
  {
    cn.e(a, d - (a.getTop() - b));
    cn.f(a, e - (a.getLeft() - c));
    if (Build.VERSION.SDK_INT < 23)
    {
      a(a);
      ViewParent localViewParent = a.getParent();
      if ((localViewParent instanceof View)) {
        a((View)localViewParent);
      }
    }
  }
  
  public void a()
  {
    b = a.getTop();
    c = a.getLeft();
    c();
  }
  
  public boolean a(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      c();
      return true;
    }
    return false;
  }
  
  public int b()
  {
    return d;
  }
  
  public boolean b(int paramInt)
  {
    if (e != paramInt)
    {
      e = paramInt;
      c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */