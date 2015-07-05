package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

class k
  implements Preference.OnPreferenceClickListener
{
  k(BackupPreferenceFragment paramBackupPreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = g.a(a.getActivity()).inflate(2130903061, null);
    Object localObject1 = (Button)paramPreference.findViewById(2131361960);
    EditText localEditText = (EditText)paramPreference.findViewById(2131361959);
    localEditText.setText(ad.a(a.getActivity()).au());
    Object localObject2 = (EditText)paramPreference.findViewById(2131361963);
    ((TextView)paramPreference.findViewById(2131361958)).setText(2131428148);
    ((TextView)paramPreference.findViewById(2131361962)).setText(2131428147);
    localObject2 = new ct(a.getActivity()).a(2131427380).b(2131427339, new m(this, localEditText, (EditText)localObject2)).c(2131427340, new l(this));
    ((Button)localObject1).setOnClickListener(new n(this, localEditText));
    localObject1 = ((ct)localObject2).b();
    ((cg)localObject1).setContentView(paramPreference);
    ((cg)localObject1).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */