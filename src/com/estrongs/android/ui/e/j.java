package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.a.a;

class j
  implements View.OnLongClickListener
{
  j(f paramf) {}
  
  public boolean onLongClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    a locala = a.a(i);
    if (locala.d() == null)
    {
      CharSequence localCharSequence = locala.getTitle();
      paramView = localCharSequence;
      if (localCharSequence == null) {
        paramView = a.b.getString(locala.a());
      }
      ak.a(a.b, paramView, 0);
    }
    for (;;)
    {
      return true;
      locala.e();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */