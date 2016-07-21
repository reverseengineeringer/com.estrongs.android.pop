package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ax;
import com.estrongs.android.util.bk;
import com.estrongs.fs.a.b;
import java.io.File;

class g
  implements DialogInterface.OnClickListener
{
  g(e parame, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = a.getText().toString();
    String str2 = b.getText().toString();
    paramInt = new ax().a(c.a.getActivity(), str1, str2);
    if (paramInt == 0)
    {
      str1 = new File(str1).getAbsolutePath();
      if (bk.b(str1))
      {
        if (str1.endsWith("/"))
        {
          str1 = str1 + "*";
          b.a().a(str1);
        }
      }
      else {
        ak.a(c.a.getActivity(), 2131232110, 1);
      }
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      str1 = str1 + "/*";
      break;
      if (paramInt < 0) {
        ak.a(c.a.getActivity(), 2131232107, 1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */