package android.support.design.widget;

import android.support.v4.view.cn;
import android.support.v4.widget.cz;
import android.view.View;

class ca
  implements Runnable
{
  private final View b;
  private final boolean c;
  
  ca(bx parambx, View paramView, boolean paramBoolean)
  {
    b = paramView;
    c = paramBoolean;
  }
  
  public void run()
  {
    if ((bx.b(a) != null) && (bx.b(a).a(true))) {
      cn.a(b, this);
    }
    while ((!c) || (bx.a(a) == null)) {
      return;
    }
    bx.a(a).a(b);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */