package com.estrongs.android.pop.app;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.an;

class gu
  implements Preference.OnPreferenceClickListener
{
  gu(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    if (an.d())
    {
      paramPreference = new Intent();
      paramPreference.setClassName(a.getPackageName(), HelpActivity.class.getName());
      a.startActivity(paramPreference);
    }
    for (;;)
    {
      return true;
      paramPreference = new cv(a);
      paramPreference.a(a.getText(2131231714)).b(a.getText(2131232382)).a(2131231270, new gv(this));
      paramPreference.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */