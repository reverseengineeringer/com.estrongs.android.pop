package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.j;
import com.estrongs.fs.impl.b.g;
import java.util.HashMap;
import java.util.Map;

class i
  implements DialogInterface.OnClickListener
{
  i(c paramc, g paramg, String paramString1, String paramString2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (paramInt == 0) {
      new j(d.a, a).a();
    }
    do
    {
      return;
      if (1 == paramInt)
      {
        if (a.b())
        {
          AppRunner.a(d.a, a.getAbsolutePath(), a);
          return;
        }
        AppRunner.s(d.a, a.getAbsolutePath());
        return;
      }
    } while (2 != paramInt);
    if (c.a(d) == null) {
      c.a(d, new HashMap());
    }
    c.a(d).put(b, c);
    paramDialogInterface.dismiss();
    if (a.b())
    {
      AppRunner.a(d.a, a.getAbsolutePath(), a);
      return;
    }
    AppRunner.s(d.a, a.getAbsolutePath());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */