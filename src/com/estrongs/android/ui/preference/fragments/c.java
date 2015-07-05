package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class c
  implements DialogInterface.OnClickListener
{
  c(AppPreferenceFragment paramAppPreferenceFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppPreferenceFragment.d(a);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */