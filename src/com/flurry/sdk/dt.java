package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class dt
  implements lb<cl>
{
  private static final String a = dt.class.getSimpleName();
  
  private JSONArray a(List<dh> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      dh localdh = (dh)paramList.next();
      JSONObject localJSONObject = new JSONObject();
      lv.a(localJSONObject, "adId", a);
      lv.a(localJSONObject, "lastEvent", b);
      lv.a(localJSONObject, "renderedTime", c);
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }
  
  private JSONObject a(cp paramcp)
  {
    JSONObject localJSONObject = new JSONObject();
    if (paramcp != null)
    {
      lv.a(localJSONObject, "viewWidth", a);
      lv.a(localJSONObject, "viewHeight", b);
      lv.a(localJSONObject, "screenHeight", d);
      lv.a(localJSONObject, "screenWidth", c);
      lv.a(localJSONObject, "density", e);
      lv.a(localJSONObject, "screenOrientation", f);
      return localJSONObject;
    }
    return (JSONObject)JSONObject.NULL;
  }
  
  private JSONObject a(cx paramcx)
  {
    JSONObject localJSONObject = new JSONObject();
    if (paramcx != null)
    {
      lv.a(localJSONObject, "lat", a);
      lv.a(localJSONObject, "lon", b);
      return localJSONObject;
    }
    lv.a(localJSONObject, "lat", 0.0F);
    lv.a(localJSONObject, "lon", 0.0F);
    return localJSONObject;
  }
  
  private JSONObject a(cy paramcy)
  {
    if (paramcy == null) {
      return (JSONObject)JSONObject.NULL;
    }
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      lv.a(localJSONObject, "requestedStyles", new JSONArray(a));
    }
    while (b != null)
    {
      lv.a(localJSONObject, "requestedAssets", new JSONArray(b));
      return localJSONObject;
      lv.a(localJSONObject, "requestedStyles", new JSONArray(Collections.emptyList()));
    }
    lv.a(localJSONObject, "requestedAssets", JSONObject.NULL);
    return localJSONObject;
  }
  
  private JSONObject a(di paramdi)
  {
    JSONObject localJSONObject = new JSONObject();
    if (paramdi != null)
    {
      lv.a(localJSONObject, "ageRange", a);
      lv.a(localJSONObject, "gender", b);
      lv.a(localJSONObject, "personas", new JSONArray(c));
      return localJSONObject;
    }
    lv.a(localJSONObject, "ageRange", -2);
    lv.a(localJSONObject, "gender", -2);
    lv.a(localJSONObject, "personas", Collections.emptyList());
    return localJSONObject;
  }
  
  private JSONObject a(Map<String, String> paramMap)
  {
    return new JSONObject(paramMap);
  }
  
  private JSONArray b(List<cu> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      cu localcu = (cu)paramList.next();
      JSONObject localJSONObject = new JSONObject();
      lv.a(localJSONObject, "capType", a);
      lv.a(localJSONObject, "id", b);
      lv.a(localJSONObject, "serveTime", c);
      lv.a(localJSONObject, "expirationTime", d);
      lv.a(localJSONObject, "lastViewedTime", e);
      lv.a(localJSONObject, "streamCapDurationMillis", f);
      lv.a(localJSONObject, "views", g);
      lv.a(localJSONObject, "capRemaining", h);
      lv.a(localJSONObject, "totalCap", i);
      lv.a(localJSONObject, "capDurationType", j);
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }
  
  private JSONArray c(List<ck> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ck localck = (ck)paramList.next();
      JSONObject localJSONObject = new JSONObject();
      lv.a(localJSONObject, "type", a);
      lv.a(localJSONObject, "id", b);
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }
  
  public cl a(InputStream paramInputStream)
  {
    throw new IOException("Deserialize not supported for request");
  }
  
  public void a(OutputStream paramOutputStream, cl paramcl)
  {
    if ((paramOutputStream == null) || (paramcl == null)) {
      return;
    }
    paramOutputStream = new dt.1(this, paramOutputStream);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("requestTime", a);
      lv.a(localJSONObject, "apiKey", b);
      lv.a(localJSONObject, "agentVersion", c);
      lv.a(localJSONObject, "adViewType", d.toString());
      lv.a(localJSONObject, "adSpaceName", e);
      lv.a(localJSONObject, "sessionId", f);
      lv.a(localJSONObject, "adReportedIds", c(g));
      lv.a(localJSONObject, "location", a(h));
      lv.a(localJSONObject, "testDevice", i);
      lv.a(localJSONObject, "bindings", new JSONArray(j));
      lv.a(localJSONObject, "adViewContainer", a(k));
      lv.a(localJSONObject, "locale", l);
      lv.a(localJSONObject, "timezone", m);
      lv.a(localJSONObject, "osVersion", n);
      lv.a(localJSONObject, "devicePlatform", o);
      lv.a(localJSONObject, "keywords", a(p));
      lv.a(localJSONObject, "canDoSKAppStore", q);
      lv.a(localJSONObject, "networkStatus", r);
      lv.a(localJSONObject, "frequencyCapRequestInfoList", b(s));
      lv.a(localJSONObject, "streamInfoList", a(t));
      lv.a(localJSONObject, "adTrackingEnabled", u);
      lv.a(localJSONObject, "preferredLanguage", v);
      lv.a(localJSONObject, "bcat", new JSONArray(w));
      lv.a(localJSONObject, "userAgent", x);
      lv.a(localJSONObject, "targetingOverride", a(y));
      lv.a(localJSONObject, "sendConfiguration", z);
      lv.a(localJSONObject, "origins", new JSONArray(A));
      lv.a(localJSONObject, "renderTime", B);
      lv.a(localJSONObject, "clientSideRtbPayload", new JSONObject(C));
      lv.a(localJSONObject, "nativeAdConfiguration", a(D));
      lv.a(localJSONObject, "bCookie", E);
      lv.a(localJSONObject, "appBundleId", F);
      kg.a(5, a, "Ad Request String: " + localJSONObject.toString());
      paramOutputStream.write(localJSONObject.toString().getBytes());
      paramOutputStream.flush();
      return;
    }
    catch (JSONException paramcl)
    {
      throw new IOException("Invalid Json", paramcl);
    }
    finally
    {
      paramOutputStream.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */