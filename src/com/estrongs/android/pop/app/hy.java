package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.at;
import com.estrongs.fs.a.b;

class hy
  implements DialogInterface.OnClickListener
{
  hy(hw paramhw, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = a.getText().toString();
    String str2 = b.getText().toString();
    if (new at().b(c.a, str1, str2))
    {
      b.a().a("net://*");
      ag.a(c.a, 2131427505, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      ag.a(c.a, 2131427506, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */