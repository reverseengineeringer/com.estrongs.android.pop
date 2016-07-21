package com.estrongs.android.ui.theme;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class as
  implements DialogInterface.OnClickListener
{
  as(ThemeLayoutActivity paramThemeLayoutActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ThemeLayoutActivity.c(a);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */