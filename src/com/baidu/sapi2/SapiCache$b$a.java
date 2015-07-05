package com.baidu.sapi2;

import com.baidu.cloudsdk.common.http.JsonHttpResponseHandler;
import org.json.JSONObject;

class SapiCache$b$a
  extends JsonHttpResponseHandler
{
  SapiCache$b$a(SapiCache.b paramb, b.a.a parama1, b.a.a parama2, b paramb1) {}
  
  public void onSuccess(JSONObject paramJSONObject)
  {
    a.c = b.a.a.a.a(paramJSONObject);
    if (SapiCache.a(a, b))
    {
      SapiCache.a(a, new SapiCache.b.a.a(this));
      return;
    }
    c.a(SapiCache.f()).a(c);
    SapiCache.a(a, new SapiCache.b.a.b(this));
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiCache.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */