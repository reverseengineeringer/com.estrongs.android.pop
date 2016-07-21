package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.ui.dialog.kq;
import java.util.Locale;

class iv
  implements Preference.OnPreferenceClickListener
{
  iv(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    new kq(a, 1, "http://update.estrongs.com/up?id=1&l=" + Locale.getDefault().toString().toLowerCase() + "&channel=" + a.b).b();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */