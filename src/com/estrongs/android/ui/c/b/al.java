package com.estrongs.android.ui.c.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.c.a.h;
import java.util.List;

class al
  implements DialogInterface.OnClickListener
{
  al(u paramu, boolean paramBoolean, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((a) && (paramInt == 0)) {
      u.a(c, b.b(), true);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (((a) && (paramInt == 1)) || ((!a) && (paramInt == 0)))
      {
        u.a(c, b.b(), false);
      }
      else
      {
        c.f.remove(b.b());
        c.c();
        c.l();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */