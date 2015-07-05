package com.baidu.sapi2;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import com.baidu.sapi2.utils.SapiUtils;

class SapiWebView$FastRegAction$6
  implements DialogInterface.OnClickListener
{
  SapiWebView$FastRegAction$6(SapiWebView.FastRegAction paramFastRegAction) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (SapiUtils.sendSms(a.a.getContext(), SapiWebView.FastRegAction.g(a), SapiUtils.getFastRegChannel(a.a.getContext())))
    {
      SapiWebView.FastRegAction.d(a).postDelayed(SapiWebView.FastRegAction.h(a), 15000L);
      SapiWebView.FastRegAction.b(a, false);
      SapiWebView.FastRegAction.i(a);
      return;
    }
    SapiWebView.FastRegAction.j(a);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */