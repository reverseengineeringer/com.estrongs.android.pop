package com.estrongs.android.pop;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class s
  implements DialogInterface.OnClickListener
{
  s(n paramn) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if (!(m.a(a.c) instanceof com.estrongs.android.pop.app.d.a)) {
        throw new Exception("unsupported activity for open tree auth");
      }
    }
    catch (Exception localException)
    {
      a.a.g = 3;
      a.b.sendMessage(5, new Object[] { a.a });
      localException.printStackTrace();
      return;
      com.estrongs.fs.impl.local.a.a((com.estrongs.android.pop.app.d.a)m.a(a.c), new t(this));
      return;
    }
    finally
    {
      paramDialogInterface.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */