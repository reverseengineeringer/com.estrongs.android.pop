package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder;
import java.util.ArrayList;
import java.util.Set;

class bu
  implements View.OnClickListener
{
  bu(bt parambt) {}
  
  public void onClick(View paramView)
  {
    paramView = (bx)paramView.getTag();
    if (paramView == null) {}
    bs localbs;
    do
    {
      do
      {
        return;
      } while ((e < 0) || (e >= a.a.i.size()));
      localbs = (bs)a.a.i.get(e);
    } while ((f < 0) || (f >= c.size()));
    paramView = c.get(f)).a;
    if (!a.a.b.contains(paramView)) {
      a.a.b.add(paramView);
    }
    for (;;)
    {
      a.notifyDataSetChanged();
      return;
      a.a.b.remove(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */