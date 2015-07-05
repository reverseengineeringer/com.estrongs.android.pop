package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.ui.notification.e;
import com.estrongs.android.view.ak;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;

class js
  implements DialogInterface.OnClickListener
{
  js(ix paramix) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e.b(ix.a(a).getTaskId());
    if ((ix.a(a) instanceof k)) {
      a.setTitle(a.mContext.getString(2131428662));
    }
    for (;;)
    {
      ix.d(a);
      ix.e(a);
      ix.f(a).c(0);
      a.a(null);
      if ((ix.a(a) instanceof r)) {
        ((r)ix.a(a)).f(true);
      }
      ix.a(a).execute();
      return;
      if ((ix.a(a) instanceof ao)) {
        a.setTitle(a.mContext.getString(2131427459));
      } else if ((ix.a(a) instanceof r)) {
        a.setTitle(a.mContext.getString(2131427460));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */