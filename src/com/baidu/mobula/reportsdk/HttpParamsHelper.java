package com.baidu.mobula.reportsdk;

import android.content.Context;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.DXStatService.stat.TokenManager;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public final class HttpParamsHelper
{
  private static final List<NameValuePair> FIXED_PARAMS = new ArrayList();
  public static final String KEY_AID = "aid";
  public static final String KEY_CV = "v";
  public static final String KEY_CVN = "vn";
  public static final String KEY_DPI = "dpi";
  public static final String KEY_GOOGLE_ID = "goid";
  public static final String KEY_H = "h";
  public static final String KEY_LC = "lc";
  public static final String KEY_LICENSE = "ls";
  public static final String KEY_LOCALE = "locale";
  public static final String KEY_MODEL = "model";
  public static final String KEY_NTT = "ntt";
  public static final String KEY_OP = "op";
  public static final String KEY_PKG = "pkg";
  public static final String KEY_PLAY = "play";
  public static final String KEY_SDK_INT = "sdk";
  public static final String KEY_SV = "sv";
  public static final String KEY_SVN = "svn";
  public static final String KEY_TK = "tk";
  public static final String KEY_VENDOR = "vendor";
  public static final String KEY_W = "w";
  public static final String PLAY_PACKAGE_NAME = "com.android.vending";
  private static boolean sFixedParamsInited = false;
  
  public static List<NameValuePair> commonParams(Context paramContext, String paramString)
  {
    init(paramContext);
    ArrayList localArrayList = new ArrayList(FIXED_PARAMS);
    String str = a.o(paramContext);
    if (!TextUtils.isEmpty(str)) {
      localArrayList.add(new BasicNameValuePair("op", str));
    }
    str = GoogleAdvertisingIdHelper.getAdId(paramContext);
    if (!TextUtils.isEmpty(str)) {
      localArrayList.add(new BasicNameValuePair("goid", str));
    }
    localArrayList.add(new BasicNameValuePair("locale", a.r(paramContext)));
    localArrayList.add(new BasicNameValuePair("ntt", a.s(paramContext)));
    localArrayList.add(new BasicNameValuePair("ls", paramString));
    paramContext = getAndroidId(paramContext);
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList.add(new BasicNameValuePair("aid", paramContext));
    }
    paramContext = MobulaUtils.getLC();
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList.add(new BasicNameValuePair("lc", paramContext));
    }
    return localArrayList;
  }
  
  public static String getAndroidId(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public static void init(Context paramContext)
  {
    try
    {
      if (sFixedParamsInited) {
        return;
      }
      FIXED_PARAMS.add(new BasicNameValuePair("h", a.g(paramContext)));
      FIXED_PARAMS.add(new BasicNameValuePair("w", a.h(paramContext)));
      FIXED_PARAMS.add(new BasicNameValuePair("model", a.l(paramContext)));
      FIXED_PARAMS.add(new BasicNameValuePair("vendor", a.k(paramContext)));
      FIXED_PARAMS.add(new BasicNameValuePair("sdk", a.p(paramContext)));
      FIXED_PARAMS.add(new BasicNameValuePair("dpi", a.q(paramContext)));
      FIXED_PARAMS.add(new BasicNameValuePair("pkg", a.a(paramContext)));
      int i = a.j(paramContext);
      FIXED_PARAMS.add(new BasicNameValuePair("v", String.valueOf(i)));
      FIXED_PARAMS.add(new BasicNameValuePair("vn", a.i(paramContext)));
      paramContext = TokenManager.getToken(paramContext);
      if (!TextUtils.isEmpty(paramContext)) {
        FIXED_PARAMS.add(new BasicNameValuePair("tk", paramContext));
      }
      sFixedParamsInited = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.HttpParamsHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */