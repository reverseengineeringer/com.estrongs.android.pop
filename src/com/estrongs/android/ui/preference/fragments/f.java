package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.at;
import com.estrongs.android.util.bd;
import com.estrongs.fs.a.b;
import java.io.File;

class f
  implements DialogInterface.OnClickListener
{
  f(d paramd, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = a.getText().toString();
    String str2 = b.getText().toString();
    paramInt = new at().a(c.a.getActivity(), str1, str2);
    if (paramInt == 0)
    {
      str1 = new File(str1).getAbsolutePath();
      if (bd.b(str1))
      {
        if (str1.endsWith("/"))
        {
          str1 = str1 + "*";
          b.a().a(str1);
        }
      }
      else {
        ag.a(c.a.getActivity(), 2131427503, 1);
      }
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      str1 = str1 + "/*";
      break;
      if (paramInt < 0) {
        ag.a(c.a.getActivity(), 2131427504, 1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */