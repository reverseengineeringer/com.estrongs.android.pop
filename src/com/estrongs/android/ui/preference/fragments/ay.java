package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ak;

class ay
  implements DialogInterface.OnClickListener
{
  ay(PasswordPreferenceFragment paramPasswordPreferenceFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject3 = (ci)paramDialogInterface;
    String str = ((EditText)((ci)localObject3).findViewById(2131625227)).getText().toString();
    Object localObject2 = ((EditText)((ci)localObject3).findViewById(2131625231)).getText().toString();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new String("");
    }
    localObject3 = ((EditText)((ci)localObject3).findViewById(2131625233)).getText().toString();
    localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = new String("");
    }
    localObject3 = ad.a(a.getActivity()).H();
    if (!((String)localObject1).equals(localObject2))
    {
      ak.a(a.getActivity(), 2131231807, 1);
      paramDialogInterface.dismiss();
      return;
    }
    if (!str.equals(localObject3))
    {
      ak.a(a.getActivity(), 2131231784, 1);
      paramDialogInterface.dismiss();
      return;
    }
    if (((String)localObject1).length() > 0)
    {
      ad.a(a.getActivity()).x((String)localObject1);
      ak.a(a.getActivity(), 2131231804, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      ad.a(a.getActivity()).x((String)localObject1);
      localObject1 = FexApplication.a();
      PasswordPreferenceFragment.c(a).setChecked(false);
      ((FexApplication)localObject1).c(false);
      PasswordPreferenceFragment.d(a).setChecked(false);
      ((FexApplication)localObject1).d(false);
      PasswordPreferenceFragment.e(a).setChecked(false);
      ((FexApplication)localObject1).e(false);
      PasswordPreferenceFragment.a(a).setEnabled(false);
      ak.a(a.getActivity(), 2131231911, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */