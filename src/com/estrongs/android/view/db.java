package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.f.f;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;

class db
  implements View.OnClickListener
{
  db(cr paramcr) {}
  
  public void onClick(View paramView)
  {
    if ((a.ag != null) && ((a.ag instanceof FileExplorerActivity)))
    {
      paramView = (FileExplorerActivity)a.ag;
      if (ap.br(a.C))
      {
        if (!ap.bg(a.C)) {
          break label66;
        }
        paramView.Z();
      }
    }
    return;
    label66:
    if ((ap.J(a.C)) || (ap.S(a.C)) || (ap.cj(a.C)) || (ap.M(a.C)))
    {
      paramView.a(f.a(a.C));
      return;
    }
    paramView.a(2131232313);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */