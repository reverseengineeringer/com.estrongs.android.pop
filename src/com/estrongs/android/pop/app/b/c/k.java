package com.estrongs.android.pop.app.b.c;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.r.b;

class k
  implements View.OnClickListener
{
  k(j paramj, b paramb) {}
  
  public void onClick(View paramView)
  {
    if ((b.n instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)b.n).d(a.getAbsolutePath());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */