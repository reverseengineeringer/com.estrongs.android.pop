package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import org.json.JSONException;
import org.json.JSONObject;

class SapiWebView$SapiWebViewShell$8
  implements Runnable
{
  SapiWebView$SapiWebViewShell$8(SapiWebView.SapiWebViewShell paramSapiWebViewShell, String paramString) {}
  
  public void run()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(a);
      String str1 = localJSONObject.optString("info");
      String str2 = localJSONObject.optString("u");
      SapiAccount localSapiAccount = new SapiAccount();
      uid = localJSONObject.optString("passuid");
      username = localJSONObject.optString("username");
      displayname = localJSONObject.optString("displayname");
      bduss = localJSONObject.optString("bduss");
      ptoken = localJSONObject.optString("ptoken");
      stoken = localJSONObject.optString("stoken");
      if ((!TextUtils.isEmpty(str1)) && (SapiUtils.isValidAccount(localSapiAccount)))
      {
        if (SapiWebView.o(b.a) != null) {
          SapiWebView.o(b.a).onSuccess(str1, str2, localSapiAccount);
        }
        if (SapiWebView.p(b.a) != null) {
          SapiWebView.p(b.a).onSuccess(str1, str2, localSapiAccount);
        }
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      L.e(localJSONException);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SapiWebViewShell.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */