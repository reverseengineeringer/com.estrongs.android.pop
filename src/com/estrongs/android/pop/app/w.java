package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.chromecast.CastDeviceInfo;
import java.util.List;

class w
  implements DialogInterface.OnClickListener
{
  w(r paramr, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < a.size()))
    {
      r.a(b).a((CastDeviceInfo)a.get(paramInt));
      r.h(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */