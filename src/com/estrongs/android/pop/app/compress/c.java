package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.util.j;

class c
  implements DialogInterface.OnClickListener
{
  c(a parama, View paramView) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject;
    if (a.a(b) == 3)
    {
      a.a(b, a.b(b).getText().toString());
      localObject = b;
      if (a.c(b) == null) {}
      for (paramDialogInterface = "";; paramDialogInterface = a.c(b).trim())
      {
        a.a((a)localObject, paramDialogInterface);
        if (a.c(b).trim().length() >= 1) {
          break;
        }
        com.estrongs.android.ui.view.ak.a(a.d(b), a.d(b).getText(2131231769), 0);
        a.b(b).setText("/sdcard/");
        return;
      }
      try
      {
        if (!i.a(a.c(b))) {}
        for (bool = i.a(a.c(b), true); !bool; bool = true)
        {
          com.estrongs.android.ui.view.ak.a(a.d(b), a.d(b).getString(2131231915) + ": " + a.c(b), 0);
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
          com.estrongs.android.ui.view.ak.a(a.d(b), a.d(b).getResources().getString(2131231759) + a.d(b).getResources().getString(2131232363), 0);
          return;
        }
      }
    }
    if (a.e(b))
    {
      a.a(b, new k(b));
      fb).c = ((CheckBox)a.findViewById(2131624377)).isChecked();
      fb).b = a.c(b);
      fb).a = a.a(b);
      a.a(b, true);
    }
    try
    {
      for (;;)
      {
        com.estrongs.android.j.c.a(a.d(b)).a("compress_lb", "lp_unzip");
        b.b();
        return;
        if (a.g(b) == null) {
          break label664;
        }
        paramDialogInterface = a.g(b).getText().toString();
        if (!a.h(b)) {
          break;
        }
        new l(a.d(b), a.i(b), a.j(b), a.c(b), paramDialogInterface, a.k(b), true, false, a.a(b), null).b();
      }
      localObject = new ba();
      a = a.i(b);
      b = a.j(b);
      e = a.k(b);
      f = true;
      c = a.c(b);
      g = a.a(b);
      d = paramDialogInterface;
      if (a.l(b) != null)
      {
        a.l(b).a((ba)localObject);
        a.l(b).b();
      }
      while ((a.d(b) instanceof FileExplorerActivity))
      {
        ((FileExplorerActivity)a.d(b)).f("archive://");
        break;
        com.estrongs.android.view.ak.a((ba)localObject);
      }
    }
    catch (Exception paramDialogInterface)
    {
      for (;;)
      {
        paramDialogInterface.printStackTrace();
        continue;
        label664:
        paramDialogInterface = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */