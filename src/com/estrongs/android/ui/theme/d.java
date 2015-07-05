package com.estrongs.android.ui.theme;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class d
  implements DialogInterface.OnClickListener
{
  d(b paramb, ai paramai) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((a.f()) && (ModifyThemeActivity.b(b.a) == ModifyThemeActivity.a(b.a).e())) {
      b.a.setResult(-1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */