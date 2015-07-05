package com.baidu.sapi2;

import com.baidu.sapi2.utils.L;
import org.json.JSONException;
import org.json.JSONObject;

class SapiWebView$SapiWebViewShell$14
  implements Runnable
{
  SapiWebView$SapiWebViewShell$14(SapiWebView.SapiWebViewShell paramSapiWebViewShell, String paramString) {}
  
  public void run()
  {
    try
    {
      Object localObject = new JSONObject(a);
      String str = ((JSONObject)localObject).optString("token");
      localObject = ((JSONObject)localObject).optString("adtext");
      SapiWebView.w(b.a).handleUniteVerify(str, (String)localObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      L.e(localJSONException);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SapiWebViewShell.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */