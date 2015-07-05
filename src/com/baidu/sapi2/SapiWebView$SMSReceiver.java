package com.baidu.sapi2;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.SmsMessage;
import com.baidu.sapi2.utils.L;

final class SapiWebView$SMSReceiver
  extends BroadcastReceiver
{
  private Handler a;
  
  public SapiWebView$SMSReceiver(Handler paramHandler)
  {
    a = paramHandler;
  }
  
  private String a(String paramString)
  {
    paramString = paramString.replaceAll("[^0-9]*([0-9]*)[^0-9]*", "$1-").split("-");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramString[i];
      if (str.length() == 6) {
        return str;
      }
      i += 1;
    }
    return "";
  }
  
  @TargetApi(4)
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext = (Object[])paramIntent.getExtras().get("pdus");
      paramIntent = new SmsMessage[paramContext.length];
      int i = 0;
      while (i < paramContext.length)
      {
        paramIntent[i] = SmsMessage.createFromPdu((byte[])(byte[])paramContext[i]);
        String str = a(paramIntent[i].getMessageBody());
        if (a != null)
        {
          Message localMessage = a.obtainMessage();
          obj = str;
          a.sendMessage(localMessage);
        }
        i += 1;
      }
      return;
    }
    catch (Throwable paramContext)
    {
      L.e(paramContext, paramContext.getMessage(), new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SMSReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */