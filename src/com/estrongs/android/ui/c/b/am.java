package com.estrongs.android.ui.c.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;

class am
  implements DialogInterface.OnClickListener
{
  am(u paramu, List paramList, boolean paramBoolean, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = (String)a.get(paramInt);
    if (b) {
      d.f.add(str);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      d.c();
      d.l();
      return;
      paramInt = d.f.indexOf(c);
      d.f.set(paramInt, str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */