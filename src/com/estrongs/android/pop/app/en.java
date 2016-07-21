package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.ui.dialog.er;
import java.util.List;

class en
  implements DialogInterface.OnClickListener
{
  en(PopAudioPlayer paramPopAudioPlayer, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    i locali = b.B();
    if (paramInt < a.size()) {
      PopAudioPlayer.a(b, locali, (j)a.get(paramInt));
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      er localer = new er(b, b.getString(2131231703), "");
      localer.a(new eo(this, locali));
      localer.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */