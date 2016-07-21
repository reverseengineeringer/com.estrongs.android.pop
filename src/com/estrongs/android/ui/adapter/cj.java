package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.bk;

class cj
  implements View.OnLongClickListener
{
  cj(ListAdapter_NewNavi paramListAdapter_NewNavi, int paramInt1, int paramInt2, a parama, boolean paramBoolean) {}
  
  public boolean onLongClick(View paramView)
  {
    if ((a == e.a(ListAdapter_NewNavi.GroupType.Device)) && (b == 2)) {}
    while ((c.b() == null) && (c.c() == null)) {
      return true;
    }
    ci localci = new cv(ListAdapter_NewNavi.a(e)).a(c.b).b();
    Object localObject = c.b();
    paramView = (View)localObject;
    if ("#home#".equals(localObject)) {
      paramView = ListAdapter_NewNavi.g(e).j(com.estrongs.android.pop.view.a.a);
    }
    boolean bool = FileExplorerActivity.a(ListAdapter_NewNavi.a(e).O(), paramView);
    int i;
    if (c.c() != null)
    {
      i = 1;
      if (paramView != null) {
        break label264;
      }
      paramView = new String[0];
    }
    for (;;)
    {
      localObject = paramView;
      if (d)
      {
        localObject = (String[])bk.b(paramView, paramView.length + 1);
        localObject[(localObject.length - 1)] = ListAdapter_NewNavi.a(e).getString(2131232329);
      }
      paramView = (View)localObject;
      if (i != 0)
      {
        paramView = (String[])bk.b((Object[])localObject, localObject.length + 1);
        paramView[(paramView.length - 1)] = ListAdapter_NewNavi.a(e).getString(2131231711);
      }
      localci.setItems(paramView, 0, new ck(this, bool));
      localci.setSelectable(false);
      localci.show();
      return true;
      i = 0;
      break;
      label264:
      if (bool)
      {
        paramView = new String[2];
        paramView[0] = ListAdapter_NewNavi.a(e).getString(2131231889);
        paramView[1] = ListAdapter_NewNavi.a(e).getString(2131231890);
      }
      else
      {
        paramView = new String[1];
        paramView[0] = ListAdapter_NewNavi.a(e).getString(2131231890);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */