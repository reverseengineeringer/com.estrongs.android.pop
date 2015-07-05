package com.baidu.sapi2.share;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class ShareReceiver
  extends BroadcastReceiver
{
  private static Context a;
  private static LoginShareStrategy b;
  private static c c;
  private static f d;
  private static boolean e = false;
  private static Handler f;
  
  void a(Context paramContext)
  {
    try
    {
      a = paramContext;
      c = c.a(paramContext);
      b = SapiAccountManager.getInstance().getSapiConfiguration().loginShareStrategy();
      d = new ShareReceiver.a(this);
      e = true;
      return;
    }
    catch (IllegalStateException paramContext)
    {
      e = false;
    }
  }
  
  @TargetApi(4)
  void a(ShareModel paramShareModel)
  {
    paramShareModel.b(a);
    Intent localIntent = new Intent("baidu.intent.action.SHARE_V6");
    localIntent.setPackage(paramShareModel.c());
    paramShareModel = new ShareModel(ShareEvent.SYNC_ACK);
    Object localObject = c.d();
    if (localObject != null) {
      app = SapiUtils.getAppName(a);
    }
    paramShareModel.a((SapiAccount)localObject);
    paramShareModel.a().addAll(c.e());
    paramShareModel.a().addAll(c.f());
    localObject = paramShareModel.a().iterator();
    while (((Iterator)localObject).hasNext()) {
      nextapp = SapiUtils.getAppName(a);
    }
    a.b(a, b, paramShareModel);
    localIntent.putExtra("LOGIN_SHARE_MODEL", paramShareModel);
    if (c.l() != null) {
      localIntent.putExtra("RELOGIN_CREDENTIALS", e.a(a, c.l().toString()));
    }
    localIntent.putExtra("RUNTIME_ENVIRONMENT", getInstancegetSapiConfigurationenvironment);
    if (Build.VERSION.SDK_INT > 11) {
      localIntent.addFlags(32);
    }
    a.sendBroadcast(localIntent, "com.baidu.permission.SHARE");
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (SapiAccountManager.getReceiveShareListener() != null)
    {
      if (f == null) {
        f = new Handler(Looper.getMainLooper());
      }
      f.post(new ShareReceiver.c(this));
    }
    if (!e) {
      a(paramContext);
    }
    if ((!e) || (b == LoginShareStrategy.DISABLED)) {}
    label66:
    ShareModel localShareModel;
    do
    {
      String str;
      do
      {
        do
        {
          break label66;
          do
          {
            return;
          } while (!"baidu.intent.action.SHARE_V6".equals(paramIntent.getAction()));
          localShareModel = (ShareModel)paramIntent.getParcelableExtra("LOGIN_SHARE_MODEL");
        } while (localShareModel == null);
        str = e.b(paramContext, localShareModel.c());
      } while (((!TextUtils.isEmpty(str)) && (str.equals(paramContext.getPackageName()))) || ((paramIntent.getSerializableExtra("RUNTIME_ENVIRONMENT") != null) && ((paramIntent.getSerializableExtra("RUNTIME_ENVIRONMENT") instanceof Domain)) && ((Domain)paramIntent.getSerializableExtra("RUNTIME_ENVIRONMENT") != getInstancegetSapiConfigurationenvironment)));
      a.c(paramContext, paramIntent.getStringExtra("RELOGIN_CREDENTIALS"));
    } while (d == null);
    d.a(localShareModel);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */