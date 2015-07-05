package com.baidu.sapi2.share;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.common.security.Base64;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiAccountManager.ReceiveShareListener;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.shell.SapiAccountService;
import java.util.zip.CRC32;
import java.util.zip.Checksum;

public class CnctReceiver
  extends BroadcastReceiver
{
  private static final String a = "baidu.intent.action.account.B2C_SYNC";
  
  private void a(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("SYNC");
    String str2 = paramIntent.getStringExtra("SN");
    String str3 = paramIntent.getStringExtra("CHECKSUM");
    Object localObject = paramIntent.getStringExtra("TIME");
    paramIntent = paramIntent.getStringExtra("TYPE");
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3)) || (TextUtils.isEmpty((CharSequence)localObject)) || (TextUtils.isEmpty(paramIntent))) {}
    do
    {
      do
      {
        return;
        localObject = new CRC32();
        byte[] arrayOfByte = Base64.decode(str1.getBytes());
        ((Checksum)localObject).update(arrayOfByte, 0, arrayOfByte.length);
      } while (!str3.equals(String.valueOf(((Checksum)localObject).getValue())));
      if (SapiAccountManager.getReceiveShareListener() != null) {
        SapiAccountManager.getReceiveShareListener().onReceiveShare();
      }
    } while ((!a()) || (!SapiAccountManager.getInstance().getSapiConfiguration().b2cSyncEnabled()));
    SapiAccountManager.getInstance().getAccountService().a(str2, str1, paramIntent);
  }
  
  private boolean a()
  {
    try
    {
      SapiAccountManager.getInstance().getSapiConfiguration();
      return true;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return false;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {}
    while (!"baidu.intent.action.account.B2C_SYNC".equals(paramIntent.getAction())) {
      return;
    }
    a(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.CnctReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */