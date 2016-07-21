package com.estrongs.android.pop.app.f;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;
import java.util.List;

class af
  implements DialogInterface.OnClickListener
{
  af(ae paramae) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.b.setText((CharSequence)a.c.f.get(paramInt));
    a.c.a(paramInt, a.c.f.get(paramInt));
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */