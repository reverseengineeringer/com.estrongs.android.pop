package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

class am
  implements DialogInterface.OnClickListener
{
  am(ad paramad, EditText paramEditText1, EditText paramEditText2, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = 0;
    try
    {
      paramInt = Integer.parseInt(a.getText().toString());
      try
      {
        int j = Integer.parseInt(b.getText().toString());
        i = j;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      d.a(paramInt, c[ad.b(d)], i, c[ad.a(d)]);
      paramDialogInterface.dismiss();
      return;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        paramInt = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */