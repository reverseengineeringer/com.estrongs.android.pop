package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.view.ESVideoView;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class jn
  implements DialogInterface.OnClickListener
{
  jn(jl paramjl, String paramString, boolean paramBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (PopVideoPlayer.a(c.a).isPlaying()) {
      PopVideoPlayer.a(c.a).a();
    }
    try
    {
      paramDialogInterface = new ArrayList(1);
      paramDialogInterface.add(PopVideoPlayer.E(c.a).j(a));
      new jo(this, paramDialogInterface).start();
      return;
    }
    catch (Exception paramDialogInterface)
    {
      paramDialogInterface.printStackTrace();
      c.a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */