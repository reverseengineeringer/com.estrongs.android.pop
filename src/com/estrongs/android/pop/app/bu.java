package com.estrongs.android.pop.app;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

class bu
  implements Preference.OnPreferenceChangeListener
{
  bu(ESNetSettingActivity paramESNetSettingActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    a.b.setChecked(false);
    a.c.setChecked(true);
    a.d = k.a(a).inflate(2130903184, null);
    a.e = ((EditText)a.d.findViewById(2131624635));
    a.f = ((EditText)a.d.findViewById(2131624636));
    paramPreference = ad.a(a).ai();
    if (paramPreference != null) {
      a.e.setText(paramPreference);
    }
    paramPreference = ad.a(a).aj();
    if (paramPreference != null) {
      a.f.setText(paramPreference);
    }
    paramPreference = new cv(a).a(a.d).b(2131231270, new bw(this)).c(2131231265, new bv(this)).a(2131231426).b();
    paramPreference.setOnDismissListener(new bx(this));
    paramPreference.show();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */