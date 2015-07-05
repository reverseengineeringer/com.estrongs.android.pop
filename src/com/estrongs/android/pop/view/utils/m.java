package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.be;

final class m
  implements DialogInterface.OnClickListener
{
  m(cg paramcg, String paramString, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.dismiss();
    be.c().a(b, false);
    if (paramInt == 0) {
      AppRunner.a(c, b, false, true);
    }
    do
    {
      return;
      if (paramInt == 1)
      {
        AppRunner.a(c, b, 0, true);
        return;
      }
      if (paramInt == 2)
      {
        AppRunner.b(c, b, 0, true);
        return;
      }
      if (paramInt == 3)
      {
        AppRunner.a(c, b, b, true);
        return;
      }
    } while (paramInt != 4);
    AppRunner.c(c, b, 0, true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */