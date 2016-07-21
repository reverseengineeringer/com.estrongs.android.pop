package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.ui.dialog.kq;
import java.util.Locale;

class bf
  implements Preference.OnPreferenceClickListener
{
  bf(UpgradePreferenceFragment paramUpgradePreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    new kq(a.getActivity(), 1, "http://update.estrongs.com/up?id=1&l=" + Locale.getDefault().toString().toLowerCase() + "&channel=" + a.b).b();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */