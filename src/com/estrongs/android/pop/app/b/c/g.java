package com.estrongs.android.pop.app.b.c;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.pop.view.FileExplorerActivity;

class g
  implements View.OnClickListener
{
  g(e parame, i parami) {}
  
  public void onClick(View paramView)
  {
    if ((b.n instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)b.n).a(a.getName(), a.getAbsolutePath());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */