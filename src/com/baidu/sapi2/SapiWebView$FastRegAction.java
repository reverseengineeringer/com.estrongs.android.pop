package com.baidu.sapi2;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.utils.SapiUtils;
import java.util.UUID;

class SapiWebView$FastRegAction
{
  private static final int b = 0;
  private static final int c = 1;
  private String d;
  private boolean e = true;
  private boolean f = false;
  private Handler g;
  private Runnable h;
  private Handler i;
  private int j = 0;
  private Handler k;
  private Runnable l;
  
  public SapiWebView$FastRegAction(SapiWebView paramSapiWebView)
  {
    g = new SapiWebView.FastRegAction.1(this, paramSapiWebView);
    h = new SapiWebView.FastRegAction.2(this, paramSapiWebView);
    i = new SapiWebView.FastRegAction.3(this, paramSapiWebView);
    k = new Handler();
    l = new SapiWebView.FastRegAction.4(this, paramSapiWebView);
  }
  
  private String a()
  {
    return UUID.randomUUID().toString() + "-" + System.currentTimeMillis() + "," + "点击发送直接注册";
  }
  
  private void a(String paramString)
  {
    a.loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&username=" + paramString + "#fastRegVerify");
  }
  
  private void a(String paramString1, String paramString2)
  {
    SapiAccountManager.getInstance().getAccountService().a(new SapiWebView.FastRegAction.9(this), paramString1, paramString2);
  }
  
  private void b()
  {
    if (e) {
      d = a();
    }
    if (!SapiUtils.isSimReady(a.getContext()))
    {
      e();
      return;
    }
    if (!SapiUtils.hasActiveNetwork(a.getContext()))
    {
      e();
      return;
    }
    if (la).fastRegConfirm)
    {
      AlertDialog localAlertDialog = new AlertDialog.Builder(a.getContext()).setTitle("提示").setMessage("发送一条短信，即可完成注册。").setPositiveButton("确定", new SapiWebView.FastRegAction.6(this)).setNegativeButton("取消", new SapiWebView.FastRegAction.5(this)).create();
      if (!TextUtils.isEmpty(la).fastRegConfirmMsg)) {
        localAlertDialog.setMessage(la).fastRegConfirmMsg);
      }
      localAlertDialog.setCancelable(false);
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.show();
      return;
    }
    if (SapiUtils.sendSms(a.getContext(), d, SapiUtils.getFastRegChannel(a.getContext())))
    {
      g.postDelayed(h, 15000L);
      e = false;
      d();
      return;
    }
    e();
  }
  
  private void c()
  {
    g.removeCallbacks(h);
    e = true;
  }
  
  private void d()
  {
    if (f)
    {
      c();
      return;
    }
    if (e)
    {
      g.removeCallbacks(h);
      e();
      return;
    }
    SapiAccountManager.getInstance().getAccountService().a(new SapiWebView.FastRegAction.7(this), d);
  }
  
  private void e()
  {
    String str = f();
    if (!TextUtils.isEmpty(str))
    {
      j = 1;
      SapiAccountManager.getInstance().getAccountService().getDynamicPwd(new SapiWebView.FastRegAction.8(this), str);
      return;
    }
    a.loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&regLink=0" + "#sms_login");
  }
  
  private String f()
  {
    String str = ((TelephonyManager)a.getContext().getSystemService("phone")).getLine1Number();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return str.replace("+86", "");
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */