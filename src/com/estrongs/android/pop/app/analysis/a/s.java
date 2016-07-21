package com.estrongs.android.pop.app.analysis.a;

import android.support.v7.widget.LinearLayoutManager;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.concurrent.CopyOnWriteArrayList;

class s
  implements View.OnClickListener
{
  s(o paramo, v paramv) {}
  
  public void onClick(View paramView)
  {
    paramView = (x)a;
    int i = o.g(b).indexOf(paramView);
    if (o.a(b))
    {
      if (!b) {
        break label85;
      }
      o.a(b, paramView);
    }
    for (;;)
    {
      if (o.e(b) != null) {
        o.e(b).a(i, paramView, c);
      }
      o.c(b).scrollToPosition(i);
      return;
      label85:
      o.b(b, paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */