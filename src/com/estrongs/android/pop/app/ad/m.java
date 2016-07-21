package com.estrongs.android.pop.app.ad;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.utils.w;

final class m
  implements DialogInterface.OnClickListener
{
  m(DuSpeedBoosterController.LocationType paramLocationType, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    DuSpeedBoosterController.b(a);
    w.a(b, "com.dianxinos.optimizer.duplay", "pname", b.getPackageName(), "https://play.google.com/store/apps/details?id=com.dianxinos.optimizer.duplay&referrer=" + b.getPackageName(), true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */