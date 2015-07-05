package com.estrongs.android.ui.theme;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class z
  implements DialogInterface.OnClickListener
{
  z(ThemeColorActivity paramThemeColorActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */