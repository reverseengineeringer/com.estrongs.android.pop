package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.a.e;
import com.estrongs.android.ui.view.ag;
import java.io.File;

class am
  implements DialogInterface.OnClickListener
{
  am(ai paramai) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ai.a(a, ai.b(a).getText().toString());
    if ((ai.c(a) == null) || (ai.c(a).trim().length() < 1))
    {
      ag.a(ai.d(a), ai.d(a).getString(2131427854), 1000);
      return;
    }
    paramDialogInterface = (RadioButton)ai.f(a).findViewById(ai.e(a).getCheckedRadioButtonId());
    ai.b(a, paramDialogInterface.getText().toString());
    if (new File(ai.g(a)).exists())
    {
      paramDialogInterface = new e(ai.d(a), new an(this), false);
      paramDialogInterface.setTitle(ai.d(a).getString(2131427401));
      paramDialogInterface.setMessage(String.format(ai.d(a).getString(2131428092), new Object[] { ai.c(a) + "." + ai.i(a) }));
      paramDialogInterface.show();
      return;
    }
    ai.h(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */