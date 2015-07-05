package com.estrongs.android.ui.a;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;

class bx
  implements View.OnLongClickListener
{
  bx(aa paramaa, a parama, int paramInt1, int paramInt2) {}
  
  public boolean onLongClick(View paramView)
  {
    boolean bool = FileExplorerActivity.a(aa.a(d).y(), a.b());
    int i;
    if (!a.e)
    {
      i = 0;
      bool = false;
    }
    for (;;)
    {
      int j = i;
      if (am.bQ(a.b()))
      {
        j = i;
        if (am.bQ(aa.a(d).y().c())) {
          j = 0;
        }
      }
      paramView = a.g;
      cg localcg = new ct(aa.a(d)).a(a.b).b();
      String[] arrayOfString = new String[10];
      int[] arrayOfInt = new int[10];
      if (bool)
      {
        arrayOfString[0] = aa.a(d).getString(2131428217);
        arrayOfInt[0] = 0;
      }
      for (i = 1;; i = 0)
      {
        if (j != 0)
        {
          arrayOfString[i] = aa.a(d).getString(2131428218);
          arrayOfInt[i] = 1;
          i += 1;
        }
        for (;;)
        {
          j = i;
          if (paramView == null)
          {
            arrayOfString[i] = aa.a(d).getString(2131427355);
            arrayOfInt[i] = 2;
            j = i + 1;
          }
          arrayOfString[j] = aa.a(d).getString(2131427577);
          arrayOfInt[j] = 3;
          i = j + 1;
          arrayOfString[i] = aa.a(d).getString(2131427937);
          arrayOfInt[i] = 4;
          localcg.setItems((String[])bd.b(arrayOfString, i + 1), 0, new by(this, arrayOfInt, paramView));
          localcg.setSelectable(false);
          localcg.show();
          return true;
        }
      }
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */