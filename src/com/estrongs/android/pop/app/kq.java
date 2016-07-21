package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class kq
  implements DialogInterface.OnClickListener
{
  kq(ko paramko) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (PopVideoPlayer.r(a.a).p()) {
      PopVideoPlayer.c(a.a, true);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (PopVideoPlayer.t(a.a) == null) {
        PopVideoPlayer.u(a.a);
      }
      PopVideoPlayer.t(a.a).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */