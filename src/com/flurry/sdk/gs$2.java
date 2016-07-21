package com.flurry.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.HashMap;
import java.util.Map;

class gs$2
  implements DialogInterface.OnClickListener
{
  gs$2(gs paramgs, a parama, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sourceEvent", a.c().a.a());
    c.a(bb.s, localHashMap, c.getAdController(), b + 1);
    if ((paramDialogInterface != null) && (c.isViewAttachedToActivity()))
    {
      paramDialogInterface.dismiss();
      if (paramDialogInterface == gs.b(c))
      {
        gs.a(c, null);
        kg.a(3, gs.c(c), "Setting fAlertDialog to null.");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */