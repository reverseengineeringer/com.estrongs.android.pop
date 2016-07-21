package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class dn
  implements lb<df>
{
  private static final String a = dn.class.getSimpleName();
  
  private JSONArray a(List<ck> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ck localck = (ck)paramList.next();
      JSONObject localJSONObject = new JSONObject();
      lv.a(localJSONObject, "id", b);
      lv.a(localJSONObject, "type", a);
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }
  
  private JSONObject a(Map<String, String> paramMap)
  {
    return new JSONObject(paramMap);
  }
  
  private JSONArray b(List<de> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      de localde = (de)paramList.next();
      JSONObject localJSONObject = new JSONObject();
      lv.a(localJSONObject, "adLogGUID", b);
      lv.a(localJSONObject, "sessionId", a);
      lv.a(localJSONObject, "sdkAdEvents", c(c));
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }
  
  private JSONArray c(List<dd> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      dd localdd = (dd)paramList.next();
      JSONObject localJSONObject = new JSONObject();
      lv.a(localJSONObject, "type", a);
      lv.a(localJSONObject, "timeOffset", c);
      lv.a(localJSONObject, "params", a(b));
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }
  
  public df a(InputStream paramInputStream)
  {
    throw new IOException(a + " Deserialize not supported for log request");
  }
  
  public void a(OutputStream paramOutputStream, df paramdf)
  {
    if ((paramOutputStream == null) || (paramdf == null)) {
      return;
    }
    paramOutputStream = new dn.1(this, paramOutputStream);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      lv.a(localJSONObject, "apiKey", a);
      lv.a(localJSONObject, "testDevice", f);
      lv.a(localJSONObject, "agentVersion", e);
      lv.a(localJSONObject, "agentTimestamp", d);
      lv.a(localJSONObject, "adReportedIds", a(b));
      lv.a(localJSONObject, "sdkAdLogs", b(c));
      paramOutputStream.write(localJSONObject.toString().getBytes());
      paramOutputStream.flush();
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new IOException(a + " Invalid SdkLogRequest: " + paramdf, localJSONException);
    }
    finally
    {
      paramOutputStream.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */