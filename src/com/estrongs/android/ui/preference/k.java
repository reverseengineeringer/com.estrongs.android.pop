package com.estrongs.android.ui.preference;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.b;

class k
  implements Preference.OnPreferenceClickListener
{
  k(FtpServerPreference paramFtpServerPreference) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = ad.a(a).X();
    paramPreference = new b(a, paramPreference, new l(this, paramPreference));
    a = false;
    paramPreference.a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */