package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.h;
import com.estrongs.fs.util.j;

class c
  implements DialogInterface.OnClickListener
{
  c(a parama, View paramView) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.a(b) == 3)
    {
      a.a(b, a.b(b).getText().toString());
      a locala = b;
      if (a.c(b) == null) {}
      for (paramDialogInterface = "";; paramDialogInterface = a.c(b).trim())
      {
        a.a(locala, paramDialogInterface);
        if (a.c(b).trim().length() >= 1) {
          break;
        }
        ag.a(a.d(b), a.d(b).getText(2131427854), 0);
        a.b(b).setText("/sdcard/");
        return;
      }
      try
      {
        if (!h.a(a.c(b))) {}
        for (bool = h.a(a.c(b), true); !bool; bool = true)
        {
          ag.a(a.d(b), a.d(b).getString(2131427763) + ": " + a.c(b), 0);
          return;
        }
      }
      catch (FileSystemException paramDialogInterface)
      {
        for (;;)
        {
          boolean bool = false;
        }
        if (!j.d(a.c(b)))
        {
          ag.a(a.d(b), a.d(b).getResources().getString(2131427860) + a.d(b).getResources().getString(2131428713), 0);
          return;
        }
      }
    }
    if (a.e(b))
    {
      a.a(b, new k(b));
      fb).c = ((CheckBox)a.findViewById(2131361879)).isChecked();
      fb).b = a.c(b);
      fb).a = a.a(b);
      a.a(b, true);
      b.b();
      return;
    }
    if (a.g(b) != null) {}
    for (paramDialogInterface = a.g(b).getText().toString();; paramDialogInterface = null)
    {
      new l(a.d(b), a.h(b), a.i(b), a.c(b), paramDialogInterface, a.j(b), true, false, a.a(b), null).b();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */