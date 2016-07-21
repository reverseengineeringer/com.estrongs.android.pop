package com.estrongs.android.pop.app.b.c;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.pop.view.FileExplorerActivity;

class c
  implements View.OnClickListener
{
  c(a parama, b paramb, i parami) {}
  
  public void onClick(View paramView)
  {
    if ((c.n instanceof FileExplorerActivity))
    {
      if (a.c != 50) {
        break label74;
      }
      if ((c.n instanceof FileExplorerActivity)) {
        ((FileExplorerActivity)c.n).g(b.getAbsolutePath());
      }
    }
    for (;;)
    {
      a.a(c, a.c);
      return;
      label74:
      ((FileExplorerActivity)c.n).a(b.getName(), b.getAbsolutePath());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */