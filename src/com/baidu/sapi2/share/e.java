package com.baidu.sapi2.share;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.g;
import java.io.File;

public final class e
{
  private static final String a = "0123456789ABCDEF";
  private static String b = null;
  
  static SapiAccount a(Context paramContext, SapiAccount paramSapiAccount)
  {
    if ((paramContext == null) || (paramSapiAccount == null)) {
      return null;
    }
    SapiAccount localSapiAccount = new SapiAccount();
    displayname = a(paramContext, displayname);
    uid = a(paramContext, uid);
    username = a(paramContext, username);
    app = a(paramContext, app);
    bduss = a(paramContext, bduss);
    ptoken = a(paramContext, ptoken);
    stoken = a(paramContext, stoken);
    email = a(paramContext, email);
    extra = a(paramContext, extra);
    phone = a(paramContext, phone);
    return localSapiAccount;
  }
  
  private static String a(Context paramContext)
  {
    if (b != null) {
      return b;
    }
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    Object localObject1 = Build.MODEL;
    Object localObject2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
    String str = ((StatFs)localObject2).getBlockSize() + "";
    localObject2 = ((StatFs)localObject2).getBlockCount() + "";
    if (!TextUtils.isEmpty(paramContext)) {}
    for (paramContext = String.format("%1$s-%2$s-%3$s-%4$s", new Object[] { localObject1, paramContext, str, localObject2 });; paramContext = String.format("%1$s-%2$s-%3$s", new Object[] { localObject1, str, localObject2 }))
    {
      localObject1 = paramContext.substring(0, 16);
      paramContext = (Context)localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        paramContext = "----------------";
      }
      localObject1 = paramContext;
      if (paramContext.length() < 16) {
        localObject1 = (paramContext + "----------------").substring(0, 16);
      }
      b = (String)localObject1;
      return b;
    }
  }
  
  public static String a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    try
    {
      paramContext = a(new g("AES", "AES/CBC/PKCS5Padding").a(paramString, "8070605040302010", a(paramContext)));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      L.e(paramContext);
    }
    return null;
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfByte[i];
      localStringBuilder.append("0123456789ABCDEF".charAt(k >> 4 & 0xF)).append("0123456789ABCDEF".charAt(k & 0xF));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  private static byte[] a(String paramString)
  {
    int j = paramString.length() / 2;
    byte[] arrayOfByte = new byte[j];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[i] = Integer.valueOf(paramString.substring(i * 2, i * 2 + 2), 16).byteValue();
      i += 1;
    }
    return arrayOfByte;
  }
  
  static SapiAccount b(Context paramContext, SapiAccount paramSapiAccount)
  {
    if ((paramContext == null) || (paramSapiAccount == null)) {
      return null;
    }
    SapiAccount localSapiAccount = new SapiAccount();
    displayname = b(paramContext, displayname);
    uid = b(paramContext, uid);
    username = b(paramContext, username);
    app = b(paramContext, app);
    bduss = b(paramContext, bduss);
    ptoken = b(paramContext, ptoken);
    stoken = b(paramContext, stoken);
    email = b(paramContext, email);
    extra = b(paramContext, extra);
    phone = b(paramContext, phone);
    return localSapiAccount;
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    try
    {
      paramContext = new String(new g("AES", "AES/CBC/PKCS5Padding").a(a(paramString), "8070605040302010", a(paramContext))).trim();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      L.e(paramContext);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */