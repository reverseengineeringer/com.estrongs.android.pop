package com.estrongs.android.pop.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;

final class c
  implements DialogInterface.OnClickListener
{
  c(Activity paramActivity, String paramString, Runnable paramRunnable) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (bd.a(a.b()))
    {
      ag.a(a, a.getString(2131427727, new Object[] { b }), 1);
      return;
    }
    a.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */