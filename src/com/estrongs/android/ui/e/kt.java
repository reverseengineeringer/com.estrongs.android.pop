package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.a.a;

class kt
  implements View.OnLongClickListener
{
  kt(kr paramkr) {}
  
  public boolean onLongClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    a locala = a.b(i);
    if (locala != null)
    {
      if (locala.d() != null) {
        break label76;
      }
      CharSequence localCharSequence = locala.getTitle();
      paramView = localCharSequence;
      if (localCharSequence == null) {
        paramView = kr.b(a).getString(locala.a());
      }
      ak.a(kr.b(a), paramView, 0);
    }
    for (;;)
    {
      return true;
      label76:
      locala.e();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */