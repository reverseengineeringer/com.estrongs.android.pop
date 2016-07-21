package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class jp
  implements DialogInterface.OnCancelListener
{
  jp(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (PopVideoPlayer.b(a)) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */