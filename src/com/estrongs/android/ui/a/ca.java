package com.estrongs.android.ui.a;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.bd;

class ca
  implements View.OnLongClickListener
{
  ca(aa paramaa, int paramInt1, int paramInt2, a parama, boolean paramBoolean) {}
  
  public boolean onLongClick(View paramView)
  {
    if ((a == 3) && (b == 2)) {}
    while ((c.b() == null) && (c.c() == null)) {
      return true;
    }
    cg localcg = new ct(aa.a(e)).a(c.b).b();
    Object localObject = c.b();
    paramView = (View)localObject;
    if ("#home#".equals(localObject)) {
      paramView = aa.c(e).j("Market");
    }
    boolean bool = FileExplorerActivity.a(aa.a(e).y(), paramView);
    int i;
    if (c.c() != null)
    {
      i = 1;
      if (paramView != null) {
        break label254;
      }
      paramView = new String[0];
    }
    for (;;)
    {
      localObject = paramView;
      if (d)
      {
        localObject = (String[])bd.b(paramView, paramView.length + 1);
        localObject[(localObject.length - 1)] = aa.a(e).getString(2131428443);
      }
      paramView = (View)localObject;
      if (i != 0)
      {
        paramView = (String[])bd.b((Object[])localObject, localObject.length + 1);
        paramView[(paramView.length - 1)] = aa.a(e).getString(2131427485);
      }
      localcg.setItems(paramView, 0, new cb(this, bool));
      localcg.setSelectable(false);
      localcg.show();
      return true;
      i = 0;
      break;
      label254:
      if (bool)
      {
        paramView = new String[2];
        paramView[0] = aa.a(e).getString(2131428217);
        paramView[1] = aa.a(e).getString(2131428218);
      }
      else
      {
        paramView = new String[1];
        paramView[0] = aa.a(e).getString(2131428218);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */