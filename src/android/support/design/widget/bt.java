package android.support.design.widget;

import java.lang.ref.WeakReference;

class bt
{
  private final WeakReference<bs> a;
  private int b;
  
  bt(int paramInt, bs parambs)
  {
    a = new WeakReference(parambs);
    b = paramInt;
  }
  
  boolean a(bs parambs)
  {
    return (parambs != null) && (a.get() == parambs);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */