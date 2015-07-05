package com.estrongs.android.pop.app;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

class bq
  implements Preference.OnPreferenceChangeListener
{
  bq(ESNetSettingActivity paramESNetSettingActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    a.b.setChecked(false);
    a.c.setChecked(true);
    a.d = g.a(a).inflate(2130903096, null);
    a.e = ((EditText)a.d.findViewById(2131362071));
    a.f = ((EditText)a.d.findViewById(2131362072));
    paramPreference = ad.a(a).ah();
    if (paramPreference != null) {
      a.e.setText(paramPreference);
    }
    paramPreference = ad.a(a).ai();
    if (paramPreference != null) {
      a.f.setText(paramPreference);
    }
    paramPreference = new ct(a).a(a.d).b(2131427339, new bs(this)).c(2131427340, new br(this)).a(2131428252).b();
    paramPreference.setOnDismissListener(new bt(this));
    paramPreference.show();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */