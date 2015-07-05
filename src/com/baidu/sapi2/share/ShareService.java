package com.baidu.sapi2.share;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class ShareService
  extends Service
{
  private static Context a;
  private static LoginShareStrategy b;
  private static c c;
  private static boolean d = false;
  private Handler e;
  
  void a(Context paramContext)
  {
    try
    {
      a = paramContext;
      c = c.a(paramContext);
      b = SapiAccountManager.getInstance().getSapiConfiguration().loginShareStrategy();
      d = true;
      return;
    }
    catch (IllegalStateException paramContext)
    {
      d = false;
    }
  }
  
  void a(Parcel paramParcel)
  {
    Bundle localBundle = new Bundle();
    ShareModel localShareModel = new ShareModel(ShareEvent.SYNC_ACK);
    Object localObject = c.d();
    if (localObject != null) {
      app = SapiUtils.getAppName(a);
    }
    localShareModel.a((SapiAccount)localObject);
    localShareModel.a().addAll(c.e());
    localShareModel.a().addAll(c.f());
    localObject = localShareModel.a().iterator();
    while (((Iterator)localObject).hasNext()) {
      nextapp = SapiUtils.getAppName(a);
    }
    a.b(a, b, localShareModel);
    localBundle.putParcelable("LOGIN_SHARE_MODEL", localShareModel);
    if (c.l() != null) {
      localBundle.putString("RELOGIN_CREDENTIALS", e.a(a, c.l().toString()));
    }
    localBundle.putSerializable("RUNTIME_ENVIRONMENT", getInstancegetSapiConfigurationenvironment);
    paramParcel.writeBundle(localBundle);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return new ShareService.a(this, null);
  }
  
  public void onCreate()
  {
    super.onCreate();
    e = new Handler(Looper.getMainLooper());
  }
  
  @TargetApi(5)
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    stopSelf();
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */