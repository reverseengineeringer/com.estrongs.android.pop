package com.estrongs.android.ui.theme;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class ah
  implements DialogInterface.OnClickListener
{
  ah(ThemeFolderActivity paramThemeFolderActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ThemeFolderActivity.a(a);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */