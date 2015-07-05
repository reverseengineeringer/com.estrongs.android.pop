package com.estrongs.android.ui.preference.fragments;

import android.app.ProgressDialog;
import android.preference.Preference;
import com.estrongs.android.ui.view.ag;

class u
  implements Runnable
{
  u(CleanPreferenceFragment paramCleanPreferenceFragment) {}
  
  public void run()
  {
    CleanPreferenceFragment.b(a).setEnabled(false);
    try
    {
      CleanPreferenceFragment.c(a).dismiss();
      ag.a(a.getActivity(), 2131427830, 0);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */