package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.d.e;
import com.estrongs.android.ui.view.ak;
import java.io.File;

class an
  implements DialogInterface.OnClickListener
{
  an(aj paramaj) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aj.a(a, aj.b(a).getText().toString());
    if ((aj.c(a) == null) || (aj.c(a).trim().length() < 1))
    {
      ak.a(aj.d(a), aj.d(a).getString(2131231769), 1000);
      return;
    }
    paramDialogInterface = (RadioButton)aj.f(a).findViewById(aj.e(a).getCheckedRadioButtonId());
    aj.b(a, paramDialogInterface.getText().toString());
    if (new File(aj.g(a)).exists())
    {
      paramDialogInterface = new e(aj.d(a), new ao(this), false);
      paramDialogInterface.setTitle(aj.d(a).getString(2131231721));
      paramDialogInterface.setMessage(String.format(aj.d(a).getString(2131231476), new Object[] { aj.c(a) + "." + aj.i(a) }));
      paramDialogInterface.show();
      return;
    }
    aj.h(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */