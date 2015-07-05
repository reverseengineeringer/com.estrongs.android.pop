package com.baidu.sapi2.shell;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.common.security.MD5Util;
import com.baidu.cloudsdk.common.http.AsyncHttpClient;
import com.baidu.cloudsdk.common.http.MultipartRequestParams;
import com.baidu.cloudsdk.common.http.RequestParams;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccount.ReloginCredentials;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.share.SoftToken;
import com.baidu.sapi2.shell.callback.FillUserProfileCallBack;
import com.baidu.sapi2.shell.callback.FillUsernameCallBack;
import com.baidu.sapi2.shell.callback.GetUserInfoCallBack;
import com.baidu.sapi2.shell.callback.OAuthCallBack;
import com.baidu.sapi2.shell.callback.QrAppLoginCallBack;
import com.baidu.sapi2.shell.callback.QrPCLoginCallBack;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.callback.VoiceCheckCallBack;
import com.baidu.sapi2.shell.callback.VoiceLoginCallBack;
import com.baidu.sapi2.shell.callback.VoiceRegCallBack;
import com.baidu.sapi2.shell.response.GetHistoryPortraitsResponse;
import com.baidu.sapi2.shell.response.GetPopularPortraitsInfoResponse;
import com.baidu.sapi2.shell.response.GetPortraitResponse;
import com.baidu.sapi2.shell.response.OAuthResponse;
import com.baidu.sapi2.shell.response.QrAppLoginResponse;
import com.baidu.sapi2.shell.response.QrPCLoginResponse;
import com.baidu.sapi2.shell.response.SapiAccountResponse;
import com.baidu.sapi2.shell.response.SapiResponse;
import com.baidu.sapi2.shell.response.VoiceCheckResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.b.a;
import com.baidu.sapi2.utils.e;
import com.baidu.sapi2.utils.enums.BindWidgetAction;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.QrLoginAction;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.CookieStore;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

final class a
{
  private static final int a = 6;
  private SapiConfiguration b = SapiAccountManager.getInstance().getSapiConfiguration();
  private AsyncHttpClient c;
  private e d;
  
  a(Context paramContext)
  {
    d = new e(paramContext);
  }
  
  private String Q()
  {
    return "tpl:" + b.tpl + ";android_sapi_v" + "6.9.2";
  }
  
  private Domain R()
  {
    return b.environment;
  }
  
  private String S()
  {
    return d.a() + "/sslcrypt/get_last_cert";
  }
  
  private String a(Map<String, String> paramMap, String paramString)
  {
    Object localObject1 = paramMap.keySet().iterator();
    Object localObject2 = new ArrayList();
    while (((Iterator)localObject1).hasNext()) {
      ((ArrayList)localObject2).add(((Iterator)localObject1).next());
    }
    Collections.sort((List)localObject2);
    localObject1 = new StringBuilder();
    localObject2 = ((ArrayList)localObject2).iterator();
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        ((StringBuilder)localObject1).append(str);
        ((StringBuilder)localObject1).append("=");
        try
        {
          str = (String)paramMap.get(str);
          if (!TextUtils.isEmpty(str)) {
            ((StringBuilder)localObject1).append(URLEncoder.encode(str, "UTF-8"));
          }
          ((StringBuilder)localObject1).append("&");
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;)
          {
            L.e(localUnsupportedEncodingException);
          }
        }
      }
    }
    ((StringBuilder)localObject1).append("sign_key=").append(paramString);
    return MD5Util.toMd5(((StringBuilder)localObject1).toString().getBytes(), false);
  }
  
  private void a(int paramInt, FillUsernameCallBack paramFillUsernameCallBack, String paramString, b paramb)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramString != null) {
      localSapiAccountResponse = new SapiAccountResponse();
    }
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString).optString("userinfo");
        if (TextUtils.isEmpty(paramString)) {
          break;
        }
        paramString = new JSONObject(paramb.b(paramString));
        bduss = paramString.optString("bduss");
        ptoken = paramString.optString("ptoken");
        stoken = paramString.optString("stoken");
        displayname = paramString.optString("displayname");
        uid = paramString.optString("uid");
        username = paramString.optString("uname");
        email = paramString.optString("email");
        switch (paramInt)
        {
        case 0: 
          paramFillUsernameCallBack.onSystemError(paramInt);
          return;
        }
      }
      catch (Throwable paramString)
      {
        paramFillUsernameCallBack.onSystemError(paramInt);
        return;
      }
      paramb = new SapiAccount();
      displayname = displayname;
      bduss = bduss;
      ptoken = ptoken;
      stoken = stoken;
      uid = uid;
      username = username;
      app = SapiUtils.getAppName(b.context);
      extra = paramString.toString();
      com.baidu.sapi2.share.b.a().a(paramb);
      paramFillUsernameCallBack.onSuccess(localSapiAccountResponse);
      return;
      paramFillUsernameCallBack.onUsernameFormatError();
      return;
      paramFillUsernameCallBack.onUsernameAlreadyExist();
      return;
      paramFillUsernameCallBack.onUserHaveUsername();
      return;
      paramFillUsernameCallBack.onInvalidBduss();
      return;
      paramFillUsernameCallBack.onSystemError(paramInt);
      return;
    }
  }
  
  private void a(FillUserProfileCallBack paramFillUserProfileCallBack, String paramString1, String paramString2)
  {
    for (;;)
    {
      try
      {
        localObject1 = new JSONObject(paramString2);
        int i = a(paramString2);
        switch (i)
        {
        case 0: 
          paramFillUserProfileCallBack.onFinish();
          paramFillUserProfileCallBack.onSystemError(i);
          return;
        }
      }
      catch (Throwable paramString1)
      {
        Object localObject1;
        Object localObject2;
        BasicClientCookie localBasicClientCookie;
        paramFillUserProfileCallBack.onFinish();
        paramFillUserProfileCallBack.onSystemError(-100);
        return;
      }
      localObject2 = ((JSONObject)localObject1).optString("sms");
      paramString2 = ((JSONObject)localObject1).optString("vcode");
      localObject1 = ((JSONObject)localObject1).optString("upsmschannel");
      if ((SapiUtils.sendSms(b.context, paramString2, (String)localObject2)) && (!TextUtils.isEmpty((CharSequence)localObject1)))
      {
        c = new AsyncHttpClient();
        c.setUserAgent(Q());
        localObject2 = new BasicCookieStore();
        localBasicClientCookie = new BasicClientCookie("BAIDUID", SapiUtils.getClientId(b.context));
        localBasicClientCookie.setDomain("baidu.com");
        localBasicClientCookie.setPath("/");
        ((BasicCookieStore)localObject2).addCookie(localBasicClientCookie);
        c.setCookieStore((CookieStore)localObject2);
        localObject2 = new RequestParams();
        ((RequestParams)localObject2).put("channel_id", (String)localObject1);
        ((RequestParams)localObject2).put("callback", "p");
        ((RequestParams)localObject2).put("apiver", "v3");
        ((RequestParams)localObject2).put("tt", String.valueOf(System.currentTimeMillis()));
        c.get(b.context, "https://passport.baidu.com/channel/unicast", (RequestParams)localObject2, new a.b(this, paramFillUserProfileCallBack, (String)localObject1, paramString1, paramString2));
        return;
      }
      paramFillUserProfileCallBack.onFinish();
      paramFillUserProfileCallBack.onSystemError(-100);
      return;
      paramFillUserProfileCallBack.onFinish();
      paramFillUserProfileCallBack.onUserNormalized();
      return;
      paramFillUserProfileCallBack.onFinish();
      paramFillUserProfileCallBack.onBdussInvalid();
      return;
    }
  }
  
  private void a(FillUsernameCallBack paramFillUsernameCallBack, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, b paramb)
  {
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    HashMap localHashMap = new HashMap();
    localHashMap.put("appid", b.appId);
    localHashMap.put("tpl", b.tpl);
    localHashMap.put("cert_id", paramString5);
    localHashMap.put("crypttype", String.valueOf(6));
    paramString5 = new JSONObject();
    paramString5.put("bduss", paramString1);
    if (!TextUtils.isEmpty(b.clientId)) {
      paramString5.put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      paramString5.put("clientip", b.clientIp);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      paramString5.put("ptoken", paramString2);
    }
    paramString5.put("username", paramString3);
    paramString5.put("key", paramb.a());
    localHashMap.put("userinfo", paramb.a(paramString4, paramString5.toString()));
    localHashMap.put("sig", a(localHashMap, b.appSignKey));
    paramString1 = new RequestParams(localHashMap);
    c.post(b.context, n(), paramString1, new a.m(this, paramFillUsernameCallBack, paramb));
  }
  
  private void a(VoiceLoginCallBack paramVoiceLoginCallBack, String paramString)
  {
    paramVoiceLoginCallBack.onFinish();
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        i = Integer.parseInt(localJSONObject.optString("errno"));
        switch (i)
        {
        case 0: 
          paramVoiceLoginCallBack.onSystemError(i);
          return;
        }
      }
      catch (Exception paramString)
      {
        JSONObject localJSONObject;
        int i;
        SapiResponse localSapiResponse;
        SapiAccount localSapiAccount;
        paramVoiceLoginCallBack.onSystemError(-100);
        return;
      }
      localSapiResponse = new SapiResponse();
      errorCode = i;
      localSapiAccount = new SapiAccount();
      uid = localJSONObject.optString("uid");
      bduss = localJSONObject.optString("bduss");
      displayname = localJSONObject.optString("displayname");
      username = localJSONObject.optString("uname");
      ptoken = localJSONObject.optString("ptoken");
      stoken = localJSONObject.optString("stoken");
      app = SapiUtils.getAppName(b.context);
      extra = paramString;
      com.baidu.sapi2.share.b.a().a(localSapiAccount);
      paramVoiceLoginCallBack.onSuccess(localSapiResponse);
      return;
    }
  }
  
  private void a(VoiceRegCallBack paramVoiceRegCallBack, String paramString, boolean paramBoolean)
  {
    paramVoiceRegCallBack.onFinish();
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        i = Integer.parseInt(localJSONObject.optString("errno"));
        switch (i)
        {
        case 0: 
          paramVoiceRegCallBack.onSystemError(i);
          return;
        }
      }
      catch (Exception paramString)
      {
        JSONObject localJSONObject;
        int i;
        SapiResponse localSapiResponse;
        SapiAccount localSapiAccount;
        paramVoiceRegCallBack.onSystemError(-100);
        return;
      }
      localSapiResponse = new SapiResponse();
      errorCode = i;
      if (paramBoolean)
      {
        localSapiAccount = new SapiAccount();
        uid = localJSONObject.optString("uid");
        bduss = localJSONObject.optString("bduss");
        displayname = localJSONObject.optString("displayname");
        username = localJSONObject.optString("uname");
        ptoken = localJSONObject.optString("ptoken");
        stoken = localJSONObject.optString("stoken");
        app = SapiUtils.getAppName(b.context);
        extra = paramString;
        com.baidu.sapi2.share.b.a().a(localSapiAccount);
      }
      paramVoiceRegCallBack.onSuccess(localSapiResponse);
      return;
      paramVoiceRegCallBack.onAuthExpired();
      return;
    }
  }
  
  private boolean a(SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, b paramb)
  {
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    HashMap localHashMap = new HashMap();
    localHashMap.put("crypttype", "6");
    localHashMap.put("tpl", b.tpl);
    localHashMap.put("appid", b.appId);
    String str = b.clientId;
    if (!TextUtils.isEmpty(str)) {
      localHashMap.put("cuid", str);
    }
    localHashMap.put("cert_id", paramString2);
    localHashMap.put("isdpass", "1");
    paramString2 = new JSONObject();
    paramString2.put("username", paramString3);
    paramString2.put("isphone", "1");
    paramString2.put("password", paramString4);
    paramString2.put("login_type", "3");
    paramString2.put("key", paramb.a());
    paramString2.put("sdk_version", "2");
    paramString2.put("pinfo", com.baidu.sapi2.utils.b.b());
    localHashMap.put("userinfo", paramb.a(paramString1, paramString2.toString()));
    localHashMap.put("sig", a(localHashMap, b.appSignKey));
    paramString1 = new RequestParams(localHashMap);
    c.post(b.context, u(), paramString1, new a.j(this, paramSapiCallBack, paramBoolean, paramb, paramString3, paramString4));
    return true;
  }
  
  private void b(VoiceCheckCallBack paramVoiceCheckCallBack, String paramString)
  {
    paramVoiceCheckCallBack.onFinish();
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString);
        i = Integer.parseInt(paramString.optString("errno"));
        switch (i)
        {
        case 0: 
          paramVoiceCheckCallBack.onSystemError(i);
          return;
        }
      }
      catch (Exception paramString)
      {
        int i;
        VoiceCheckResponse localVoiceCheckResponse;
        paramVoiceCheckCallBack.onSystemError(-100);
        return;
      }
      localVoiceCheckResponse = new VoiceCheckResponse();
      errorCode = i;
      uid = b.c(paramString.optString("id"));
      displayname = paramString.optString("displayname");
      signUp = "1".equals(paramString.optString("voice"));
      needVerify = "1".equals(paramString.optString("needverify"));
      authToken = paramString.optString("token");
      if ("null".equals(authToken)) {
        authToken = null;
      }
      authSid = paramString.optString("authsid");
      if ("null".equals(authSid)) {
        authSid = null;
      }
      paramVoiceCheckCallBack.onSuccess(localVoiceCheckResponse);
      return;
      paramVoiceCheckCallBack.onUsernameNotExist();
      return;
      paramVoiceCheckCallBack.onUserNotNormalized();
      return;
      paramVoiceCheckCallBack.onUserForbidden();
      return;
      paramVoiceCheckCallBack.onLoginMergeConfirm();
      return;
      paramVoiceCheckCallBack.onBdussInvalid();
      return;
    }
  }
  
  private void d(int paramInt, SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramString != null)
    {
      localSapiAccountResponse = new SapiAccountResponse();
      errorCode = paramInt;
    }
    for (;;)
    {
      try
      {
        localObject = new JSONObject(paramString);
        displayname = ((JSONObject)localObject).optString("displayname");
        username = ((JSONObject)localObject).optString("uname");
        uid = ((JSONObject)localObject).optString("uid");
        email = ((JSONObject)localObject).optString("email");
        bduss = ((JSONObject)localObject).optString("bduss");
        ptoken = ((JSONObject)localObject).optString("ptoken");
        stoken = ((JSONObject)localObject).optString("stoken");
        authSid = ((JSONObject)localObject).optString("authsid");
        if (paramSapiCallBack == null) {
          break;
        }
        switch (paramInt)
        {
        case 0: 
          paramSapiCallBack.onSystemError(paramInt);
          return;
        }
      }
      catch (Exception paramString)
      {
        Object localObject;
        L.e(paramString);
        if (paramSapiCallBack == null) {
          break;
        }
      }
      localObject = new SapiAccount();
      displayname = displayname;
      bduss = bduss;
      ptoken = ptoken;
      stoken = stoken;
      uid = uid;
      username = username;
      app = SapiUtils.getAppName(b.context);
      extra = paramString;
      com.baidu.sapi2.share.b.a().a((SapiAccount)localObject);
      paramSapiCallBack.onSuccess(localSapiAccountResponse);
      return;
      paramSapiCallBack.onSystemError(-100);
      return;
      if (paramSapiCallBack == null) {
        break;
      }
      paramSapiCallBack.onSystemError(paramInt);
      return;
    }
  }
  
  public String A()
  {
    return R().getDeviceUrl() + "/yunid/device/service/status";
  }
  
  public String B()
  {
    return R().getDeviceUrl() + "/yunid/device/login";
  }
  
  public String C()
  {
    return R().getDeviceUrl() + "/yunid/device/reg";
  }
  
  public String D()
  {
    return R().getDeviceUrl() + "/yunid/device/forcereg";
  }
  
  public String E()
  {
    return d.a() + "/v2/sapi/qrlogin?lp=pc";
  }
  
  public String F()
  {
    return d.a() + "/v2/sapi/qrlogin?lp=app";
  }
  
  public String G()
  {
    return d.a() + "/v2/sapi/smsgetlogin";
  }
  
  public String H()
  {
    return d.a() + "/v2/sapi/getdpass";
  }
  
  public String I()
  {
    return d.a() + "/v2/sapi/bdussexchangeaccesstoken";
  }
  
  public String J()
  {
    return d.a() + "/v2/security/sapibindwidgetsend";
  }
  
  public String K()
  {
    return d.a() + "/v2/security/sapibindwidgetbind";
  }
  
  public String L()
  {
    return d.a() + "/v2/sapi/getvoiceid";
  }
  
  public String M()
  {
    return d.a() + "/v2/sapi/regvoice";
  }
  
  public String N()
  {
    return d.a() + "/v2/sapi/voicelogin";
  }
  
  String O()
  {
    return d.a() + "/v2/sapi/sdk-e7e3227a11d7e4d3a3a1a8ea89bc76d8";
  }
  
  String P()
  {
    return d.a() + "/v2/sapi/sdk-9fc05608ec97ba19262c82c1aa7770e7";
  }
  
  public int a(SapiAccount.ReloginCredentials paramReloginCredentials)
  {
    if (paramReloginCredentials == null) {
      throw new IllegalArgumentException("ReloginCredentials can't be null");
    }
    int i;
    if (TextUtils.isEmpty(account)) {
      i = 130005;
    }
    int j;
    do
    {
      return i;
      if (TextUtils.isEmpty(password)) {
        return 130010;
      }
      if (TextUtils.isEmpty(ubi)) {
        return 130025;
      }
      if (!SapiUtils.hasActiveNetwork(b.context)) {
        return 65336;
      }
      localObject2 = new b();
      do
      {
        do
        {
          for (;;)
          {
            try
            {
              c = new AsyncHttpClient();
              c.setUserAgent(Q());
              localObject1 = new HashMap();
              ((Map)localObject1).put("crypttype", "11");
              ((Map)localObject1).put("tpl", b.tpl);
              ((Map)localObject1).put("appid", b.appId);
              if (TextUtils.isEmpty(b.clientId)) {
                b.clientId = SapiUtils.getClientId(b.context);
              }
              ((Map)localObject1).put("cuid", b.clientId);
              ((Map)localObject1).put("cert_id", "2");
              ((Map)localObject1).put("isdpass", "0");
              ((Map)localObject1).put("username", account);
              ((Map)localObject1).put("password", password);
              ((Map)localObject1).put("UBI", ubi);
              if ("3".equals(accountType))
              {
                paramReloginCredentials = "1";
                ((Map)localObject1).put("isphone", paramReloginCredentials);
                ((Map)localObject1).put("login_type", "3");
                ((Map)localObject1).put("key", ((b)localObject2).a());
                ((Map)localObject1).put("sdk_version", "2");
                ((Map)localObject1).put("pinfo", com.baidu.sapi2.utils.b.b());
                ((Map)localObject1).put("sig", a((Map)localObject1, b.appSignKey));
                paramReloginCredentials = new ArrayList();
                localObject1 = ((Map)localObject1).entrySet().iterator();
                if (!((Iterator)localObject1).hasNext()) {
                  break;
                }
                localObject2 = (Map.Entry)((Iterator)localObject1).next();
                paramReloginCredentials.add(new BasicNameValuePair((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue()));
                continue;
              }
              paramReloginCredentials = "0";
            }
            catch (Throwable paramReloginCredentials)
            {
              L.e(paramReloginCredentials);
              return -100;
            }
          }
          localObject1 = new HttpPost(u());
          ((HttpPost)localObject1).setEntity(new UrlEncodedFormEntity(paramReloginCredentials, "UTF-8"));
          paramReloginCredentials = c.execute((HttpUriRequest)localObject1);
        } while (200 != paramReloginCredentials.getStatusLine().getStatusCode());
        paramReloginCredentials = EntityUtils.toString(paramReloginCredentials.getEntity());
      } while (TextUtils.isEmpty(paramReloginCredentials));
      j = a(paramReloginCredentials);
      i = j;
    } while (j != 0);
    Object localObject1 = new JSONObject(paramReloginCredentials);
    Object localObject2 = new SapiAccount();
    displayname = ((JSONObject)localObject1).optString("displayname");
    bduss = ((JSONObject)localObject1).optString("bduss");
    ptoken = ((JSONObject)localObject1).optString("ptoken");
    stoken = ((JSONObject)localObject1).optString("stoken");
    uid = ((JSONObject)localObject1).optString("uid");
    username = ((JSONObject)localObject1).optString("uname");
    app = SapiUtils.getAppName(b.context);
    extra = paramReloginCredentials;
    com.baidu.sapi2.share.b.a().a((SapiAccount)localObject2);
    return j;
  }
  
  int a(String paramString)
  {
    try
    {
      int i = new JSONObject(paramString).getInt("errno");
      return i;
    }
    catch (Exception paramString)
    {
      L.e(paramString);
    }
    return -100;
  }
  
  String a(BindWidgetAction paramBindWidgetAction)
  {
    return R().getWap() + paramBindWidgetAction.getUri();
  }
  
  public void a()
  {
    if (c != null) {
      c.cancelRequests(b.context, true);
    }
  }
  
  void a(int paramInt, QrAppLoginCallBack paramQrAppLoginCallBack, String paramString)
  {
    if (paramQrAppLoginCallBack != null) {
      paramQrAppLoginCallBack.onFinish();
    }
    QrAppLoginResponse localQrAppLoginResponse;
    if (paramString != null) {
      localQrAppLoginResponse = new QrAppLoginResponse();
    }
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject(paramString);
        paramInt = Integer.parseInt(localJSONObject.optString("errno"));
        errorCode = paramInt;
        Object localObject = localJSONObject.optJSONObject("local");
        if (localObject != null)
        {
          country = ((JSONObject)localObject).optString("country");
          province = ((JSONObject)localObject).optString("provice");
          city = ((JSONObject)localObject).optString("city");
        }
        if ((TextUtils.isEmpty(localJSONObject.optString("errno"))) || (!localJSONObject.optString("errno").equals("0"))) {
          break label297;
        }
        localObject = new SapiAccount();
        uid = localJSONObject.optString("uid");
        bduss = localJSONObject.optString("bduss");
        displayname = localJSONObject.optString("displayname");
        username = localJSONObject.optString("uname");
        stoken = localJSONObject.optString("stoken");
        ptoken = localJSONObject.optString("ptoken");
        extra = paramString;
        app = SapiUtils.getAppName(b.context);
        com.baidu.sapi2.share.b.a().a((SapiAccount)localObject);
      }
      catch (Exception paramString)
      {
        if (paramQrAppLoginCallBack == null) {
          break;
        }
      }
      paramQrAppLoginCallBack.onSystemError(paramInt);
      return;
      paramQrAppLoginCallBack.onSuccess(localQrAppLoginResponse);
      return;
      paramQrAppLoginCallBack.onSystemError(-100);
      return;
      paramQrAppLoginCallBack.onQrCodeInvalid();
      return;
      paramQrAppLoginCallBack.onBdussInvalid();
      return;
      paramQrAppLoginCallBack.onUserNotNormalized();
      return;
      if (paramQrAppLoginCallBack == null) {
        break;
      }
      paramQrAppLoginCallBack.onSystemError(paramInt);
      return;
      label297:
      if (paramQrAppLoginCallBack == null) {
        break;
      }
      switch (paramInt)
      {
      }
    }
  }
  
  void a(int paramInt, SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramString != null) {
      localSapiAccountResponse = new SapiAccountResponse();
    }
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString);
        displayname = paramString.optString("displayname");
        uid = paramString.optString("uid");
        bduss = paramString.optString("bduss");
        ptoken = paramString.optString("ptoken");
        if (paramString.optInt("error_code") == 104)
        {
          d(paramSapiCallBack, paramString.optString("force_reg_token"));
          return;
        }
        if ((!paramString.has("error_code")) && (!paramString.has("error_msg")))
        {
          SapiAccount localSapiAccount = new SapiAccount();
          uid = uid;
          bduss = bduss;
          displayname = displayname;
          stoken = stoken;
          ptoken = ptoken;
          app = SapiUtils.getAppName(b.context);
          if (paramString.has("device_token")) {
            com.baidu.sapi2.c.a(b.context).a(paramString.getString("device_token"));
          }
          com.baidu.sapi2.share.b.a().a(localSapiAccount);
        }
        if (paramSapiCallBack == null) {
          break label299;
        }
        switch (paramString.optInt("error_code"))
        {
        case 0: 
          paramSapiCallBack.onSystemError(paramString.optInt("error_code"));
          return;
        }
      }
      catch (Exception paramString)
      {
        if (paramSapiCallBack == null) {
          break label299;
        }
      }
      paramSapiCallBack.onSystemError(-100);
      return;
      paramSapiCallBack.onSuccess(null);
      return;
      if (paramSapiCallBack != null) {
        paramSapiCallBack.onSystemError(paramInt);
      }
      label299:
      return;
    }
  }
  
  void a(int paramInt, SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString, boolean paramBoolean, b paramb)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramString != null) {
      localSapiAccountResponse = new SapiAccountResponse();
    }
    for (;;)
    {
      try
      {
        String str = new JSONObject(paramString).optString("userinfo");
        paramString = "";
        if (TextUtils.isEmpty(str)) {
          break label308;
        }
        paramString = paramb.b(str);
        paramb = new JSONObject(paramString);
        displayname = paramb.optString("displayname");
        username = paramb.optString("uname");
        uid = paramb.optString("uid");
        email = paramb.optString("email");
        bduss = paramb.optString("bduss");
        ptoken = paramb.optString("ptoken");
        stoken = paramb.optString("stoken");
        authSid = paramb.optString("authsid");
      }
      catch (Exception paramString)
      {
        L.e(paramString);
        if (paramSapiCallBack == null) {
          break;
        }
      }
      paramSapiCallBack.onSystemError(paramInt);
      return;
      if (paramBoolean)
      {
        paramb = new SapiAccount();
        displayname = displayname;
        bduss = bduss;
        ptoken = ptoken;
        stoken = stoken;
        uid = uid;
        username = username;
        app = SapiUtils.getAppName(b.context);
        extra = paramString;
        com.baidu.sapi2.share.b.a().a(paramb);
      }
      paramSapiCallBack.onSuccess(localSapiAccountResponse);
      return;
      paramSapiCallBack.onSystemError(-100);
      return;
      if (paramSapiCallBack == null) {
        break;
      }
      paramSapiCallBack.onSystemError(paramInt);
      return;
      label308:
      if (paramSapiCallBack == null) {
        break;
      }
      switch (paramInt)
      {
      }
    }
  }
  
  public void a(FillUserProfileCallBack paramFillUserProfileCallBack, String paramString)
  {
    if (paramFillUserProfileCallBack == null) {
      throw new IllegalArgumentException(FillUserProfileCallBack.class.getSimpleName() + " can't be null");
    }
    if (TextUtils.isEmpty(paramString))
    {
      paramFillUserProfileCallBack.onFinish();
      paramFillUserProfileCallBack.onBdussInvalid();
      return;
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramFillUserProfileCallBack.onFinish();
      paramFillUserProfileCallBack.onNetworkFailed();
      return;
    }
    if (!SapiUtils.isSimReady(b.context))
    {
      paramFillUserProfileCallBack.onFinish();
      paramFillUserProfileCallBack.onSimUnavailable();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    ((Map)localObject).put("bduss", paramString);
    ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, J(), (RequestParams)localObject, new a.l(this, paramFillUserProfileCallBack, paramString));
  }
  
  public void a(FillUsernameCallBack paramFillUsernameCallBack, String paramString1, String paramString2, String paramString3)
  {
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      if (paramFillUsernameCallBack != null) {
        paramFillUsernameCallBack.onNetworkFailed();
      }
      return;
    }
    b localb = new b();
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    c.get(b.context, S(), new a.n(this, paramFillUsernameCallBack, localb, paramString1, paramString2, paramString3));
  }
  
  public void a(GetUserInfoCallBack paramGetUserInfoCallBack, String paramString)
  {
    if (paramGetUserInfoCallBack == null) {
      throw new IllegalArgumentException(GetUserInfoCallBack.class.getSimpleName() + " can't be null");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramGetUserInfoCallBack.onFinish();
      paramGetUserInfoCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString);
    String str = a((Map)localObject, b.appSignKey);
    RequestParams localRequestParams = new RequestParams();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localRequestParams.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    localRequestParams.put("sig", str);
    c.post(b.context, r(), localRequestParams, new a.c(this, paramGetUserInfoCallBack, paramString));
  }
  
  public void a(OAuthCallBack paramOAuthCallBack, String paramString)
  {
    if (!SapiUtils.hasActiveNetwork(b.context)) {
      if (paramOAuthCallBack != null)
      {
        paramOAuthCallBack.onFinish();
        paramOAuthCallBack.onNetworkFailed();
      }
    }
    do
    {
      return;
      if (!TextUtils.isEmpty(paramString)) {
        break;
      }
    } while (paramOAuthCallBack == null);
    paramOAuthCallBack.onFinish();
    paramOAuthCallBack.onSystemError(160102);
    return;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString);
    ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, I(), (RequestParams)localObject, new a.p(this, paramOAuthCallBack, paramString));
  }
  
  public void a(QrAppLoginCallBack paramQrAppLoginCallBack, String paramString1, String paramString2)
  {
    if (!SapiUtils.hasActiveNetwork(b.context)) {
      if (paramQrAppLoginCallBack != null)
      {
        paramQrAppLoginCallBack.onFinish();
        paramQrAppLoginCallBack.onNetworkFailed();
      }
    }
    do
    {
      return;
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
        break;
      }
    } while (paramQrAppLoginCallBack == null);
    paramQrAppLoginCallBack.onFinish();
    paramQrAppLoginCallBack.onQrCodeInvalid();
    return;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((HashMap)localObject).put("sign", paramString1);
    ((HashMap)localObject).put("cmd", paramString2);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((HashMap)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((HashMap)localObject).put("clientip", b.clientIp);
    }
    ((HashMap)localObject).put("tpl", b.tpl);
    ((HashMap)localObject).put("appid", b.appId);
    ((HashMap)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, F(), (RequestParams)localObject, new a.z(this, paramQrAppLoginCallBack, paramString1, paramString2));
  }
  
  void a(QrPCLoginCallBack paramQrPCLoginCallBack, String paramString)
  {
    paramQrPCLoginCallBack.onFinish();
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        i = Integer.parseInt(localJSONObject.optString("errno"));
        switch (i)
        {
        case 0: 
          paramQrPCLoginCallBack.onSystemError(i);
          return;
        }
      }
      catch (Exception paramString)
      {
        JSONObject localJSONObject;
        int i;
        paramQrPCLoginCallBack.onSystemError(-100);
        return;
      }
      paramString = new QrPCLoginResponse();
      errorCode = i;
      localJSONObject = localJSONObject.optJSONObject("local");
      if (localJSONObject != null)
      {
        country = localJSONObject.optString("country");
        province = localJSONObject.optString("provice");
        city = localJSONObject.optString("city");
      }
      paramQrPCLoginCallBack.onSuccess(paramString);
      return;
      paramQrPCLoginCallBack.onQrCodeInvalid();
      return;
      paramQrPCLoginCallBack.onBdussInvalid();
      return;
      paramQrPCLoginCallBack.onUserNotNormalized();
      return;
    }
  }
  
  public void a(QrPCLoginCallBack paramQrPCLoginCallBack, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (!SapiUtils.hasActiveNetwork(b.context)) {
      if (paramQrPCLoginCallBack != null)
      {
        paramQrPCLoginCallBack.onFinish();
        paramQrPCLoginCallBack.onNetworkFailed();
      }
    }
    do
    {
      do
      {
        return;
        if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
          break;
        }
      } while (paramQrPCLoginCallBack == null);
      paramQrPCLoginCallBack.onFinish();
      paramQrPCLoginCallBack.onQrCodeInvalid();
      return;
      if ((!TextUtils.isEmpty(paramString3)) || (!QrLoginAction.LOGIN.getName().equals(paramString2))) {
        break;
      }
    } while (paramQrPCLoginCallBack == null);
    paramQrPCLoginCallBack.onFinish();
    paramQrPCLoginCallBack.onBdussInvalid();
    return;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((HashMap)localObject).put("sign", paramString1);
    ((HashMap)localObject).put("cmd", paramString2);
    if (!TextUtils.isEmpty(paramString3)) {
      ((HashMap)localObject).put("bduss", paramString3);
    }
    if (!TextUtils.isEmpty(paramString5)) {
      ((HashMap)localObject).put("ptoken", paramString5);
    }
    if (!TextUtils.isEmpty(paramString4)) {
      ((HashMap)localObject).put("stoken", paramString4);
    }
    if (!TextUtils.isEmpty(b.clientId)) {
      ((HashMap)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((HashMap)localObject).put("clientip", b.clientIp);
    }
    ((HashMap)localObject).put("tpl", b.tpl);
    ((HashMap)localObject).put("appid", b.appId);
    ((HashMap)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, E(), (RequestParams)localObject, new a.B(this, paramQrPCLoginCallBack, paramString1, paramString2, paramString3, paramString4, paramString5));
  }
  
  void a(SapiCallBack<SapiResponse> paramSapiCallBack)
  {
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      if (paramSapiCallBack != null) {
        paramSapiCallBack.onNetworkFailed();
      }
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    RequestParams localRequestParams = new RequestParams();
    if (!TextUtils.isEmpty(b.clientId)) {
      localRequestParams.put("cuid", b.clientId);
    }
    localRequestParams.put("tpl", b.tpl);
    localRequestParams.put("appid", b.appId);
    c.get(b.context, m(), localRequestParams, new a.w(this, paramSapiCallBack));
  }
  
  public void a(SapiCallBack<GetHistoryPortraitsResponse> paramSapiCallBack, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    if (paramSapiCallBack == null) {
      throw new IllegalArgumentException(SapiCallBack.class.getSimpleName() + "can't be null");
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    if ((paramInt < 0) || (paramInt > 10)) {
      throw new IllegalArgumentException("abnormal request history number");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramSapiCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    ((Map)localObject).put("length", String.valueOf(paramInt));
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      ((Map)localObject).put("ptoken", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      ((Map)localObject).put("stoken", paramString3);
    }
    String str = a((Map)localObject, b.appSignKey);
    RequestParams localRequestParams = new RequestParams();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localRequestParams.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    localRequestParams.put("sig", str);
    c.post(b.context, q(), localRequestParams, new a.f(this, paramSapiCallBack, paramInt, paramString1, paramString2, paramString3));
  }
  
  public void a(SapiCallBack<SapiResponse> paramSapiCallBack, SapiAccount.ReloginCredentials paramReloginCredentials)
  {
    if (paramReloginCredentials == null) {
      throw new IllegalArgumentException("ReloginCredentials can't be null");
    }
    if (TextUtils.isEmpty(account)) {
      if (paramSapiCallBack != null) {
        paramSapiCallBack.onSystemError(130005);
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (!TextUtils.isEmpty(password)) {
              break;
            }
          } while (paramSapiCallBack == null);
          paramSapiCallBack.onSystemError(130010);
          return;
          if (!TextUtils.isEmpty(ubi)) {
            break;
          }
        } while (paramSapiCallBack == null);
        paramSapiCallBack.onSystemError(130025);
        return;
        if ((b != null) && (b.context != null)) {
          break;
        }
      } while (paramSapiCallBack == null);
      paramSapiCallBack.onSystemError(-100);
      return;
      if (SapiUtils.hasActiveNetwork(b.context)) {
        break;
      }
    } while (paramSapiCallBack == null);
    paramSapiCallBack.onNetworkFailed();
    return;
    b localb = new b();
    for (;;)
    {
      try
      {
        c = new AsyncHttpClient();
        c.setUserAgent(Q());
        HashMap localHashMap = new HashMap();
        localHashMap.put("crypttype", "11");
        localHashMap.put("tpl", b.tpl);
        localHashMap.put("appid", b.appId);
        if (TextUtils.isEmpty(b.clientId)) {
          b.clientId = SapiUtils.getClientId(b.context);
        }
        localHashMap.put("cuid", b.clientId);
        localHashMap.put("cert_id", "2");
        localHashMap.put("isdpass", "0");
        localHashMap.put("username", account);
        localHashMap.put("password", password);
        localHashMap.put("UBI", ubi);
        if ("3".equals(accountType))
        {
          localObject = "1";
          localHashMap.put("isphone", localObject);
          localHashMap.put("login_type", "3");
          localHashMap.put("key", localb.a());
          localHashMap.put("sdk_version", "2");
          localHashMap.put("pinfo", com.baidu.sapi2.utils.b.b());
          localHashMap.put("sig", a(localHashMap, b.appSignKey));
          localObject = new RequestParams(localHashMap);
          c.post(b.context, u(), (RequestParams)localObject, new a.h(this, paramSapiCallBack, paramReloginCredentials));
          return;
        }
      }
      catch (Exception paramReloginCredentials)
      {
        d(-100, paramSapiCallBack, null);
        L.e(paramReloginCredentials);
        return;
      }
      Object localObject = "0";
    }
  }
  
  public void a(SapiCallBack<GetPopularPortraitsInfoResponse> paramSapiCallBack, String paramString)
  {
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramSapiCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("bduss", paramString);
    RequestParams localRequestParams = new RequestParams();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localRequestParams.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    c.post(b.context, s(), localRequestParams, new a.g(this, paramSapiCallBack, paramString));
  }
  
  public void a(SapiCallBack<GetPortraitResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3)
  {
    if (paramSapiCallBack == null) {
      throw new IllegalArgumentException(SapiCallBack.class.getSimpleName() + "can't be null");
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramSapiCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      ((Map)localObject).put("ptoken", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      ((Map)localObject).put("stoken", paramString3);
    }
    String str = a((Map)localObject, b.appSignKey);
    RequestParams localRequestParams = new RequestParams();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localRequestParams.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    localRequestParams.put("sig", str);
    c.post(b.context, p(), localRequestParams, new a.e(this, paramSapiCallBack, paramString1, paramString2, paramString3));
  }
  
  public void a(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    if (paramSapiCallBack == null) {
      throw new IllegalArgumentException(SapiCallBack.class.getSimpleName() + "can't be null");
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    if (TextUtils.isEmpty(paramString4)) {
      throw new IllegalArgumentException("series can't be empty");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramSapiCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      ((Map)localObject).put("ptoken", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      ((Map)localObject).put("stoken", paramString3);
    }
    ((Map)localObject).put("serie", paramString4);
    ((Map)localObject).put("num", String.valueOf(paramInt));
    String str = a((Map)localObject, b.appSignKey);
    MultipartRequestParams localMultipartRequestParams = new MultipartRequestParams();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localMultipartRequestParams.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    localMultipartRequestParams.put("sig", str);
    c.post(b.context, t(), localMultipartRequestParams, new a.d(this, paramSapiCallBack, paramString1, paramString2, paramString3, paramString4, paramInt));
  }
  
  public void a(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, String paramString4)
  {
    if (paramSapiCallBack == null) {
      throw new IllegalArgumentException(SapiCallBack.class.getSimpleName() + "can't be null");
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      throw new IllegalArgumentException("file can't be empty");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramSapiCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      ((Map)localObject).put("ptoken", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      ((Map)localObject).put("stoken", paramString3);
    }
    String str = a((Map)localObject, b.appSignKey);
    MultipartRequestParams localMultipartRequestParams = new MultipartRequestParams();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localMultipartRequestParams.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    localMultipartRequestParams.put("sig", str);
    if (TextUtils.isEmpty(paramString4)) {}
    for (str = "image/jpeg";; str = paramString4)
    {
      localMultipartRequestParams.put("file", new ByteArrayInputStream(paramArrayOfByte), "portrait.jpg", str);
      c.post(b.context, o(), localMultipartRequestParams, new a.k(this, paramSapiCallBack, paramString1, paramString2, paramString3, paramArrayOfByte, paramString4));
      return;
    }
  }
  
  public void a(VoiceCheckCallBack paramVoiceCheckCallBack, String paramString)
  {
    if (paramVoiceCheckCallBack == null) {
      throw new IllegalArgumentException(VoiceCheckCallBack.class.getSimpleName() + " can't be null");
    }
    if (TextUtils.isEmpty(paramString))
    {
      paramVoiceCheckCallBack.onFinish();
      paramVoiceCheckCallBack.onSystemError(160102);
      return;
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramVoiceCheckCallBack.onFinish();
      paramVoiceCheckCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("bduss", paramString);
    ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, L(), (RequestParams)localObject, new a.q(this, paramVoiceCheckCallBack, paramString));
  }
  
  public void a(VoiceCheckCallBack paramVoiceCheckCallBack, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramVoiceCheckCallBack == null) {
      throw new IllegalArgumentException(VoiceCheckCallBack.class.getSimpleName() + " can't be null");
    }
    if (!b.voiceUserEnabled)
    {
      paramVoiceCheckCallBack.onFinish();
      paramVoiceCheckCallBack.onNotEnabled();
      return;
    }
    if (TextUtils.isEmpty(paramString))
    {
      paramVoiceCheckCallBack.onFinish();
      paramVoiceCheckCallBack.onSystemError(130005);
      return;
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramVoiceCheckCallBack.onFinish();
      paramVoiceCheckCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    ((Map)localObject).put("username", paramString);
    if (paramBoolean1) {
      ((Map)localObject).put("merge", "1");
    }
    if (paramBoolean2) {
      ((Map)localObject).put("isphone", "1");
    }
    for (;;)
    {
      ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
      localObject = new RequestParams((Map)localObject);
      c.post(b.context, L(), (RequestParams)localObject, new a.r(this, paramVoiceCheckCallBack, paramString, paramBoolean1, paramBoolean2));
      return;
      ((Map)localObject).put("isphone", "0");
    }
  }
  
  public void a(VoiceLoginCallBack paramVoiceLoginCallBack, String paramString1, String paramString2)
  {
    if (paramVoiceLoginCallBack == null) {
      throw new IllegalArgumentException(VoiceLoginCallBack.class.getSimpleName() + " can't be null");
    }
    if (!b.voiceUserEnabled)
    {
      paramVoiceLoginCallBack.onFinish();
      paramVoiceLoginCallBack.onNotEnabled();
      return;
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("voiceMd5 can't be empty");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("uid can't be empty");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramVoiceLoginCallBack.onFinish();
      paramVoiceLoginCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("voicemd5", paramString1);
    ((Map)localObject).put("id", b.d(paramString2));
    ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, N(), (RequestParams)localObject, new a.A(this, paramVoiceLoginCallBack, paramString1, paramString2));
  }
  
  public void a(VoiceRegCallBack paramVoiceRegCallBack, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramVoiceRegCallBack == null) {
      throw new IllegalArgumentException(VoiceRegCallBack.class.getSimpleName() + " can't be null");
    }
    if (!b.voiceUserEnabled)
    {
      paramVoiceRegCallBack.onFinish();
      paramVoiceRegCallBack.onNotEnabled();
      return;
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("voiceMd5 can't be empty");
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      paramVoiceRegCallBack.onFinish();
      paramVoiceRegCallBack.onNetworkFailed();
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("tpl", b.tpl);
    if (!TextUtils.isEmpty(b.clientId))
    {
      ((Map)localObject).put("clientid", b.clientId);
      ((Map)localObject).put("cuid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("voicemd5", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      ((Map)localObject).put("bduss", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      ((Map)localObject).put("authsid", paramString3);
    }
    if (paramBoolean) {
      ((Map)localObject).put("newuser", "1");
    }
    for (;;)
    {
      ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
      localObject = new RequestParams((Map)localObject);
      c.post(b.context, M(), (RequestParams)localObject, new a.o(this, paramVoiceRegCallBack, paramBoolean, paramString1, paramString2, paramString3));
      return;
      ((Map)localObject).put("newuser", "0");
    }
  }
  
  void a(String paramString1, String paramString2, String paramString3)
  {
    if (!SapiUtils.hasActiveNetwork(b.context)) {}
    do
    {
      String str;
      do
      {
        return;
        str = com.baidu.sapi2.c.a(b.context).q();
        localObject = com.baidu.sapi2.c.a(b.context).r();
      } while ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty((CharSequence)localObject)) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)));
      if (!paramString1.equals(com.baidu.sapi2.c.a(b.context).p()))
      {
        com.baidu.sapi2.c.a(b.context).c(true);
        return;
      }
      c = new AsyncHttpClient();
      c.setUserAgent(Q());
      HashMap localHashMap = new HashMap();
      if (!TextUtils.isEmpty(b.clientId)) {
        localHashMap.put("clientid", b.clientId);
      }
      if (!TextUtils.isEmpty(b.clientIp)) {
        localHashMap.put("clientip", b.clientIp);
      }
      localHashMap.put("tpl", b.tpl);
      localHashMap.put("appid", b.appId);
      localHashMap.put("deviceid", SapiUtils.getCUID(b.context));
      localHashMap.put("app", b.context.getPackageName());
      localHashMap.put("sync", com.baidu.sapi2.utils.c.a(paramString2, (String)localObject));
      localHashMap.put("time", String.valueOf(com.baidu.sapi2.c.a(b.context).u()));
      Object localObject = null;
      try
      {
        str = SoftToken.getToken(str, com.baidu.sapi2.c.a(b.context).t());
        localObject = str;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          L.e(localThrowable);
        }
      }
    } while (TextUtils.isEmpty((CharSequence)localObject));
    localHashMap.put("sign", a(localHashMap, (String)localObject));
    localHashMap.put("sig", a(localHashMap, b.appSignKey));
    localObject = new RequestParams(localHashMap);
    c.post(b.context, P(), (RequestParams)localObject, new a.a(this, paramString3, paramString1, paramString2));
  }
  
  public boolean a(SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((b == null) || (b.context == null)) {
      return false;
    }
    if (!SapiUtils.hasActiveNetwork(b.context))
    {
      if (paramSapiCallBack != null) {
        paramSapiCallBack.onNetworkFailed();
      }
      return true;
    }
    b localb = new b();
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    c.get(b.context, S(), new a.i(this, paramSapiCallBack, paramBoolean, localb, paramString1, paramString2));
    return true;
  }
  
  int b(String paramString)
  {
    int j = a(paramString);
    int i = j;
    if (j == 110000) {
      i = 0;
    }
    return i;
  }
  
  void b()
  {
    if (!b.b2cSyncEnabled()) {}
    while ((!SapiUtils.hasActiveNetwork(b.context)) || ((com.baidu.sapi2.c.a(b.context).o() != null) && (!com.baidu.sapi2.c.a(b.context).s()))) {
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    if (!TextUtils.isEmpty(b.clientId)) {
      ((Map)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((Map)localObject).put("clientip", b.clientIp);
    }
    ((Map)localObject).put("tpl", b.tpl);
    ((Map)localObject).put("appid", b.appId);
    ((Map)localObject).put("deviceid", SapiUtils.getCUID(b.context));
    ((Map)localObject).put("app", b.context.getPackageName());
    ((Map)localObject).put("time", String.valueOf(com.baidu.sapi2.c.a(b.context).u()));
    ((Map)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, O(), (RequestParams)localObject, new a.u(this));
  }
  
  void b(int paramInt, SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramString != null) {
      localSapiAccountResponse = new SapiAccountResponse();
    }
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString);
        displayname = paramString.optString("displayname");
        uid = paramString.optString("uid");
        bduss = paramString.optString("bduss");
        ptoken = paramString.optString("ptoken");
        if ((!paramString.has("error_code")) && (!paramString.has("error_msg")))
        {
          SapiAccount localSapiAccount = new SapiAccount();
          uid = uid;
          bduss = bduss;
          displayname = displayname;
          stoken = stoken;
          ptoken = ptoken;
          app = SapiUtils.getAppName(b.context);
          if (paramString.has("device_token")) {
            com.baidu.sapi2.c.a(b.context).a(paramString.getString("device_token"));
          }
          com.baidu.sapi2.share.b.a().a(localSapiAccount);
        }
        if (paramSapiCallBack == null) {
          break;
        }
        switch (paramString.optInt("error_code"))
        {
        case 0: 
          paramSapiCallBack.onSystemError(paramString.optInt("error_code"));
          return;
        }
      }
      catch (Exception paramString)
      {
        if (paramSapiCallBack == null) {
          break;
        }
      }
      paramSapiCallBack.onSuccess(null);
      return;
      paramSapiCallBack.onSystemError(-100);
      return;
      if (paramSapiCallBack == null) {
        break;
      }
      paramSapiCallBack.onSystemError(paramInt);
      return;
    }
  }
  
  void b(OAuthCallBack paramOAuthCallBack, String paramString)
  {
    paramOAuthCallBack.onFinish();
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        i = Integer.parseInt(localJSONObject.optString("errno"));
        switch (i)
        {
        case 0: 
          paramOAuthCallBack.onSystemError(i);
          return;
        }
      }
      catch (Throwable paramString)
      {
        JSONObject localJSONObject;
        int i;
        OAuthResponse localOAuthResponse;
        paramOAuthCallBack.onSystemError(-100);
        return;
      }
      localOAuthResponse = new OAuthResponse();
      errorCode = i;
      errorMsg = localJSONObject.optString("errmsg");
      accessToken = localJSONObject.optString("access_token");
      expiresIn = localJSONObject.optInt("expires_in");
      refreshToken = localJSONObject.optString("refresh_token");
      sessionKey = localJSONObject.optString("session_key");
      sessionSecret = localJSONObject.optString("session_secret");
      extra = paramString;
      paramOAuthCallBack.onSuccess(localOAuthResponse);
      return;
    }
  }
  
  boolean b(SapiCallBack<SapiResponse> paramSapiCallBack)
  {
    if ((b == null) || (b.context == null) || (TextUtils.isEmpty(b.deviceLoginSignKey)) || (!com.baidu.sapi2.c.a(b.context).b())) {}
    do
    {
      return false;
      if (SapiUtils.hasActiveNetwork(b.context)) {
        break;
      }
    } while (paramSapiCallBack == null);
    paramSapiCallBack.onNetworkFailed();
    return false;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    String str = b.a.a(com.baidu.sapi2.utils.b.d(b.context));
    ((HashMap)localObject).put("ptpl", b.tpl);
    ((HashMap)localObject).put("device_id", str);
    ((HashMap)localObject).put("device_info", com.baidu.sapi2.utils.b.d());
    ((HashMap)localObject).put("package_sign", b.deviceLoginSignKey);
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, C(), (RequestParams)localObject, new a.y(this, paramSapiCallBack));
    return true;
  }
  
  public boolean b(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    if ((b == null) || (b.context == null)) {}
    do
    {
      do
      {
        return false;
        if (SapiUtils.hasActiveNetwork(b.context)) {
          break;
        }
      } while (paramSapiCallBack == null);
      paramSapiCallBack.onNetworkFailed();
      return false;
      if (!TextUtils.isEmpty(paramString)) {
        break;
      }
    } while (paramSapiCallBack == null);
    paramSapiCallBack.onSystemError(257);
    return false;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((HashMap)localObject).put("username", paramString);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((HashMap)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((HashMap)localObject).put("clientip", b.clientIp);
    }
    ((HashMap)localObject).put("tpl", b.tpl);
    ((HashMap)localObject).put("appid", b.appId);
    ((HashMap)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, H(), (RequestParams)localObject, new a.t(this, paramSapiCallBack, paramString));
    return true;
  }
  
  void c()
  {
    if ((b == null) || (b.context == null) || (!SapiUtils.hasActiveNetwork(b.context))) {
      return;
    }
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    if (com.baidu.sapi2.c.a(b.context).a() != null)
    {
      ((HashMap)localObject).put("device_id", com.baidu.sapi2.utils.b.d(b.context));
      ((HashMap)localObject).put("device_token", com.baidu.sapi2.c.a(b.context).a());
    }
    localObject = new RequestParams((Map)localObject);
    c.get(b.context, A(), (RequestParams)localObject, new a.v(this));
  }
  
  void c(int paramInt, SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramString != null) {
      localSapiAccountResponse = new SapiAccountResponse();
    }
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString);
        displayname = paramString.optString("displayname");
        username = paramString.optString("uname");
        uid = paramString.optString("uid");
        bduss = paramString.optString("bduss");
        ptoken = paramString.optString("ptoken");
        stoken = paramString.optString("stoken");
        newReg = paramString.optBoolean("newreg");
        if (newReg) {
          authSid = paramString.optString("authsid");
        }
        if (paramSapiCallBack == null) {
          break;
        }
        switch (paramString.optInt("errno"))
        {
        case 0: 
          paramSapiCallBack.onSystemError(paramInt);
          return;
        }
      }
      catch (Exception paramString)
      {
        if (paramSapiCallBack == null) {
          break;
        }
      }
      paramSapiCallBack.onSuccess(localSapiAccountResponse);
      return;
      paramSapiCallBack.onSystemError(-100);
      return;
      paramSapiCallBack.onSystemError(paramString.optInt("errno"));
      return;
      if (paramSapiCallBack == null) {
        break;
      }
      paramSapiCallBack.onSystemError(paramInt);
      return;
    }
  }
  
  public boolean c(SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString)
  {
    if ((b == null) || (b.context == null)) {}
    do
    {
      do
      {
        return false;
        if (SapiUtils.hasActiveNetwork(b.context)) {
          break;
        }
      } while (paramSapiCallBack == null);
      paramSapiCallBack.onNetworkFailed();
      return false;
      if (!TextUtils.isEmpty(paramString)) {
        break;
      }
    } while (paramSapiCallBack == null);
    paramSapiCallBack.onSystemError(-103);
    return false;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    Object localObject = new HashMap();
    ((HashMap)localObject).put("sms", paramString);
    if (!TextUtils.isEmpty(b.clientId)) {
      ((HashMap)localObject).put("clientid", b.clientId);
    }
    if (!TextUtils.isEmpty(b.clientIp)) {
      ((HashMap)localObject).put("clientip", b.clientIp);
    }
    ((HashMap)localObject).put("tpl", b.tpl);
    ((HashMap)localObject).put("appid", b.appId);
    ((HashMap)localObject).put("sig", a((Map)localObject, b.appSignKey));
    localObject = new RequestParams((Map)localObject);
    c.post(b.context, G(), (RequestParams)localObject, new a.s(this, paramSapiCallBack, paramString));
    return true;
  }
  
  String d()
  {
    return R().getWap() + "/passport/login";
  }
  
  void d(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    if ((b == null) || (b.context == null) || (TextUtils.isEmpty(b.deviceLoginSignKey))) {}
    do
    {
      return;
      if (SapiUtils.hasActiveNetwork(b.context)) {
        break;
      }
    } while (paramSapiCallBack == null);
    paramSapiCallBack.onNetworkFailed();
    return;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    HashMap localHashMap = new HashMap();
    String str = b.a.a(com.baidu.sapi2.utils.b.d(b.context));
    localHashMap.put("ptpl", b.tpl);
    localHashMap.put("device_id", str);
    localHashMap.put("device_info", com.baidu.sapi2.utils.b.d());
    localHashMap.put("force_reg_token", paramString);
    paramString = new RequestParams(localHashMap);
    c.post(b.context, D(), paramString, new a.x(this, paramSapiCallBack));
  }
  
  String e()
  {
    return R().getWap() + "/passport/getpass";
  }
  
  boolean e(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    if ((b == null) || (b.context == null) || (TextUtils.isEmpty(b.deviceLoginSignKey))) {}
    do
    {
      return false;
      if (SapiUtils.hasActiveNetwork(b.context)) {
        break;
      }
    } while (paramSapiCallBack == null);
    paramSapiCallBack.onNetworkFailed();
    return false;
    c = new AsyncHttpClient();
    c.setUserAgent(Q());
    HashMap localHashMap = new HashMap();
    String str = b.a.a(com.baidu.sapi2.utils.b.d(b.context));
    localHashMap.put("ptpl", b.tpl);
    localHashMap.put("device_id", str);
    localHashMap.put("device_token", paramString);
    localHashMap.put("package_sign", b.deviceLoginSignKey);
    paramString = new RequestParams(localHashMap);
    c.post(b.context, B(), paramString, new a.C(this, paramSapiCallBack));
    return true;
  }
  
  String f()
  {
    return R().getWap() + "/wp/wappassword";
  }
  
  void f(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    for (;;)
    {
      try
      {
        i = Integer.parseInt(new JSONObject(paramString).optString("errno"));
        switch (i)
        {
        case 0: 
          paramSapiCallBack.onSystemError(i);
          return;
        }
      }
      catch (Exception paramString)
      {
        int i;
        paramSapiCallBack.onSystemError(-100);
        return;
      }
      paramString = new SapiResponse();
      errorCode = i;
      errorMsg = "短信验证码发送成功";
      paramSapiCallBack.onSuccess(paramString);
      return;
    }
  }
  
  String g()
  {
    return R().getWap() + "/wp/recordindex";
  }
  
  String h()
  {
    return R().getWap() + "/v2/?bindingaccount&";
  }
  
  String i()
  {
    return R().getWap() + "/v2/?bindingret";
  }
  
  String j()
  {
    return R().getWap() + "/passport/authwidget";
  }
  
  String k()
  {
    return R().getWap() + "/wp/unitewidget";
  }
  
  String l()
  {
    return R().getWap() + "/wp/accountwidget-init";
  }
  
  String m()
  {
    return R().getWap() + "/wp/api/security/antireplaytoken";
  }
  
  String n()
  {
    return d.a() + "/v2/sapi/center/filluname";
  }
  
  String o()
  {
    return d.a() + "/v2/sapi/center/setportrait";
  }
  
  String p()
  {
    return d.a() + "/v2/sapi/center/getportrait";
  }
  
  String q()
  {
    return R().getPortraitUrl() + "/sys/history";
  }
  
  String r()
  {
    return d.a() + "/v2/sapi/center/getuinfo";
  }
  
  String s()
  {
    return R().getPortraitUrl() + "/sys/portrait/hotitemlist";
  }
  
  String t()
  {
    return R().getPortraitUrl() + "/sys/sethotitem";
  }
  
  String u()
  {
    return d.a() + "/v2/sapi/login";
  }
  
  public String v()
  {
    return d.a() + "/phoenix/account/ssologin";
  }
  
  public String w()
  {
    return d.a() + "/phoenix/account/ssologin";
  }
  
  public String x()
  {
    return d.a() + "/phoenix/account/startlogin";
  }
  
  public String y()
  {
    return d.a() + "/phoenix/account/afterauth";
  }
  
  public String z()
  {
    return d.a() + "/phoenix/account/finishbind";
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */