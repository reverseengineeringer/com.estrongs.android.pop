package com.estrongs.android.pop.app.b.c;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.pop.view.FileExplorerActivity;

class i
  implements View.OnClickListener
{
  i(h paramh, b paramb) {}
  
  public void onClick(View paramView)
  {
    if ((b.n instanceof FileExplorerActivity))
    {
      ((FileExplorerActivity)b.n).g(a.e);
      c.a(b.n).a("log", "jump");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */