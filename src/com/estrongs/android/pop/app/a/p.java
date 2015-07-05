package com.estrongs.android.pop.app.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.dialog.eo;
import java.util.List;

class p
  implements DialogInterface.OnClickListener
{
  p(o paramo, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ak localak = e.a(b.a).w();
    if (paramInt < a.size()) {
      e.a(b.a, localak, (al)a.get(paramInt));
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      eo localeo = new eo(e.a(b.a), e.a(b.a).getString(2131428316), "");
      localeo.a(new q(this, localak));
      localeo.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */