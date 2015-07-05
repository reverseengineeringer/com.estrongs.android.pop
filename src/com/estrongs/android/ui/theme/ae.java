package com.estrongs.android.ui.theme;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class ae
  implements DialogInterface.OnClickListener
{
  ae(ThemeFolderActivity paramThemeFolderActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ThemeFolderActivity.b(a);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */