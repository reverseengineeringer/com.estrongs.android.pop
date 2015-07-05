package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.fs.impl.b.f;
import java.util.HashMap;
import java.util.Map;

class j
  implements DialogInterface.OnClickListener
{
  j(c paramc, f paramf, String paramString1, String paramString2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (paramInt == 0)
    {
      new com.estrongs.android.ui.dialog.j(d.a, a).a();
      return;
    }
    if (1 == paramInt)
    {
      if (a.b())
      {
        AppRunner.a(d.a, a.getAbsolutePath(), a);
        return;
      }
      AppRunner.r(d.a, a.getAbsolutePath());
      return;
    }
    if (2 == paramInt)
    {
      c.a(d, d.a, b, c, 1000L);
      return;
    }
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
    AppRunner.r(d.a, a.getAbsolutePath());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */