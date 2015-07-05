package com.estrongs.android.pop.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.c.a;
import com.estrongs.android.ui.f.f;
import com.estrongs.android.view.aw;

class cy
  implements View.OnClickListener
{
  cy(FileExplorerActivity paramFileExplorerActivity, aw paramaw, boolean paramBoolean) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    c.N.b(a.ab());
    boolean bool = c.y() instanceof a;
    if (bool)
    {
      c.N.a(8);
      if (b) {
        break label114;
      }
      c.N.b(8);
      label65:
      paramView = c.N;
      if ((bool) || (!b)) {
        break label128;
      }
    }
    for (;;)
    {
      paramView.c(i);
      c.N.b();
      return;
      c.N.a(0);
      break;
      label114:
      c.N.b(0);
      break label65;
      label128:
      i = 8;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */