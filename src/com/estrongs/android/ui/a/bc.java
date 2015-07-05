package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ag;

class bc
  implements DialogInterface.OnClickListener
{
  bc(bb parambb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = true;
    if ((paramInt == 0) || (paramInt == 1)) {
      if (paramInt == 0) {
        if (bool != aa.c(a.a).aD())
        {
          aa.c(a.a).t(bool);
          if (bool) {
            ag.a(aa.a(a.a), 2131428424, 0);
          }
          a.a.a();
        }
      }
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      bool = false;
      break;
      if (paramInt == 2) {
        aa.c(aa.a(a.a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */