package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a.c;
import java.util.Map;

class lx
  implements DialogInterface.OnClickListener
{
  lx(ShowDialogActivity paramShowDialogActivity, c paramc, com.estrongs.a.a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.estrongs.android.d.a.a.remove(Long.valueOf(ShowDialogActivity.a(c)));
    a.d = true;
    b.sendMessage(5, new Object[] { a });
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */