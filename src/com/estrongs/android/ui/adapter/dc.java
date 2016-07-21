package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import com.estrongs.android.j.c;
import java.util.List;

class dc
  implements DialogInterface.OnClickListener
{
  dc(cz paramcz, Handler paramHandler, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.sendEmptyMessage(((Integer)b.get(paramInt)).intValue());
    c.a(c.a.a).a("AppManager_Show");
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */