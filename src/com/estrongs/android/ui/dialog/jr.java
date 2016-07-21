package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.view.bo;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;

class jr
  implements DialogInterface.OnClickListener
{
  jr(jo paramjo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((jh.a(a.c.a) instanceof k)) {
      a.c.a.setTitle(a.c.a.mContext.getString(2131232200));
    }
    for (;;)
    {
      jh.d(a.c.a);
      jh.b(a.c.a, true);
      jh.f(a.c.a).d(0);
      a.c.a.a(null);
      jh.a(a.c.a).addProgressListener(fa.c.a).e);
      jh.a(a.c.a).addTaskStatusChangeListener(jh.n(a.c.a));
      jh.e(a.c.a);
      if ((jh.a(a.c.a) instanceof r)) {
        ((r)jh.a(a.c.a)).f(true);
      }
      jh.a(a.c.a).execute();
      return;
      if ((jh.a(a.c.a) instanceof aq)) {
        a.c.a.setTitle(a.c.a.mContext.getString(2131232184));
      } else if ((jh.a(a.c.a) instanceof r)) {
        a.c.a.setTitle(a.c.a.mContext.getString(2131232173));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */