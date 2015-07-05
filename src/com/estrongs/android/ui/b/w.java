package com.estrongs.android.ui.b;

import android.view.View;
import android.view.ViewGroup;
import com.estrongs.a.a;
import com.estrongs.android.widget.c;
import com.estrongs.fs.h;
import java.util.List;

class w
  extends c<h>
{
  w(u paramu) {}
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = (a)((h)a.e(paramInt)).getExtra("task");
    if (paramView == null)
    {
      paramView = new f(u.f(a), paramViewGroup);
      paramView.b().setTag(paramView);
      u.g(a).add(paramView);
    }
    for (;;)
    {
      paramView.b(u.h(a));
      if (u.i(a)) {
        paramView.a(a.h(paramInt));
      }
      return paramView.b();
      paramView = (f)paramView.getTag();
      paramView.c();
      paramView.a(paramViewGroup);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */