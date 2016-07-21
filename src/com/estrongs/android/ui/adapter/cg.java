package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;

class cg
  implements View.OnLongClickListener
{
  cg(ListAdapter_NewNavi paramListAdapter_NewNavi, a parama, int paramInt1, int paramInt2) {}
  
  public boolean onLongClick(View paramView)
  {
    boolean bool = FileExplorerActivity.a(ListAdapter_NewNavi.a(d).O(), a.b());
    int i;
    if (!a.e)
    {
      i = 0;
      bool = false;
    }
    for (;;)
    {
      int j = i;
      if (ap.ci(a.b()))
      {
        j = i;
        if (ap.ci(ListAdapter_NewNavi.a(d).O().c())) {
          j = 0;
        }
      }
      paramView = a.g;
      ci localci = new cv(ListAdapter_NewNavi.a(d)).a(a.b).b();
      String[] arrayOfString = new String[10];
      int[] arrayOfInt = new int[10];
      if (bool)
      {
        arrayOfString[0] = ListAdapter_NewNavi.a(d).getString(2131231889);
        arrayOfInt[0] = 0;
      }
      for (i = 1;; i = 0)
      {
        if (j != 0)
        {
          arrayOfString[i] = ListAdapter_NewNavi.a(d).getString(2131231890);
          arrayOfInt[i] = 1;
          i += 1;
        }
        for (;;)
        {
          j = i;
          if (paramView == null)
          {
            arrayOfString[i] = ListAdapter_NewNavi.a(d).getString(2131230881);
            arrayOfInt[i] = 2;
            j = i + 1;
          }
          arrayOfString[j] = ListAdapter_NewNavi.a(d).getString(2131232219);
          arrayOfInt[j] = 3;
          i = j + 1;
          arrayOfString[i] = ListAdapter_NewNavi.a(d).getString(2131231705);
          arrayOfInt[i] = 4;
          localci.setItems((String[])bk.b(arrayOfString, i + 1), 0, new ch(this, arrayOfInt, paramView));
          localci.setSelectable(false);
          localci.show();
          return true;
        }
      }
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */