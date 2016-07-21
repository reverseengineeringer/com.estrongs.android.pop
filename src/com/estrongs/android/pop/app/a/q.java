package com.estrongs.android.pop.app.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.unlock.s;

final class q
  implements DialogInterface.OnClickListener
{
  q(Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    s.a().a(a, "lock_realtimemonitor");
    n.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */