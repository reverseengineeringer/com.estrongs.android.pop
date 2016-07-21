package com.estrongs.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.io.PrintStream;

class c
  implements DialogInterface.OnClickListener
{
  c(b paramb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b localb = a;
    if (a.a) {}
    for (;;)
    {
      b.a(localb, paramInt);
      System.out.println("Radio clicked - " + b.a(a));
      if (b.b(a) != null) {
        b.b(a).a(e.a[b.a(a)], b.a(b.c(a), b.a(a)), b.a(a));
      }
      paramDialogInterface.dismiss();
      return;
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */