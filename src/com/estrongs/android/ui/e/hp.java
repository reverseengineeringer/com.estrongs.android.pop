package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.al;
import com.estrongs.android.ui.dialog.eo;
import java.util.List;

class hp
  implements DialogInterface.OnClickListener
{
  hp(hn paramhn, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    List localList = hl.a(b.a).v();
    if (paramInt < a.size()) {
      hl.a(b.a).a(localList, (al)a.get(paramInt));
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      eo localeo = new eo(hl.a(b.a), hl.a(b.a).getString(2131428316), "");
      localeo.a(new hq(this, localList));
      localeo.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */