package com.baidu.sapi2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.ProgressBar;
import com.baidu.cloudsdk.common.http.AsyncHttpClient;
import com.baidu.sapi2.plugin.sso.SsoHandler;
import com.baidu.sapi2.share.b;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.baidu.sapi2.shell.response.SapiAccountResponse;
import com.baidu.sapi2.shell.response.SocialResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.d;
import com.baidu.sapi2.utils.enums.BindWidgetAction;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.RegistMode;
import com.baidu.sapi2.utils.enums.SocialType;
import com.baidu.sapi2.utils.enums.Switch;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.xmlpull.v1.XmlPullParser;

public final class SapiWebView
  extends WebView
{
  public static final long DEFAULT_TIMEOUT_MILLIS = 90000L;
  private static final int a = 1;
  private static final String ad = "javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.net){Pass.client.net()}}())";
  private static final int b = 0;
  private static final String c = "http://www.baidu.com";
  private static final String d = "__wp-action";
  private static final String e = "auth-widget";
  private static final String f = "forget-pwd";
  private static final String g = "modify-pwd";
  private static final String h = "text/html";
  private static final String i = "UTF-8";
  private static final String j = "<link href=\"\" type=text/css rel=stylesheet id=product-skin>";
  private static final String k = "file:///android_asset";
  private static final String l = "#login";
  private static final String m = "#authPwd";
  private static final String n = "#reg";
  private static final String o = "#canshare_accounts";
  private static final String p = "#sms_login";
  private static final String q = "#fastReg";
  private static final String r = "#fastRegSuccess";
  private static final String s = "#fastRegVerify";
  private static final String t = "您的手机被恶意软件篡改，可能无法使用第三方帐号登录百度，请更换其他登录方式";
  private static final String u = "已自动识别并填写短信验证码";
  private static final String v = "发送一条短信，即可完成注册。";
  private static final String w = "服务错误，请稍后重试";
  private static final String x = "微信未安装";
  private Handler A;
  private Handler B;
  private Handler C;
  private SapiWebView.FastRegHandler D;
  private SapiWebView.VoiceLoginHandler E;
  private SapiWebView.NMLoginHandler F;
  private SapiWebView.LCLoginHandler G;
  private SapiWebView.UniteVerifyHandler H;
  private SapiWebView.WeixinHandler I;
  private SapiWebView.ChangePwdCallback J;
  private SapiWebView.AuthWidgetCallback K;
  private SapiWebView.UniteVerifyCallback L;
  private SapiWebView.UniteBindCallback M;
  private SsoHandler N;
  private View O;
  private View P;
  private String Q;
  private ProgressBar R;
  private ProgressDialog S;
  private long T;
  private Handler U = new SapiWebView.1(this);
  private SapiWebView.TimeoutTask V = new SapiWebView.TimeoutTask(this, null);
  private BroadcastReceiver W;
  private SapiWebView.SmsHandler Z;
  private Runnable aa;
  private SapiWebView.OnFinishCallback ab;
  private SapiWebView.OnBackCallback ac;
  private SapiWebView.FastRegAction ae;
  private SapiAccountResponse af;
  private SapiConfiguration y;
  private AuthorizationListener z;
  
  public SapiWebView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public SapiWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public SapiWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  static SapiAccountResponse a(Context paramContext, String paramString)
  {
    Object localObject1 = null;
    paramString = a("<client>([\\S\\s]*?)</client>", paramString);
    if (TextUtils.isEmpty(paramString)) {
      return (SapiAccountResponse)localObject1;
    }
    for (;;)
    {
      try
      {
        localXmlPullParser = Xml.newPullParser();
        localXmlPullParser.setInput(new ByteArrayInputStream(paramString.getBytes()), "UTF-8");
        int i1 = localXmlPullParser.getEventType();
        localObject1 = null;
        if (i1 != 1)
        {
          paramString = (String)localObject1;
          switch (i1)
          {
          default: 
            paramString = (String)localObject1;
          case 3: 
            label86:
            localObject3 = paramString;
          }
          try
          {
            i1 = localXmlPullParser.next();
            localObject1 = paramString;
          }
          catch (Exception localException1)
          {
            paramString = (String)localObject3;
          }
          localObject3 = localObject1;
          str = localXmlPullParser.getName();
          localObject3 = localObject1;
          if (str.equalsIgnoreCase("data"))
          {
            paramString = (String)localObject1;
            if (localObject1 != null) {
              continue;
            }
            localObject3 = localObject1;
            paramString = new SocialResponse();
            continue;
          }
          if (localObject1 == null)
          {
            localObject3 = localObject1;
            if (str.equalsIgnoreCase("error_code"))
            {
              localObject3 = localObject1;
              paramString = new SocialResponse();
            }
          }
        }
      }
      catch (Exception localException2)
      {
        XmlPullParser localXmlPullParser;
        Object localObject3;
        String str;
        paramString = null;
        continue;
      }
      try
      {
        errorCode = Integer.parseInt(localXmlPullParser.nextText());
      }
      catch (Exception localException3)
      {
        continue;
      }
      if (localObject1 == null)
      {
        localObject3 = localObject1;
        if (str.equalsIgnoreCase("error_description"))
        {
          localObject3 = localObject1;
          paramString = new SocialResponse();
        }
      }
      try
      {
        errorMsg = localXmlPullParser.nextText();
      }
      catch (Exception localException4)
      {
        continue;
      }
      paramString = (String)localObject1;
      if (localObject1 != null)
      {
        localObject3 = localObject1;
        if (!str.equalsIgnoreCase("error_code")) {
          continue;
        }
        localObject3 = localObject1;
        errorCode = Integer.parseInt(localXmlPullParser.nextText());
        paramString = (String)localObject1;
      }
    }
    L.e(localException1);
    for (;;)
    {
      Object localObject2 = paramString;
      if (paramString == null) {
        break;
      }
      localObject2 = new SapiAccount();
      uid = uid;
      bduss = bduss;
      displayname = displayname;
      username = username;
      stoken = stoken;
      ptoken = ptoken;
      app = SapiUtils.getAppName(paramContext);
      d.a((SapiAccount)localObject2, socialType, socialPortraitUrl);
      if (SapiUtils.isValidAccount((SapiAccount)localObject2)) {
        errorCode = 0;
      }
      b.a().a((SapiAccount)localObject2);
      return paramString;
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("error_description"))
      {
        localObject3 = localObject2;
        errorMsg = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("is_binded"))
      {
        localObject3 = localObject2;
        isBinded = localXmlPullParser.nextText().equals("1");
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("display_name"))
      {
        localObject3 = localObject2;
        displayname = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("passport_uname"))
      {
        localObject3 = localObject2;
        username = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("bduid"))
      {
        localObject3 = localObject2;
        uid = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("bduss"))
      {
        localObject3 = localObject2;
        bduss = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("ptoken"))
      {
        localObject3 = localObject2;
        ptoken = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("os_username"))
      {
        localObject3 = localObject2;
        socialUname = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      localObject3 = localObject2;
      if (str.equalsIgnoreCase("os_headurl"))
      {
        localObject3 = localObject2;
        socialPortraitUrl = localXmlPullParser.nextText();
        paramString = (String)localObject2;
        break label86;
      }
      paramString = (String)localObject2;
      localObject3 = localObject2;
      if (!str.equalsIgnoreCase("os_type")) {
        break label86;
      }
      localObject3 = localObject2;
      socialType = SocialType.getSocialType(Integer.parseInt(localXmlPullParser.nextText()));
      paramString = (String)localObject2;
      break label86;
      paramString = (String)localObject2;
    }
  }
  
  static SapiAccountResponse a(String paramString)
  {
    Object localObject1 = null;
    paramString = a("<client>([\\S\\s]*?)</client>", paramString);
    if (TextUtils.isEmpty(paramString)) {
      return (SapiAccountResponse)localObject1;
    }
    for (;;)
    {
      try
      {
        localXmlPullParser = Xml.newPullParser();
        localXmlPullParser.setInput(new ByteArrayInputStream(paramString.getBytes()), "UTF-8");
        int i1 = localXmlPullParser.getEventType();
        localObject1 = null;
        if (i1 != 1)
        {
          paramString = (String)localObject1;
          switch (i1)
          {
          default: 
            paramString = (String)localObject1;
          case 3: 
            label86:
            localObject2 = paramString;
          }
          try
          {
            i1 = localXmlPullParser.next();
            localObject1 = paramString;
          }
          catch (Throwable localThrowable1)
          {
            paramString = (String)localObject2;
          }
          localObject2 = localObject1;
          str2 = localXmlPullParser.getName();
          localObject2 = localObject1;
          if (str2.equalsIgnoreCase("data"))
          {
            paramString = (String)localObject1;
            if (localObject1 != null) {
              continue;
            }
            localObject2 = localObject1;
            paramString = new SapiAccountResponse();
            continue;
          }
          if (localObject1 == null)
          {
            localObject2 = localObject1;
            if (str2.equalsIgnoreCase("error_code"))
            {
              localObject2 = localObject1;
              paramString = new SapiAccountResponse();
            }
          }
        }
      }
      catch (Throwable localThrowable2)
      {
        XmlPullParser localXmlPullParser;
        Object localObject2;
        String str2;
        paramString = null;
        continue;
      }
      try
      {
        errorCode = Integer.parseInt(localXmlPullParser.nextText());
      }
      catch (Throwable localThrowable3)
      {
        continue;
      }
      if (localObject1 == null)
      {
        localObject2 = localObject1;
        if (str2.equalsIgnoreCase("error_description"))
        {
          localObject2 = localObject1;
          paramString = new SapiAccountResponse();
        }
      }
      try
      {
        errorMsg = localXmlPullParser.nextText();
      }
      catch (Throwable localThrowable4)
      {
        continue;
        boolean bool = false;
        continue;
      }
      paramString = (String)localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!str2.equalsIgnoreCase("errno")) {
          continue;
        }
        localObject2 = localObject1;
        errorCode = Integer.parseInt(localXmlPullParser.nextText());
        paramString = (String)localObject1;
      }
    }
    L.e(localThrowable1);
    for (;;)
    {
      String str1 = paramString;
      if (paramString == null) {
        break;
      }
      str1 = paramString;
      if (TextUtils.isEmpty(bduss)) {
        break;
      }
      str1 = paramString;
      if (errorCode != -100) {
        break;
      }
      errorCode = 0;
      return paramString;
      localObject2 = str1;
      if (str2.equalsIgnoreCase("uname"))
      {
        localObject2 = str1;
        username = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("errmsg"))
      {
        localObject2 = str1;
        errorMsg = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("bduss"))
      {
        localObject2 = str1;
        bduss = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("ptoken"))
      {
        localObject2 = str1;
        ptoken = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("stoken"))
      {
        localObject2 = str1;
        stoken = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("displayname"))
      {
        localObject2 = str1;
        displayname = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("uid"))
      {
        localObject2 = str1;
        uid = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("authsid"))
      {
        localObject2 = str1;
        authSid = localXmlPullParser.nextText();
        localObject2 = str1;
        if (TextUtils.isEmpty(authSid)) {
          break label772;
        }
        bool = true;
        localObject2 = str1;
        newReg = bool;
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("account"))
      {
        localObject2 = str1;
        reloginCredentials.account = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("accounttype"))
      {
        localObject2 = str1;
        reloginCredentials.accountType = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      localObject2 = str1;
      if (str2.equalsIgnoreCase("password"))
      {
        localObject2 = str1;
        reloginCredentials.password = localXmlPullParser.nextText();
        paramString = str1;
        break label86;
      }
      paramString = str1;
      localObject2 = str1;
      if (!str2.equalsIgnoreCase("ubi")) {
        break label86;
      }
      localObject2 = str1;
      reloginCredentials.ubi = localXmlPullParser.nextText();
      paramString = str1;
      break label86;
      paramString = str1;
    }
  }
  
  static String a(String paramString1, String paramString2)
  {
    String str = "";
    paramString1 = Pattern.compile(paramString1);
    if (TextUtils.isEmpty(paramString2)) {
      paramString1 = str;
    }
    for (;;)
    {
      return paramString1;
      paramString2 = paramString1.matcher(paramString2);
      for (paramString1 = str; paramString2.find(); paramString1 = paramString2.group()) {}
    }
  }
  
  @SuppressLint({"AddJavascriptInterface"})
  private void a()
  {
    T = 90000L;
    Q = "已自动识别并填写短信验证码";
    y = SapiAccountManager.getInstance().getSapiConfiguration();
    b();
    addJavascriptInterface(new SapiWebView.SapiWebViewShell(this), "sapi_obj");
    setWebViewClient(new SapiWebView.2(this));
    setWebChromeClient(new SapiWebView.3(this));
    if (z == null) {
      z = new SapiWebView.DefaultAuthorizationListener(this);
    }
    if (I == null) {
      I = new SapiWebView.DefaultWeixinHandler(this);
    }
    Z = new SapiWebView.SmsHandler(this, null);
    aa = new SapiWebView.4(this);
  }
  
  private void a(int paramInt)
  {
    String str = SapiAccountManager.getInstance().getAccountService().a();
    str = str + "&loginInitType=" + b(paramInt);
    loadUrl(str + "#canshare_accounts");
  }
  
  private void a(Handler paramHandler)
  {
    if (W == null)
    {
      W = new SapiWebView.SMSReceiver(paramHandler);
      paramHandler = new IntentFilter();
      paramHandler.addAction("android.provider.Telephony.SMS_RECEIVED");
      paramHandler.setPriority(Integer.MAX_VALUE);
      getContext().registerReceiver(W, paramHandler);
    }
  }
  
  private void a(SapiAccountResponse paramSapiAccountResponse)
  {
    af = paramSapiAccountResponse;
    loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&authsid=" + authSid + "&bduss=" + bduss + "&ptoken=" + ptoken + "&stoken=" + stoken + "#fastRegSuccess");
  }
  
  private int b(int paramInt)
  {
    int i1;
    if (paramInt == 0) {
      i1 = y.smsLoginConfig.flagLoginBtnType.ordinal();
    }
    do
    {
      do
      {
        return i1;
        i1 = paramInt;
      } while (paramInt == 1);
      i1 = paramInt;
    } while (paramInt == 2);
    return 0;
  }
  
  static String b(String paramString)
  {
    try
    {
      String str = getInstancegetSapiConfigurationskin;
      if (!TextUtils.isEmpty(paramString))
      {
        if ((!TextUtils.isEmpty(str)) && (str.startsWith("file:///android_asset"))) {
          return paramString.replace("<link href=\"\" type=text/css rel=stylesheet id=product-skin>", "<link type=\"text/css\" rel=\"stylesheet\" href=\"" + str + "\">");
        }
        str = paramString.replace("<link href=\"\" type=text/css rel=stylesheet id=product-skin>", "");
        return str;
      }
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
    return paramString;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void b()
  {
    getSettings().setJavaScriptEnabled(true);
    setScrollBarStyle(0);
    getSettings().setSaveFormData(false);
    getSettings().setSavePassword(false);
    setDownloadListener(new SapiWebView.5(this));
  }
  
  private void b(SapiAccountResponse paramSapiAccountResponse)
  {
    if (paramSapiAccountResponse == null) {}
    do
    {
      return;
      SapiAccount localSapiAccount = new SapiAccount();
      uid = uid;
      bduss = bduss;
      displayname = displayname;
      stoken = stoken;
      ptoken = ptoken;
      email = email;
      username = username;
      app = SapiUtils.getAppName(getContext());
      c.a(getContext()).a(uid, reloginCredentials);
      b.a().a(localSapiAccount);
    } while (z == null);
    post(new SapiWebView.15(this));
  }
  
  private void c(String paramString)
  {
    if ((!SapiUtils.hasActiveNetwork(getContext())) && (!paramString.startsWith("javascript:")))
    {
      g();
      return;
    }
    post(new SapiWebView.14(this, paramString));
  }
  
  private boolean c()
  {
    return ((y.loginShareStrategy() == LoginShareStrategy.CHOICE) || (y.loginShareStrategy() == LoginShareStrategy.SILENT)) && (SapiAccountManager.getInstance().getShareAccounts().size() > 0);
  }
  
  private String d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return "BDUSS=" + paramString + ";domain=baidu.com;path=/";
  }
  
  private void d()
  {
    a(0);
  }
  
  private void e()
  {
    if ((!SapiUtils.isSimReady(getContext())) || (!SapiUtils.hasActiveNetwork(getContext())))
    {
      loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&regLink=0" + "#sms_login");
      return;
    }
    loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "#fastReg");
    ae = new SapiWebView.FastRegAction(this);
    SapiWebView.FastRegAction.a(ae);
  }
  
  private void f()
  {
    stopLoading();
    post(new SapiWebView.8(this));
  }
  
  private void g()
  {
    post(new SapiWebView.9(this));
  }
  
  private void h()
  {
    if (W != null) {}
    try
    {
      getContext().unregisterReceiver(W);
      W = null;
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  void a(Context paramContext, List<NameValuePair> paramList)
  {
    CookieSyncManager.createInstance(paramContext);
    paramContext = CookieManager.getInstance();
    paramContext.setAcceptCookie(true);
    if (TextUtils.isEmpty(y.clientId)) {
      y.clientId = SapiUtils.getClientId(getContext());
    }
    Object localObject = "cuid=" + y.clientId + ";domain=" + y.environment.getWap().replace("http://", "").replaceAll("(:[0-9]{1,4})?", "") + ";path=/";
    paramContext.setCookie(y.environment.getWap(), (String)localObject);
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (NameValuePair)paramList.next();
        if ((!TextUtils.isEmpty(((NameValuePair)localObject).getName())) && (!TextUtils.isEmpty(((NameValuePair)localObject).getValue()))) {
          paramContext.setCookie(((NameValuePair)localObject).getName(), ((NameValuePair)localObject).getValue());
        }
      }
    }
    CookieSyncManager.getInstance().sync();
  }
  
  public void back()
  {
    b(af);
    a(this, "javascript:(function(){if(window.Pass&&Pass.switchView){Pass.switchView('back')}}())");
    if (((O != null) && (O.getVisibility() == 0)) || ((P != null) && (P.getVisibility() == 0))) {
      finish();
    }
  }
  
  public void finish()
  {
    h();
    if (ae != null)
    {
      SapiWebView.FastRegAction.a(ae, true);
      SapiWebView.FastRegAction.c(ae).removeCallbacks(SapiWebView.FastRegAction.b(ae));
    }
    if (ab != null) {
      ab.onFinish();
    }
  }
  
  public long getTimeoutMillis()
  {
    return T;
  }
  
  public void loadAuthWidget(String paramString1, String paramString2)
  {
    loadAuthWidget(paramString1, paramString2, null);
  }
  
  public void loadAuthWidget(String paramString1, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("authToken can't be empty");
    }
    SapiUtils.webLogin(getContext(), paramString1);
    ArrayList localArrayList = new ArrayList();
    try
    {
      localArrayList.add(new BasicNameValuePair("token", URLEncoder.encode(paramString2, "UTF-8")));
      localArrayList.add(new BasicNameValuePair("u", URLEncoder.encode("http://www.baidu.com?__wp-action=auth-widget", "UTF-8")));
      if (!TextUtils.isEmpty(paramString3)) {
        localArrayList.add(new BasicNameValuePair("skin", paramString3));
      }
      paramString2 = SapiAccountManager.getInstance().getAccountService().e();
      paramString1 = paramString2;
      if (localArrayList.size() > 0) {
        paramString1 = paramString2 + "&" + SapiUtils.createRequestParams(localArrayList);
      }
      loadUrl(paramString1);
      return;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      for (;;)
      {
        L.e(paramString1);
      }
    }
  }
  
  public void loadBindWidget(BindWidgetAction paramBindWidgetAction, String paramString)
  {
    loadBindWidget(paramBindWidgetAction, paramString, false);
  }
  
  public void loadBindWidget(BindWidgetAction paramBindWidgetAction, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramBindWidgetAction == null) {
      throw new IllegalArgumentException("BindWidgetAction can't be null");
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    Object localObject = new ArrayList();
    if (!TextUtils.isEmpty(paramString2)) {
      ((List)localObject).add(new BasicNameValuePair("skin", paramString2));
    }
    if (paramBoolean) {
      ((List)localObject).add(new BasicNameValuePair("skip", "1"));
    }
    paramString2 = SapiAccountManager.getInstance().getAccountService().a(paramBindWidgetAction);
    paramBindWidgetAction = paramString2;
    if (((List)localObject).size() > 0) {
      paramBindWidgetAction = paramString2 + "&" + SapiUtils.createRequestParams((List)localObject);
    }
    localObject = "BIND_BDUSS=" + paramString1 + ";domain=" + y.environment.getWap().replace("http://", "").replaceAll("(:[0-9]{1,4})?", "") + ";path=/";
    paramString2 = new ArrayList();
    paramString2.add(new BasicNameValuePair(y.environment.getWap(), (String)localObject));
    paramString1 = "BDUSS=" + paramString1 + ";domain=baidu.com;path=/";
    paramString2.add(new BasicNameValuePair(y.environment.getWap(), paramString1));
    loadUrl(paramBindWidgetAction, paramString2);
  }
  
  public void loadBindWidget(BindWidgetAction paramBindWidgetAction, String paramString, boolean paramBoolean)
  {
    loadBindWidget(paramBindWidgetAction, paramString, null, paramBoolean);
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    post(new SapiWebView.7(this, paramString1, paramString2, paramString3, paramString4, paramString5));
  }
  
  public void loadFastReg()
  {
    switch (SapiWebView.16.a[c.a(getContext()).k().d().ordinal()])
    {
    default: 
      e();
      return;
    case 1: 
      e();
      return;
    }
    loadRegist();
  }
  
  public void loadFillUProfile(String paramString)
  {
    loadFillUProfile(paramString, false);
  }
  
  public void loadFillUProfile(String paramString, boolean paramBoolean)
  {
    loadFillUProfile(paramString, paramBoolean, null);
  }
  
  public void loadFillUProfile(String paramString1, boolean paramBoolean, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString2)) {
      localArrayList.add(new BasicNameValuePair("skin", paramString2));
    }
    if (paramBoolean) {
      localArrayList.add(new BasicNameValuePair("simplify", "1"));
    }
    Object localObject = SapiAccountManager.getInstance().getAccountService().h();
    paramString2 = (String)localObject;
    if (localArrayList.size() > 0) {
      paramString2 = (String)localObject + "&" + SapiUtils.createRequestParams(localArrayList);
    }
    localObject = new ArrayList();
    ((List)localObject).add(new BasicNameValuePair(paramString2, d(paramString1)));
    loadUrl(paramString2, (List)localObject);
  }
  
  public void loadForgetPwd()
  {
    loadForgetPwd(null);
  }
  
  public void loadForgetPwd(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      localArrayList.add(new BasicNameValuePair("u", URLEncoder.encode("http://www.baidu.com?__wp-action=forget-pwd", "UTF-8")));
      if (!TextUtils.isEmpty(paramString)) {
        localArrayList.add(new BasicNameValuePair("skin", paramString));
      }
      String str = SapiAccountManager.getInstance().getAccountService().b();
      paramString = str;
      if (localArrayList.size() > 0) {
        paramString = str + "&" + SapiUtils.createRequestParams(localArrayList);
      }
      loadUrl(paramString);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        L.e(paramString);
      }
    }
  }
  
  public void loadLogin()
  {
    loadLogin(0);
  }
  
  public void loadLogin(int paramInt)
  {
    if (c())
    {
      a(paramInt);
      return;
    }
    switch (paramInt)
    {
    default: 
      loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "#login");
      return;
    case 0: 
      loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "#login");
      return;
    case 1: 
      loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "#sms_login");
      return;
    }
    if (D != null)
    {
      post(new SapiWebView.6(this));
      return;
    }
    loadFastReg();
  }
  
  public void loadLoginWithUserName(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      loadLogin();
      return;
    }
    String str = "";
    try
    {
      paramString = "disusername=" + URLEncoder.encode(paramString, "UTF-8");
      if (!TextUtils.isEmpty(paramString))
      {
        loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&" + paramString + "#authPwd");
        return;
      }
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        L.e(paramString);
        paramString = str;
      }
      loadLogin();
    }
  }
  
  public void loadModifyPwd(String paramString)
  {
    loadModifyPwd(paramString, null);
  }
  
  public void loadModifyPwd(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    Object localObject2 = new ArrayList();
    try
    {
      ((List)localObject2).add(new BasicNameValuePair("u", URLEncoder.encode("http://www.baidu.com?__wp-action=modify-pwd", "UTF-8")));
      if (!TextUtils.isEmpty(paramString2)) {
        ((List)localObject2).add(new BasicNameValuePair("skin", paramString2));
      }
      Object localObject1 = SapiAccountManager.getInstance().getAccountService().c();
      paramString2 = (String)localObject1;
      if (((List)localObject2).size() > 0) {
        paramString2 = (String)localObject1 + "&" + SapiUtils.createRequestParams((List)localObject2);
      }
      localObject2 = "BIND_BDUSS=" + paramString1 + ";domain=" + y.environment.getWap().replace("http://", "").replaceAll("(:[0-9]{1,4})?", "") + ";path=/";
      localObject1 = new ArrayList();
      ((List)localObject1).add(new BasicNameValuePair(y.environment.getWap(), (String)localObject2));
      paramString1 = "BDUSS=" + paramString1 + ";domain=baidu.com;path=/";
      ((List)localObject1).add(new BasicNameValuePair(y.environment.getWap(), paramString1));
      loadUrl(paramString2, (List)localObject1);
      return;
    }
    catch (UnsupportedEncodingException paramString2)
    {
      for (;;)
      {
        L.e(paramString2);
      }
    }
  }
  
  public void loadOperationRecord(String paramString)
  {
    loadOperationRecord(paramString, null);
  }
  
  public void loadOperationRecord(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("bduss can't be empty");
    }
    SapiUtils.webLogin(getContext(), paramString1);
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString2)) {
      localArrayList.add(new BasicNameValuePair("skin", paramString2));
    }
    paramString2 = SapiAccountManager.getInstance().getAccountService().d();
    paramString1 = paramString2;
    if (localArrayList.size() > 0) {
      paramString1 = paramString2 + "&" + SapiUtils.createRequestParams(localArrayList);
    }
    loadUrl(paramString1);
  }
  
  public void loadQuickUserReg()
  {
    if (!y.quickUserEnabled)
    {
      loadRegist();
      return;
    }
    String str2 = SapiAccountManager.getInstance().getAccountService().a();
    String str1 = str2;
    if (y.registMode != RegistMode.QUICK_USER) {
      str1 = str2 + "&regtype=2";
    }
    loadUrl(str1 + "#reg");
  }
  
  public void loadRegist()
  {
    loadRegist(null);
  }
  
  public void loadRegist(List<NameValuePair> paramList)
  {
    Object localObject2 = SapiAccountManager.getInstance().getAccountService().a();
    Object localObject1 = localObject2;
    if (y.quickUserEnabled)
    {
      localObject1 = localObject2;
      if (y.registMode == RegistMode.QUICK_USER) {
        localObject1 = ((String)localObject2).replace("regtype=2", "regtype=1");
      }
    }
    if (paramList != null)
    {
      localObject2 = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        NameValuePair localNameValuePair = (NameValuePair)paramList.next();
        if ((!TextUtils.isEmpty(localNameValuePair.getName())) && (!TextUtils.isEmpty(localNameValuePair.getValue()))) {
          try
          {
            ((List)localObject2).add(new BasicNameValuePair(URLEncoder.encode(localNameValuePair.getName(), "UTF-8"), URLEncoder.encode(localNameValuePair.getValue(), "UTF-8")));
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            L.e(localUnsupportedEncodingException);
          }
        }
      }
      if (((List)localObject2).isEmpty()) {}
    }
    for (paramList = (String)localObject1 + "&" + SapiUtils.createRequestParams((List)localObject2);; paramList = (List<NameValuePair>)localObject1)
    {
      loadUrl(paramList + "#reg");
      return;
    }
  }
  
  public void loadSinaSSOLogin()
  {
    N = new SsoHandler((Activity)getContext(), "2512457640", "http://www.baidu.com");
    N.authorize(new SapiWebView.10(this));
    if (c.a(getContext()).c()) {
      post(new SapiWebView.11(this));
    }
  }
  
  @Deprecated
  public void loadSmsLogin()
  {
    if (c())
    {
      d();
      return;
    }
    loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "#sms_login");
  }
  
  public void loadSocialLogin(SocialType paramSocialType)
  {
    loadSocialLogin(paramSocialType, false);
  }
  
  public void loadSocialLogin(SocialType paramSocialType, boolean paramBoolean)
  {
    if (paramSocialType == null) {
      throw new IllegalArgumentException("SocialType can't be null");
    }
    if (paramSocialType == SocialType.UNKNOWN) {
      throw new IllegalArgumentException("Unknown SocialType");
    }
    String str = SapiAccountManager.getInstance().getAccountService().a(paramSocialType);
    paramSocialType = str;
    if (paramBoolean) {
      paramSocialType = str + "&is_force_login=1";
    }
    loadUrl(paramSocialType);
    if (c.a(getContext()).c()) {
      post(new SapiWebView.13(this));
    }
  }
  
  public void loadUniteBind(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("Invalid params: bindToken can't be empty");
    }
    ArrayList localArrayList = new ArrayList();
    try
    {
      localArrayList.add(new BasicNameValuePair("token", URLEncoder.encode(paramString1, "UTF-8")));
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("u", paramString2));
      }
    }
    catch (UnsupportedEncodingException paramString1)
    {
      for (;;)
      {
        L.e(paramString1);
      }
    }
    paramString1 = SapiAccountManager.getInstance().getAccountService().g();
    loadUrl(paramString1 + "&" + SapiUtils.createRequestParams(localArrayList));
  }
  
  public void loadUniteVerify(String paramString1, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("Invalid Params: verifyToken can't be empty");
    }
    ArrayList localArrayList = new ArrayList();
    try
    {
      localArrayList.add(new BasicNameValuePair("token", URLEncoder.encode(paramString1, "UTF-8")));
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("u", paramString2));
      }
      if (paramString3 != null) {
        localArrayList.add(new BasicNameValuePair("adtext", URLEncoder.encode(paramString3, "UTF-8")));
      }
    }
    catch (UnsupportedEncodingException paramString1)
    {
      for (;;)
      {
        L.e(paramString1);
      }
    }
    paramString1 = SapiAccountManager.getInstance().getAccountService().f();
    loadUrl(paramString1 + "&" + SapiUtils.createRequestParams(localArrayList));
  }
  
  public void loadUrl(String paramString)
  {
    loadUrl(paramString, Collections.emptyList());
  }
  
  public void loadUrl(String paramString, List<NameValuePair> paramList)
  {
    a(getContext(), paramList);
    paramList = b(SapiCache.a(getContext(), paramString));
    if (!TextUtils.isEmpty(paramList))
    {
      loadDataWithBaseURL(paramString, paramList, "text/html", "UTF-8", paramString);
      return;
    }
    c(paramString);
  }
  
  public void loadWeixinSSOLogin()
  {
    if (!WXAPIFactory.createWXAPI(getContext(), y.wxAppID).isWXAppInstalled())
    {
      if (I != null) {
        I.handleNotInstall();
      }
      return;
    }
    String str = SapiAccountManager.getInstance().getAccountService().k();
    new AsyncHttpClient().get(getContext(), str, new SapiWebView.12(this));
  }
  
  public void onAuthorizedResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (N != null) {
      N.authorizeCallBack(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (ac != null) {
        ac.onBack();
      }
      back();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (R != null)
    {
      AbsoluteLayout.LayoutParams localLayoutParams = (AbsoluteLayout.LayoutParams)R.getLayoutParams();
      x = paramInt1;
      y = paramInt2;
      R.setLayoutParams(localLayoutParams);
    }
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setAuthWidgetCallback(SapiWebView.AuthWidgetCallback paramAuthWidgetCallback)
  {
    K = paramAuthWidgetCallback;
  }
  
  public void setAuthorizationListener(AuthorizationListener paramAuthorizationListener)
  {
    z = paramAuthorizationListener;
  }
  
  public void setChangePwdCallback(SapiWebView.ChangePwdCallback paramChangePwdCallback)
  {
    J = paramChangePwdCallback;
  }
  
  public void setDeviceLoginHandler(Handler paramHandler)
  {
    C = paramHandler;
  }
  
  public void setFastRegHandler(SapiWebView.FastRegHandler paramFastRegHandler)
  {
    D = paramFastRegHandler;
  }
  
  public void setLcLoginHandler(SapiWebView.LCLoginHandler paramLCLoginHandler)
  {
    G = paramLCLoginHandler;
  }
  
  public void setNmLoginHandler(SapiWebView.NMLoginHandler paramNMLoginHandler)
  {
    F = paramNMLoginHandler;
  }
  
  public final void setNoNetworkView(View paramView)
  {
    if (O == null)
    {
      O = paramView;
      O.setVisibility(4);
      addView(O, new ViewGroup.LayoutParams(-1, -1));
    }
  }
  
  public void setOnBackCallback(SapiWebView.OnBackCallback paramOnBackCallback)
  {
    ac = paramOnBackCallback;
  }
  
  public void setOnFinishCallback(SapiWebView.OnFinishCallback paramOnFinishCallback)
  {
    ab = paramOnFinishCallback;
  }
  
  public void setProgressBar(ProgressBar paramProgressBar)
  {
    if (R != null) {}
    do
    {
      return;
      R = paramProgressBar;
    } while (R == null);
    addView(paramProgressBar);
  }
  
  public void setQrAppLoginHandler(Handler paramHandler)
  {
    B = paramHandler;
  }
  
  public void setSmsAutoCompleteHint(String paramString)
  {
    Q = paramString;
  }
  
  public void setSocialLoginHandler(Handler paramHandler)
  {
    A = paramHandler;
  }
  
  public void setTimeoutMillis(long paramLong)
  {
    T = paramLong;
  }
  
  public final void setTimeoutView(View paramView)
  {
    if (P == null)
    {
      P = paramView;
      P.setVisibility(4);
      addView(P, new ViewGroup.LayoutParams(-1, -1));
    }
  }
  
  public void setUniteBindCallback(SapiWebView.UniteBindCallback paramUniteBindCallback)
  {
    M = paramUniteBindCallback;
  }
  
  public void setUniteVerifyCallback(SapiWebView.UniteVerifyCallback paramUniteVerifyCallback)
  {
    L = paramUniteVerifyCallback;
  }
  
  public void setUniteVerifyHandler(SapiWebView.UniteVerifyHandler paramUniteVerifyHandler)
  {
    H = paramUniteVerifyHandler;
  }
  
  public void setVoiceLoginHandler(SapiWebView.VoiceLoginHandler paramVoiceLoginHandler)
  {
    E = paramVoiceLoginHandler;
  }
  
  public void setWeixinHandler(SapiWebView.WeixinHandler paramWeixinHandler)
  {
    I = paramWeixinHandler;
  }
  
  public void weixinSSOLogin(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      throw new IllegalArgumentException();
    }
    paramString1 = SapiAccountManager.getInstance().getAccountService().a(paramString1, paramString2);
    ArrayList localArrayList = new ArrayList(1);
    paramString2 = "mkey=" + paramString2 + ";domain=." + y.environment.getURL().replace("http://", "").replaceAll("(:[0-9]{1,4})?", "") + ";path=/";
    localArrayList.add(new BasicNameValuePair(y.environment.getURL(), paramString2));
    loadUrl(paramString1, localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */