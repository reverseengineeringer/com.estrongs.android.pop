package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

class ViewOffsetBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private dn a;
  private int b = 0;
  private int c = 0;
  
  public ViewOffsetBehavior() {}
  
  public ViewOffsetBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean a(int paramInt)
  {
    if (a != null) {
      return a.a(paramInt);
    }
    b = paramInt;
    return false;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    b(paramCoordinatorLayout, paramV, paramInt);
    if (a == null) {
      a = new dn(paramV);
    }
    a.a();
    if (b != 0)
    {
      a.a(b);
      b = 0;
    }
    if (c != 0)
    {
      a.b(c);
      c = 0;
    }
    return true;
  }
  
  public int b()
  {
    if (a != null) {
      return a.b();
    }
    return 0;
  }
  
  protected void b(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    paramCoordinatorLayout.a(paramV, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ViewOffsetBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */