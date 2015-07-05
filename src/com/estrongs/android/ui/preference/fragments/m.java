package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.at;
import com.estrongs.fs.a.b;

class m
  implements DialogInterface.OnClickListener
{
  m(k paramk, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = a.getText().toString();
    String str2 = b.getText().toString();
    if (new at().b(c.a.getActivity(), str1, str2))
    {
      b.a().a("net://*");
      ag.a(c.a.getActivity(), 2131427505, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      ag.a(c.a.getActivity(), 2131427506, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */