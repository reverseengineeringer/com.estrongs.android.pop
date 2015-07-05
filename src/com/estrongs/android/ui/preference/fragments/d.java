package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.am;

class d
  implements Preference.OnPreferenceClickListener
{
  d(BackupPreferenceFragment paramBackupPreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = com.estrongs.android.pop.esclasses.g.a(a.getActivity()).inflate(2130903061, null);
    Object localObject1 = (Button)paramPreference.findViewById(2131361960);
    EditText localEditText = (EditText)paramPreference.findViewById(2131361959);
    Object localObject2 = (EditText)paramPreference.findViewById(2131361963);
    ((TextView)paramPreference.findViewById(2131361958)).setText(2131428146);
    ((TextView)paramPreference.findViewById(2131361962)).setText(2131428147);
    String str = am.bk(ad.a(a.getActivity()).au());
    if (str != null) {
      localEditText.setText(str);
    }
    localObject2 = new ct(a.getActivity()).a(2131427379).b(2131427339, new f(this, localEditText, (EditText)localObject2)).c(2131427340, new e(this));
    ((Button)localObject1).setOnClickListener(new g(this, str, localEditText));
    localObject1 = ((ct)localObject2).b();
    ((cg)localObject1).setContentView(paramPreference);
    ((cg)localObject1).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */