package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.navigation.q;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;

class ad
  implements q
{
  ad(y paramy, List paramList1, List paramList2) {}
  
  public void a(View paramView)
  {
    paramView = (FileExplorerActivity)y.a(c);
    String str = ap.cc(paramView.P());
    int i = 0;
    List localList;
    boolean bool;
    if (i < a.size())
    {
      localList = (List)a.get(i);
      bool = ((Boolean)b.get(i)).booleanValue();
      if ((ap.ci(str)) || ((ap.ci(((h)localList.get(0)).getAbsolutePath())) && (!ap.aL(str)))) {
        ak.a(y.a(c), 2131231914, 0);
      }
    }
    do
    {
      return;
      ao.a(paramView, localList, paramView.Q(), bool);
      i += 1;
      break;
      paramView = (FileExplorerActivity)y.a(c);
    } while (!paramView.j());
    paramView.i();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */