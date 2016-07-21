package android.support.v4.view;

import android.view.WindowInsets;

class fs
  extends fr
{
  private final WindowInsets a;
  
  fs(WindowInsets paramWindowInsets)
  {
    a = paramWindowInsets;
  }
  
  public int a()
  {
    return a.getSystemWindowInsetLeft();
  }
  
  public fr a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new fs(a.replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public int b()
  {
    return a.getSystemWindowInsetTop();
  }
  
  public int c()
  {
    return a.getSystemWindowInsetRight();
  }
  
  public int d()
  {
    return a.getSystemWindowInsetBottom();
  }
  
  public boolean e()
  {
    return a.isConsumed();
  }
  
  public fr f()
  {
    return new fs(a.consumeSystemWindowInsets());
  }
  
  WindowInsets g()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */