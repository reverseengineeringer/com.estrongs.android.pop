package com.estrongs.android.ui.theme;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class aa
  implements DialogInterface.OnClickListener
{
  aa(ThemeColorActivity paramThemeColorActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ThemeColorActivity.d(a);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */