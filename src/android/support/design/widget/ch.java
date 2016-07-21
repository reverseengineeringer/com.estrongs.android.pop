package android.support.design.widget;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;

public final class ch
{
  private Object a;
  private Drawable b;
  private CharSequence c;
  private CharSequence d;
  private int e = -1;
  private View f;
  private TabLayout g;
  private cj h;
  
  private void i()
  {
    if (h != null) {
      h.a();
    }
  }
  
  private void j()
  {
    g = null;
    h = null;
    a = null;
    b = null;
    c = null;
    d = null;
    e = -1;
    f = null;
  }
  
  public ch a(int paramInt)
  {
    return a(LayoutInflater.from(h.getContext()).inflate(paramInt, h, false));
  }
  
  public ch a(Drawable paramDrawable)
  {
    b = paramDrawable;
    i();
    return this;
  }
  
  public ch a(View paramView)
  {
    f = paramView;
    i();
    return this;
  }
  
  public ch a(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    i();
    return this;
  }
  
  public ch a(Object paramObject)
  {
    a = paramObject;
    return this;
  }
  
  public Object a()
  {
    return a;
  }
  
  public View b()
  {
    return f;
  }
  
  void b(int paramInt)
  {
    e = paramInt;
  }
  
  public Drawable c()
  {
    return b;
  }
  
  public int d()
  {
    return e;
  }
  
  public CharSequence e()
  {
    return c;
  }
  
  public void f()
  {
    if (g == null) {
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    g.b(this);
  }
  
  public boolean g()
  {
    if (g == null) {
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    return g.getSelectedTabPosition() == e;
  }
  
  public CharSequence h()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */