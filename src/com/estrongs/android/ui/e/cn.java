package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.a.a;

class cn
  implements View.OnLongClickListener
{
  cn(cl paramcl) {}
  
  public boolean onLongClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    a locala = a.b(i);
    if (locala.d() == null)
    {
      CharSequence localCharSequence = locala.getTitle();
      paramView = localCharSequence;
      if (localCharSequence == null) {
        paramView = cl.b(a).getString(locala.a());
      }
      ak.a(cl.b(a), paramView, 0);
    }
    for (;;)
    {
      return true;
      locala.e();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */