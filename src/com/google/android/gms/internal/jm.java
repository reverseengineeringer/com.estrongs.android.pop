package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class jm
{
  private final boolean a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  
  private jm(jo paramjo)
  {
    a = jo.a(paramjo);
    b = jo.b(paramjo);
    c = jo.c(paramjo);
    d = jo.d(paramjo);
    e = jo.e(paramjo);
  }
  
  public JSONObject a()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("sms", a).put("tel", b).put("calendar", c).put("storePicture", d).put("inlineVideo", e);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      b.b("Error occured while obtaining the MRAID capabilities.", localJSONException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */