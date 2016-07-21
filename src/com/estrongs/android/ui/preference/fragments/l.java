package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

class l
  implements Preference.OnPreferenceClickListener
{
  l(BackupPreferenceFragment paramBackupPreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = k.a(a.getActivity()).inflate(2130903125, null);
    Object localObject1 = (Button)paramPreference.findViewById(2131624469);
    EditText localEditText = (EditText)paramPreference.findViewById(2131624470);
    localEditText.setText(ad.a(a.getActivity()).av());
    Object localObject2 = (EditText)paramPreference.findViewById(2131624473);
    ((TextView)paramPreference.findViewById(2131624468)).setText(2131231069);
    ((TextView)paramPreference.findViewById(2131624472)).setText(2131231068);
    localObject2 = new cv(a.getActivity()).a(2131230882).b(2131231270, new n(this, localEditText, (EditText)localObject2)).c(2131231265, new m(this));
    ((Button)localObject1).setOnClickListener(new p(this, localEditText));
    localObject1 = ((cv)localObject2).b();
    ((ci)localObject1).setContentView(paramPreference);
    ((ci)localObject1).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */