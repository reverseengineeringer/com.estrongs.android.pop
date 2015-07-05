package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;

final class b
  implements DialogInterface.OnClickListener
{
  b(Activity paramActivity, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    n.a(a, am.bA(am.d(b)), null);
    ag.a(a, 2131427976, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */