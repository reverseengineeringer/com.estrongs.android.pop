package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.widget.EditText;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ax;
import com.estrongs.fs.a.b;

class n
  implements DialogInterface.OnClickListener
{
  n(l paraml, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = a.getText().toString();
    String str2 = b.getText().toString();
    switch (new ax().b(c.a.getActivity(), str1, str2))
    {
    default: 
      ak.a(c.a.getActivity(), 2131232111, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      b.a().a("net://*");
      ak.a(c.a.getActivity(), 2131232112, 1);
      BackupPreferenceFragment.a(c.a).post(new o(this));
      continue;
      ak.a(c.a.getActivity(), 2131232111, 1);
      continue;
      ak.a(c.a.getActivity(), 2131232109, 1);
      continue;
      ak.a(c.a.getActivity(), 2131232108, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */