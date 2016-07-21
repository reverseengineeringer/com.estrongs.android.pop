package com.estrongs.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class aj
  implements DialogInterface.OnClickListener
{
  aj(SslErrorHandler paramSslErrorHandler) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.cancel();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */