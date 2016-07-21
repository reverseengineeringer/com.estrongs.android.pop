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
import com.estrongs.android.pop.esclasses.m;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

@SuppressLint({"NewApi"})
public class PasswordPreferenceFragment
  extends m
{
  private CheckBoxPreference a;
  private Preference b;
  private CheckBoxPreference c;
  private CheckBoxPreference d;
  
  private void a()
  {
    Object localObject = new cv(getActivity()).a(2131232075).b(2131231270, new ay(this)).c(2131231265, new ax(this));
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903348, null);
    localView.findViewById(2131625228).setVisibility(8);
    localView.findViewById(2131625225).setVisibility(0);
    localView.findViewById(2131625228).setVisibility(8);
    ((EditText)localView.findViewById(2131625231)).setText("");
    ((EditText)localView.findViewById(2131625227)).setText("");
    ((EditText)localView.findViewById(2131625233)).setText("");
    ((TextView)localView.findViewById(2131625226)).setText(getText(2131231808) + " ");
    ((TextView)localView.findViewById(2131624779)).setText(getText(2131231806) + " ");
    ((TextView)localView.findViewById(2131624781)).setText(getText(2131231805) + " ");
    ((cv)localObject).a(localView);
    localObject = ((cv)localObject).b();
    ((ci)localObject).getWindow().setSoftInputMode(5);
    ((ci)localObject).show();
  }
  
  private void a(int paramInt)
  {
    Object localObject = new cv(getActivity()).a(2131231809).b(2131231270, new ba(this, paramInt)).c(2131231265, new az(this));
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903348, null);
    localView.findViewById(2131625225).setVisibility(8);
    localView.findViewById(2131625228).setVisibility(8);
    localView.findViewById(2131625228).setVisibility(8);
    ((EditText)localView.findViewById(2131625231)).setText("");
    ((EditText)localView.findViewById(2131625227)).setText("");
    ((EditText)localView.findViewById(2131625233)).setText("");
    ((TextView)localView.findViewById(2131625226)).setText(getText(2131231808) + " ");
    ((TextView)localView.findViewById(2131624779)).setText(getText(2131231806) + " ");
    ((TextView)localView.findViewById(2131624781)).setText(getText(2131231805) + " ");
    ((cv)localObject).a(localView);
    localObject = ((cv)localObject).b();
    ((ci)localObject).getWindow().setSoftInputMode(5);
    ((ci)localObject).show();
  }
  
  private void b(int paramInt)
  {
    Object localObject = new cv(getActivity()).a(2131231636).b(2131231270, new at(this, paramInt)).c(2131231265, new bb(this));
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903348, null);
    localView.findViewById(2131625228).setVisibility(8);
    localView.findViewById(2131625225).setVisibility(8);
    localView.findViewById(2131625232).setVisibility(8);
    localView.findViewById(2131625228).setVisibility(8);
    ((EditText)localView.findViewById(2131625231)).setText("");
    ((EditText)localView.findViewById(2131625227)).setText("");
    ((EditText)localView.findViewById(2131625233)).setText("");
    ((TextView)localView.findViewById(2131625226)).setText(getText(2131231808) + " ");
    ((TextView)localView.findViewById(2131624779)).setVisibility(8);
    ((TextView)localView.findViewById(2131624781)).setText(getText(2131231805) + " ");
    ((cv)localObject).a(localView);
    localObject = ((cv)localObject).b();
    ((ci)localObject).getWindow().setSoftInputMode(5);
    ((ci)localObject).show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034129);
    a = ((CheckBoxPreference)findPreference("net_passwd_enable"));
    b = findPreference("net_passwd_change");
    c = ((CheckBoxPreference)findPreference("start_passwd_enable"));
    d = ((CheckBoxPreference)findPreference("hided_dirfiles_passwd_enable"));
    if (a != null) {
      a.setOnPreferenceChangeListener(new as(this));
    }
    if (c != null) {
      c.setOnPreferenceChangeListener(new au(this));
    }
    if (d != null) {
      d.setOnPreferenceChangeListener(new av(this));
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
      b.setOnPreferenceClickListener(new aw(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.PasswordPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */