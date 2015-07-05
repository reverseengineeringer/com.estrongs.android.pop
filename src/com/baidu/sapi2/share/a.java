package com.baidu.sapi2.share;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccount.ReloginCredentials;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.b;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

final class a
{
  static final String a = "SHARE_SERVICE";
  static final String b = "SHARE_RECEIVER";
  
  static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = b(localMessageDigest.digest());
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      L.e(paramArrayOfByte);
    }
    return "";
  }
  
  static List<Intent> a(Context paramContext)
  {
    localArrayList = new ArrayList();
    if (paramContext == null) {
      return localArrayList;
    }
    try
    {
      Object localObject = paramContext.getPackageManager().queryIntentServices(new Intent("baidu.intent.action.account.SHARE_SERVICE"), 32);
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ServiceInfo localServiceInfo = nextserviceInfo;
          if (localServiceInfo != null)
          {
            Intent localIntent = new Intent("baidu.intent.action.account.SHARE_SERVICE");
            localIntent.setClassName(packageName, name);
            if (Build.VERSION.SDK_INT > 11) {
              localIntent.addFlags(32);
            }
            if ((TextUtils.isEmpty(permission)) || (paramContext.checkCallingOrSelfPermission(permission) == 0)) {
              localArrayList.add(localIntent);
            }
          }
        }
      }
      return localArrayList;
    }
    catch (Throwable paramContext)
    {
      L.e(paramContext);
    }
  }
  
  static Map<String, Map<String, Intent>> a(Context paramContext, boolean paramBoolean)
  {
    HashMap localHashMap1 = new HashMap();
    if (paramContext == null) {
      return localHashMap1;
    }
    Object localObject2 = a(paramContext);
    Object localObject1 = b(paramContext);
    localObject2 = ((List)localObject2).iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Intent)((Iterator)localObject2).next();
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("SHARE_SERVICE", localObject3);
      localHashMap1.put(((Intent)localObject3).getComponent().getPackageName(), localHashMap2);
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Intent)((Iterator)localObject1).next();
      if (localHashMap1.containsKey(((Intent)localObject2).getComponent().getPackageName()))
      {
        ((Map)localHashMap1.get(((Intent)localObject2).getComponent().getPackageName())).put("SHARE_RECEIVER", localObject2);
      }
      else
      {
        localObject3 = new HashMap();
        ((Map)localObject3).put("SHARE_RECEIVER", localObject2);
        localHashMap1.put(((Intent)localObject2).getComponent().getPackageName(), localObject3);
      }
    }
    if (!paramBoolean) {
      localHashMap1.remove(paramContext.getPackageName());
    }
    return localHashMap1;
  }
  
  static void a(Context paramContext, ShareModel paramShareModel)
  {
    if ((paramContext == null) || (paramShareModel == null)) {}
    do
    {
      do
      {
        return;
        paramShareModel.b(paramContext);
        paramContext = c.a(paramContext);
      } while (paramShareModel.a().size() <= 0);
      paramShareModel = (SapiAccount)paramShareModel.a().get(0);
    } while ((paramContext.d() != null) && (duid.equals(uid)));
    paramContext.d(paramShareModel);
  }
  
  static void a(Context paramContext, a.b paramb, boolean paramBoolean)
  {
    if ((paramContext == null) || (paramb == null)) {}
    for (;;)
    {
      return;
      Iterator localIterator = a(paramContext, paramBoolean).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        if (((Map.Entry)localObject).getValue() != null)
        {
          Intent localIntent = (Intent)((Map)((Map.Entry)localObject).getValue()).get("SHARE_SERVICE");
          localObject = (Intent)((Map)((Map.Entry)localObject).getValue()).get("SHARE_RECEIVER");
          if (localIntent != null)
          {
            if (a(paramContext, localIntent.getComponent().getPackageName())) {
              paramb.a(localIntent, (Intent)localObject);
            } else if (localObject != null) {
              paramb.a((Intent)localObject);
            }
          }
          else if (localObject != null) {
            paramb.a((Intent)localObject);
          }
        }
      }
    }
  }
  
  static void a(Context paramContext, LoginShareStrategy paramLoginShareStrategy, ShareModel paramShareModel)
  {
    if ((paramContext == null) || (paramLoginShareStrategy == null) || (paramShareModel == null)) {}
    for (;;)
    {
      return;
      c localc;
      try
      {
        paramShareModel.b(paramContext);
        localc = c.a(paramContext);
        if ((paramLoginShareStrategy != LoginShareStrategy.SILENT) || (localc.h()) || (localc.d() != null) || (paramShareModel.a().size() <= 0) || (!SapiUtils.isValidAccount((SapiAccount)paramShareModel.a().get(0)))) {
          break label223;
        }
        paramLoginShareStrategy = (SapiAccount)paramShareModel.a().get(0);
        localc.a(paramLoginShareStrategy);
        localc.c(paramLoginShareStrategy);
        localc.d(paramLoginShareStrategy);
        if (SapiAccountManager.getSilentShareListener() != null) {
          new Handler(Looper.getMainLooper()).post(new a.a());
        }
        paramShareModel = paramShareModel.a().iterator();
        while (paramShareModel.hasNext())
        {
          SapiAccount localSapiAccount = (SapiAccount)paramShareModel.next();
          if (a(paramContext, localSapiAccount)) {
            localc.b(localSapiAccount);
          }
        }
        paramContext = new HashMap();
      }
      finally {}
      paramContext.put("app", app);
      com.baidu.sapi2.utils.a.a("silent_login_share", paramContext);
      continue;
      label223:
      paramLoginShareStrategy = paramShareModel.a().iterator();
      while (paramLoginShareStrategy.hasNext())
      {
        paramShareModel = (SapiAccount)paramLoginShareStrategy.next();
        if (a(paramContext, paramShareModel)) {
          localc.b(paramShareModel);
        }
        b(paramContext, paramShareModel);
      }
    }
  }
  
  static boolean a(Context paramContext, SapiAccount paramSapiAccount)
  {
    if (paramContext == null) {}
    do
    {
      return false;
      paramContext = c.a(paramContext);
    } while ((!SapiUtils.isValidAccount(paramSapiAccount)) || ((paramContext.d() != null) && (duid.equals(uid))) || (paramContext.f().contains(paramSapiAccount)));
    return true;
  }
  
  static boolean a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    Map localMap = c.a(paramContext).k().g();
    paramContext = b(paramContext, paramString);
    if (!TextUtils.isEmpty(paramContext))
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((paramString.matches(str)) && (paramContext.equals(localMap.get(str)))) {
          return true;
        }
      }
    }
    return false;
  }
  
  static String b(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    for (;;)
    {
      return "";
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        if (signatures.length > 0)
        {
          paramContext = a(signatures[0].toByteArray());
          return paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        L.e(paramContext);
      }
    }
    return "";
  }
  
  static String b(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfByte == null) {
      return localStringBuilder.toString();
    }
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() == 1) {
        localStringBuilder.append("0");
      }
      localStringBuilder.append(str);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  static List<Intent> b(Context paramContext)
  {
    localArrayList = new ArrayList();
    if (paramContext == null) {
      return localArrayList;
    }
    try
    {
      Iterator localIterator = paramContext.getPackageManager().queryBroadcastReceivers(new Intent("baidu.intent.action.SHARE_V6"), 32).iterator();
      while (localIterator.hasNext())
      {
        ActivityInfo localActivityInfo = nextactivityInfo;
        if (localActivityInfo != null)
        {
          Intent localIntent = new Intent("baidu.intent.action.SHARE_V6");
          localIntent.setClassName(packageName, name);
          if (Build.VERSION.SDK_INT > 11) {
            localIntent.addFlags(32);
          }
          if ((!TextUtils.isEmpty(permission)) && (paramContext.checkCallingOrSelfPermission(permission) == 0)) {
            localArrayList.add(localIntent);
          }
        }
      }
      return localArrayList;
    }
    catch (Throwable paramContext)
    {
      L.e(paramContext);
    }
  }
  
  static void b(Context paramContext, SapiAccount paramSapiAccount)
  {
    if ((paramContext == null) || (!SapiUtils.isValidAccount(paramSapiAccount))) {}
    for (;;)
    {
      return;
      paramContext = c.a(paramContext);
      Object localObject = paramContext.d();
      if ((localObject != null) && (uid.equals(uid)))
      {
        bduss = bduss;
        paramContext.a((SapiAccount)localObject);
      }
      localObject = paramContext.f().iterator();
      SapiAccount localSapiAccount;
      while (((Iterator)localObject).hasNext())
      {
        localSapiAccount = (SapiAccount)((Iterator)localObject).next();
        if (uid.equals(uid))
        {
          bduss = bduss;
          paramContext.c(localSapiAccount);
        }
      }
      localObject = paramContext.e().iterator();
      while (((Iterator)localObject).hasNext())
      {
        localSapiAccount = (SapiAccount)((Iterator)localObject).next();
        if (uid.equals(uid))
        {
          bduss = bduss;
          paramContext.b(localSapiAccount);
        }
      }
    }
  }
  
  static void b(Context paramContext, LoginShareStrategy paramLoginShareStrategy, ShareModel paramShareModel)
  {
    if ((paramContext == null) || (paramLoginShareStrategy == null) || (paramShareModel == null)) {
      return;
    }
    if (TextUtils.isEmpty(paramShareModel.c())) {
      paramShareModel.a(paramContext.getPackageName());
    }
    paramShareModel.a(paramLoginShareStrategy);
    paramShareModel.a(paramContext);
  }
  
  static void c(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    for (;;)
    {
      return;
      try
      {
        paramString = new JSONObject(e.b(paramContext, paramString));
        Iterator localIterator = paramString.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          c.a(paramContext).a(str, SapiAccount.ReloginCredentials.fromJSONObject(paramString.optJSONObject(str)));
        }
        return;
      }
      catch (Throwable paramContext)
      {
        L.e(paramContext);
      }
    }
  }
  
  static boolean c(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    String str1 = d(paramContext);
    String str2 = b(paramContext, str1);
    paramContext = c.a(paramContext).k().g();
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
    {
      Iterator localIterator = paramContext.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str3 = (String)localIterator.next();
        if ((str1.matches(str3)) && (str2.equals(paramContext.get(str3)))) {
          return true;
        }
      }
    }
    return false;
  }
  
  static String d(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return "";
      try
      {
        paramContext = paramContext.getPackageManager().getPackagesForUid(Binder.getCallingUid());
        if (paramContext.length > 0)
        {
          paramContext = paramContext[0];
          return paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        L.e(paramContext);
      }
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */