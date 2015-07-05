package com.baidu.sapi2.share;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Parcel;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class b
{
  static final String a = "LOGIN_SHARE_MODEL";
  static final String b = "RELOGIN_CREDENTIALS";
  static final String c = "RUNTIME_ENVIRONMENT";
  static final String d = "baidu.intent.action.SHARE_V6";
  static final String e = "baidu.intent.action.account.SHARE_SERVICE";
  static final String f = "com.baidu.permission.SHARE";
  private static SapiConfiguration g = SapiAccountManager.getInstance().getSapiConfiguration();
  private static c h = c.a(gcontext);
  private static final b i = new b();
  
  static Parcel a(ShareModel paramShareModel)
  {
    Parcel localParcel = Parcel.obtain();
    Bundle localBundle = new Bundle();
    a.b(gcontext, g.loginShareStrategy(), paramShareModel);
    localBundle.putParcelable("LOGIN_SHARE_MODEL", paramShareModel);
    if (h.l() != null) {
      localBundle.putString("RELOGIN_CREDENTIALS", e.a(gcontext, h.l().toString()));
    }
    localBundle.putSerializable("RUNTIME_ENVIRONMENT", genvironment);
    localParcel.writeBundle(localBundle);
    return localParcel;
  }
  
  public static b a()
  {
    return i;
  }
  
  static void a(Intent paramIntent, ShareModel paramShareModel)
  {
    try
    {
      a.b(gcontext, g.loginShareStrategy(), paramShareModel);
      paramIntent.putExtra("LOGIN_SHARE_MODEL", paramShareModel);
      if (h.l() != null) {
        paramIntent.putExtra("RELOGIN_CREDENTIALS", e.a(gcontext, h.l().toString()));
      }
      paramIntent.putExtra("RUNTIME_ENVIRONMENT", genvironment);
      gcontext.sendBroadcast(paramIntent, "com.baidu.permission.SHARE");
      return;
    }
    catch (Throwable paramIntent)
    {
      L.e(paramIntent);
    }
  }
  
  private static void b(Parcel paramParcel)
  {
    if (paramParcel == null) {
      return;
    }
    paramParcel = paramParcel.readBundle(ShareModel.class.getClassLoader());
    ShareModel localShareModel = (ShareModel)paramParcel.getParcelable("LOGIN_SHARE_MODEL");
    a.c(gcontext, paramParcel.getString("RELOGIN_CREDENTIALS"));
    a.a(gcontext, g.loginShareStrategy(), localShareModel);
  }
  
  public static void c()
  {
    if (h.g())
    {
      if (g.loginShareStrategy() != LoginShareStrategy.DISABLED) {
        i();
      }
      j();
    }
    while ((h.h()) || (g.loginShareStrategy() != LoginShareStrategy.SILENT)) {
      return;
    }
    i();
  }
  
  public static void d()
  {
    if (g.loginShareStrategy() == LoginShareStrategy.DISABLED) {}
    Map localMap;
    do
    {
      do
      {
        return;
      } while ((h.d() == null) && (h.e().size() == 0) && (h.f().size() == 0));
      localMap = h.k().c();
    } while ((!localMap.containsKey(gtpl)) || (((Integer)localMap.get(gtpl)).intValue() == h.j()));
    Object localObject = new HandlerThread("SendThread");
    ((HandlerThread)localObject).start();
    localObject = new Handler(((HandlerThread)localObject).getLooper());
    ((Handler)localObject).post(new b.d((Handler)localObject, localMap));
  }
  
  private static ShareModel h()
  {
    ShareModel localShareModel = new ShareModel(ShareEvent.VALIDATE);
    Object localObject = h.d();
    if (localObject != null)
    {
      app = SapiUtils.getAppName(gcontext);
      localShareModel.a((SapiAccount)localObject);
    }
    localShareModel.a().addAll(h.e());
    localShareModel.a().addAll(h.f());
    localObject = localShareModel.a().iterator();
    while (((Iterator)localObject).hasNext()) {
      nextapp = SapiUtils.getAppName(gcontext);
    }
    return localShareModel;
  }
  
  private static void i()
  {
    Object localObject = new HandlerThread("SyncThread");
    ((HandlerThread)localObject).start();
    localObject = new Handler(((HandlerThread)localObject).getLooper());
    ((Handler)localObject).post(new b.c((Handler)localObject));
  }
  
  private static void j()
  {
    new Thread(new b.e()).start();
  }
  
  public void a(SapiAccount paramSapiAccount)
  {
    a(paramSapiAccount, true);
  }
  
  public void a(SapiAccount paramSapiAccount, boolean paramBoolean)
  {
    if (!SapiUtils.isValidAccount(paramSapiAccount)) {}
    do
    {
      return;
      if (TextUtils.isEmpty(app)) {
        app = SapiUtils.getAppName(gcontext);
      }
      if (!paramBoolean) {
        break;
      }
      h.a(paramSapiAccount);
      h.c(paramSapiAccount);
      h.d(paramSapiAccount);
    } while (g.loginShareStrategy() == LoginShareStrategy.DISABLED);
    Object localObject = new HandlerThread("ValidateThread");
    ((HandlerThread)localObject).start();
    localObject = new Handler(((HandlerThread)localObject).getLooper());
    ((Handler)localObject).post(new b.a(this, (Handler)localObject, paramSapiAccount, paramBoolean));
  }
  
  public void b()
  {
    SapiAccount localSapiAccount = h.d();
    if (localSapiAccount == null) {}
    do
    {
      return;
      h.a(null);
      h.d(localSapiAccount);
      h.e(localSapiAccount);
    } while (g.loginShareStrategy() == LoginShareStrategy.DISABLED);
    Object localObject = new HandlerThread("InvalidateThread");
    ((HandlerThread)localObject).start();
    localObject = new Handler(((HandlerThread)localObject).getLooper());
    ((Handler)localObject).post(new b.b(this, (Handler)localObject, localSapiAccount));
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */