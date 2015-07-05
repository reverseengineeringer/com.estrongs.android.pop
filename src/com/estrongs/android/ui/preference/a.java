package com.estrongs.android.ui.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class a
  implements DialogInterface.OnClickListener
{
  a(CustomListPreference paramCustomListPreference) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    CustomListPreference.a(a, paramInt);
    a.onClick(paramDialogInterface, -1);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */