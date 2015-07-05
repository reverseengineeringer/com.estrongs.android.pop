package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;
import java.util.List;

class al
  implements DialogInterface.OnClickListener
{
  al(ad paramad) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.g.setText((CharSequence)a.f.get(a.h));
    a.a(a.h, a.g.getText());
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */