package com.baidu.sapi2;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.baidu.sapi2.shell.SapiAccountService;

class SapiWebView$FastRegAction$5
  implements DialogInterface.OnClickListener
{
  SapiWebView$FastRegAction$5(SapiWebView.FastRegAction paramFastRegAction) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.a.loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&regLink=0" + "#sms_login");
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */