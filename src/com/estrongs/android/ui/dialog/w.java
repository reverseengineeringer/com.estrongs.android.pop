package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;

class w
  implements View.OnClickListener
{
  w(u paramu, o paramo) {}
  
  public void onClick(View paramView)
  {
    b.a.b();
    if ((u.a(b) instanceof FileExplorerActivity))
    {
      paramView = (FileExplorerActivity)u.b(b);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(b.a.a);
      paramView.ag().a(localArrayList);
      return;
    }
    u.a(b, b.a.a, u.c(b));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */