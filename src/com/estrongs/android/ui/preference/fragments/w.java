package com.estrongs.android.ui.preference.fragments;

import android.app.ProgressDialog;
import android.preference.Preference;
import com.estrongs.android.ui.view.ak;

class w
  implements Runnable
{
  w(CleanPreferenceFragment paramCleanPreferenceFragment) {}
  
  public void run()
  {
    CleanPreferenceFragment.b(a).setEnabled(false);
    try
    {
      CleanPreferenceFragment.c(a).dismiss();
      ak.a(a.getActivity(), 2131231319, 0);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */