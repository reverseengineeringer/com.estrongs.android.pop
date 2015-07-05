package com.estrongs.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.io.PrintStream;

class d
  implements DialogInterface.OnClickListener
{
  d(c paramc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c localc = a;
    if (a.a) {}
    for (;;)
    {
      c.a(localc, paramInt);
      System.out.println("Radio clicked - " + c.a(a));
      if (c.b(a) != null) {
        c.b(a).a(f.a[c.a(a)], c.a(c.c(a), c.a(a)), c.a(a));
      }
      paramDialogInterface.dismiss();
      return;
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */