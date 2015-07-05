package com.estrongs.android.ui.c.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.dialog.fc;
import com.estrongs.android.ui.e.ie;

class e
  implements DialogInterface.OnClickListener
{
  e(b paramb, boolean paramBoolean, String paramString, ShortcutFormat paramShortcutFormat) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0) {
      new fc(d.a, false).a();
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1)
      {
        if (a) {
          cu.b(b);
        } else {
          ie.a(d.a, c.shortcutName, null);
        }
      }
      else {
        b.c(d, c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */