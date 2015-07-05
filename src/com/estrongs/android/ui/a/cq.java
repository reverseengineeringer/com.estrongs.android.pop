package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import com.estrongs.android.util.a;
import java.util.List;

class cq
  implements DialogInterface.OnClickListener
{
  cq(cn paramcn, Handler paramHandler, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.sendEmptyMessage(((Integer)b.get(paramInt)).intValue());
    if (a.a() != null) {
      a.a().c("AppManager_Show", "AppManager_Show");
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */