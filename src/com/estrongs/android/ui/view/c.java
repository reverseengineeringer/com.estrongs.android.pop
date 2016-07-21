package com.estrongs.android.ui.view;

import android.view.View;
import android.view.View.OnClickListener;

class c
  implements View.OnClickListener
{
  c(b paramb) {}
  
  public void onClick(View paramView)
  {
    paramView = new d(this, b.a(a), "/sdcard", null, true);
    paramView.a(b.a(a, 2131230720));
    paramView.a(new e(this, paramView));
    paramView.b(b.b(a, 2131230833), new f(this, paramView));
    paramView.c(b.c(a, 2131231265), new g(this, paramView));
    paramView.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */