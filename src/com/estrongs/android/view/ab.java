package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.navigation.r;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;

class ab
  implements r
{
  ab(u paramu, List paramList1, List paramList2) {}
  
  public void a(View paramView)
  {
    paramView = (FileExplorerActivity)u.a(c);
    String str = am.bL(paramView.z());
    int i = 0;
    if (i < a.size())
    {
      localList = (List)a.get(i);
      bool = ((Boolean)b.get(i)).booleanValue();
      if ((am.bQ(str)) || ((am.bQ(((h)localList.get(0)).getAbsolutePath())) && (!am.aB(str)))) {
        ag.a(u.a(c), 2131428090, 0);
      }
    }
    while (!"paste_mode".equals(i.b()))
    {
      List localList;
      boolean bool;
      return;
      aj.a(paramView, localList, paramView.B(), bool);
      i += 1;
      break;
    }
    r = false;
    i.a("normal_mode", Boolean.valueOf(true));
    j = "normal_mode";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */