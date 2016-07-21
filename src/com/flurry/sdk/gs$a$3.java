package com.flurry.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.webkit.WebChromeClient;

class gs$a$3
  implements DialogInterface.OnDismissListener
{
  gs$a$3(gs.a parama) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    kg.a(3, gs.c(a.a), "customViewFullScreenDialog.onDismiss()");
    if ((gs.s(a.a) != null) && (gs.t(a.a) != null)) {
      gs.t(a.a).onHideCustomView();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */