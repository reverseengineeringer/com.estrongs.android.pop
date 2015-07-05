package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

@SuppressLint({"NewApi"})
public class PasswordPreferenceFragment
  extends i
{
  private CheckBoxPreference a;
  private Preference b;
  private CheckBoxPreference c;
  private CheckBoxPreference d;
  
  private void a()
  {
    Object localObject = new ct(getActivity()).a(2131427995).b(2131427339, new aw(this)).c(2131427340, new av(this));
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903197, null);
    localView.findViewById(2131362491).setVisibility(8);
    localView.findViewById(2131362488).setVisibility(0);
    localView.findViewById(2131362491).setVisibility(8);
    ((EditText)localView.findViewById(2131362494)).setText("");
    ((EditText)localView.findViewById(2131362490)).setText("");
    ((EditText)localView.findViewById(2131362496)).setText("");
    ((TextView)localView.findViewById(2131362489)).setText(getText(2131428002) + " ");
    ((TextView)localView.findViewById(2131362193)).setText(getText(2131428001) + " ");
    ((TextView)localView.findViewById(2131362195)).setText(getText(2131428003) + " ");
    ((ct)localObject).a(localView);
    localObject = ((ct)localObject).b();
    ((cg)localObject).getWindow().setSoftInputMode(5);
    ((cg)localObject).show();
  }
  
  private void a(int paramInt)
  {
    Object localObject = new ct(getActivity()).a(2131427997).b(2131427339, new ay(this, paramInt)).c(2131427340, new ax(this));
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903197, null);
    localView.findViewById(2131362488).setVisibility(8);
    localView.findViewById(2131362491).setVisibility(8);
    localView.findViewById(2131362491).setVisibility(8);
    ((EditText)localView.findViewById(2131362494)).setText("");
    ((EditText)localView.findViewById(2131362490)).setText("");
    ((EditText)localView.findViewById(2131362496)).setText("");
    ((TextView)localView.findViewById(2131362489)).setText(getText(2131428002) + " ");
    ((TextView)localView.findViewById(2131362193)).setText(getText(2131428001) + " ");
    ((TextView)localView.findViewById(2131362195)).setText(getText(2131428003) + " ");
    ((ct)localObject).a(localView);
    localObject = ((ct)localObject).b();
    ((cg)localObject).getWindow().setSoftInputMode(5);
    ((cg)localObject).show();
  }
  
  private void b(int paramInt)
  {
    Object localObject = new ct(getActivity()).a(2131427896).b(2131427339, new ar(this, paramInt)).c(2131427340, new az(this));
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903197, null);
    localView.findViewById(2131362491).setVisibility(8);
    localView.findViewById(2131362488).setVisibility(8);
    localView.findViewById(2131362495).setVisibility(8);
    localView.findViewById(2131362491).setVisibility(8);
    ((EditText)localView.findViewById(2131362494)).setText("");
    ((EditText)localView.findViewById(2131362490)).setText("");
    ((EditText)localView.findViewById(2131362496)).setText("");
    ((TextView)localView.findViewById(2131362489)).setText(getText(2131428002) + " ");
    ((TextView)localView.findViewById(2131362193)).setVisibility(8);
    ((TextView)localView.findViewById(2131362195)).setText(getText(2131428003) + " ");
    ((ct)localObject).a(localView);
    localObject = ((ct)localObject).b();
    ((cg)localObject).getWindow().setSoftInputMode(5);
    ((cg)localObject).show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034128);
    a = ((CheckBoxPreference)findPreference("net_passwd_enable"));
    b = findPreference("net_passwd_change");
    c = ((CheckBoxPreference)findPreference("start_passwd_enable"));
    d = ((CheckBoxPreference)findPreference("hided_dirfiles_passwd_enable"));
    if (a != null) {
      a.setOnPreferenceChangeListener(new aq(this));
    }
    if (c != null) {
      c.setOnPreferenceChangeListener(new as(this));
    }
    if (d != null) {
      d.setOnPreferenceChangeListener(new at(this));
    }
    if ((b != null) && (a != null))
    {
      b.setEnabled(false);
      if (a.isChecked()) {
        b.setEnabled(true);
      }
      if (c.isChecked()) {
        b.setEnabled(true);
      }
      if (d.isChecked()) {
        b.setEnabled(true);
      }
      b.setOnPreferenceClickListener(new au(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.PasswordPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */