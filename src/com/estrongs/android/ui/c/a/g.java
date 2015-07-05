package com.estrongs.android.ui.c.a;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.e;

class g
  implements com.estrongs.android.pop.esclasses.d
{
  g(f paramf) {}
  
  public void a()
  {
    int m = a.b.getWidth();
    int i;
    Object localObject;
    int j;
    int k;
    int n;
    if (m != f.a(a))
    {
      i = (m / com.estrongs.android.ui.c.b.f.i - d.c) / 2;
      localObject = f.b(a).getLayoutParams();
      if ((localObject instanceof LinearLayout.LayoutParams))
      {
        j = i - leftMargin;
        localObject = a.b;
        if (!e.b()) {
          break label133;
        }
        k = i;
        n = a.b.getPaddingTop();
        if (!e.b()) {
          break label138;
        }
      }
    }
    for (;;)
    {
      ((View)localObject).setPadding(k, n, j, a.b.getPaddingBottom());
      f.a(a, m);
      return;
      label133:
      k = j;
      break;
      label138:
      j = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */