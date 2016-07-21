package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.ui.dialog.er;
import java.util.List;

class ix
  implements DialogInterface.OnClickListener
{
  ix(iv paramiv, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    List localList = iq.a(b.a).A();
    if (paramInt < a.size()) {
      iq.a(b.a).a(localList, (j)a.get(paramInt));
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      er localer = new er(iq.a(b.a), iq.a(b.a).getString(2131231703), "");
      localer.a(new iy(this, localList));
      localer.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */