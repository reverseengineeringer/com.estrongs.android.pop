package com.estrongs.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(SslErrorHandler paramSslErrorHandler) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.proceed();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */