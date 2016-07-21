package com.flurry.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class gs$6
  implements DialogInterface.OnDismissListener
{
  gs$6(gs paramgs) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    kg.a(3, gs.c(a), "extendedWebViewDialog.onDismiss()");
    if (gs.e(a) != null) {
      gs.e(a).loadUrl("javascript:if(window.mraid){window.mraid.close();};");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */