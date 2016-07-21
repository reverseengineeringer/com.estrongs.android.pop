package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.ui.notification.f;
import com.estrongs.android.view.bo;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;

class kd
  implements DialogInterface.OnClickListener
{
  kd(jh paramjh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    f.b(jh.a(a).getTaskId());
    if ((jh.a(a) instanceof k)) {
      a.setTitle(a.mContext.getString(2131232200));
    }
    for (;;)
    {
      jh.d(a);
      jh.e(a);
      jh.f(a).d(0);
      a.a(null);
      if ((jh.a(a) instanceof r)) {
        ((r)jh.a(a)).f(true);
      }
      jh.a(a).execute();
      return;
      if ((jh.a(a) instanceof aq)) {
        a.setTitle(a.mContext.getString(2131232184));
      } else if ((jh.a(a) instanceof r)) {
        a.setTitle(a.mContext.getString(2131232173));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */