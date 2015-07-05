package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.view.ag;

class aw
  implements DialogInterface.OnClickListener
{
  aw(PasswordPreferenceFragment paramPasswordPreferenceFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject3 = (cg)paramDialogInterface;
    String str = ((EditText)((cg)localObject3).findViewById(2131362490)).getText().toString();
    Object localObject2 = ((EditText)((cg)localObject3).findViewById(2131362494)).getText().toString();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new String("");
    }
    localObject3 = ((EditText)((cg)localObject3).findViewById(2131362496)).getText().toString();
    localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = new String("");
    }
    localObject3 = ad.a(a.getActivity()).G();
    if (!((String)localObject1).equals(localObject2))
    {
      ag.a(a.getActivity(), 2131428000, 1);
      paramDialogInterface.dismiss();
      return;
    }
    if (!str.equals(localObject3))
    {
      ag.a(a.getActivity(), 2131427897, 1);
      paramDialogInterface.dismiss();
      return;
    }
    if (((String)localObject1).length() > 0)
    {
      ad.a(a.getActivity()).x((String)localObject1);
      ag.a(a.getActivity(), 2131427998, 1);
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
      ag.a(a.getActivity(), 2131428164, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */