package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.dialog.ProgressDialog;

class bx
  implements Runnable
{
  bx(bw parambw) {}
  
  public void run()
  {
    if (a.b[0] != null) {
      a.b[0].hide();
    }
    Intent localIntent = new Intent(a.c, PopAudioPlayer.class);
    a.c.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */