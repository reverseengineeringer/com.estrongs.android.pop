package com.estrongs.android.ui.d;

import android.support.design.widget.ch;
import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(c paramc, a parama, View paramView, ch paramch) {}
  
  public void onClick(View paramView)
  {
    d.b();
    b.post(new f(this));
    a.a(d.e, c.d());
    d.e.a(a.d(d.e));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */