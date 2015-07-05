package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.view.ak;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;

class jh
  implements DialogInterface.OnClickListener
{
  jh(je paramje) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((ix.a(a.c.a) instanceof k)) {
      a.c.a.setTitle(a.c.a.mContext.getString(2131428662));
    }
    for (;;)
    {
      ix.d(a.c.a);
      ix.b(a.c.a, true);
      ix.f(a.c.a).c(0);
      a.c.a.a(null);
      ix.a(a.c.a).addProgressListener(fa.c.a).c);
      ix.a(a.c.a).addTaskStatusChangeListener(ix.n(a.c.a));
      ix.e(a.c.a);
      if ((ix.a(a.c.a) instanceof r)) {
        ((r)ix.a(a.c.a)).f(true);
      }
      ix.a(a.c.a).execute();
      return;
      if ((ix.a(a.c.a) instanceof ao)) {
        a.c.a.setTitle(a.c.a.mContext.getString(2131427459));
      } else if ((ix.a(a.c.a) instanceof r)) {
        a.c.a.setTitle(a.c.a.mContext.getString(2131427460));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */