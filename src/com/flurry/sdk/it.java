package com.flurry.sdk;

import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class it
  implements lb<ht>
{
  private static final String a = it.class.getSimpleName();
  
  private iq a(String paramString)
  {
    iq localiq = iq.a;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (iq)Enum.valueOf(iq.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localiq;
    }
    return localiq;
  }
  
  private void a(hq paramhq, JSONArray paramJSONArray)
  {
    if (paramJSONArray != null)
    {
      Object localObject1 = null;
      int i = 0;
      if (i < paramJSONArray.length())
      {
        Object localObject4 = paramJSONArray.optJSONObject(i);
        Object localObject3 = localObject1;
        if (localObject4 != null)
        {
          if (!((JSONObject)localObject4).has("string")) {
            break label105;
          }
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = new ArrayList();
          }
          localObject1 = new hw();
          a = ((JSONObject)localObject4).optString("string", "");
          ((List)localObject3).add(localObject1);
        }
        label105:
        Object localObject2;
        do
        {
          do
          {
            i += 1;
            localObject1 = localObject3;
            break;
            localObject3 = localObject1;
          } while (!((JSONObject)localObject4).has("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"));
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          localObject1 = ((JSONObject)localObject4).optJSONObject("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger");
          localObject3 = localObject2;
        } while (localObject1 == null);
        localObject3 = new hx();
        a = ((JSONObject)localObject1).optString("event_name", "");
        c = ((JSONObject)localObject1).optString("event_parameter_name", "");
        localObject4 = ((JSONObject)localObject1).optJSONArray("event_parameter_values");
        if (localObject4 != null)
        {
          localObject1 = new String[((JSONArray)localObject4).length()];
          int j = 0;
          while (j < ((JSONArray)localObject4).length())
          {
            localObject1[j] = ((JSONArray)localObject4).optString(j, "");
            j += 1;
          }
        }
        for (;;)
        {
          d = ((String[])localObject1);
          ((List)localObject2).add(localObject3);
          localObject3 = localObject2;
          break;
          localObject1 = new String[0];
        }
      }
      c = ((List)localObject1);
    }
  }
  
  private void a(hr paramhr, JSONArray paramJSONArray)
  {
    if (paramJSONArray != null)
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while (i < paramJSONArray.length())
      {
        JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
        if (localJSONObject != null)
        {
          hq localhq = new hq();
          b = localJSONObject.optString("partner", "");
          a(localhq, localJSONObject.optJSONArray("events"));
          d = a(localJSONObject.optString("method"));
          e = localJSONObject.optString("uri_template", "");
          Object localObject = localJSONObject.optJSONObject("body_template");
          if (localObject != null)
          {
            localObject = ((JSONObject)localObject).optString("string", "null");
            if (!((String)localObject).equals("null")) {
              f = ((String)localObject);
            }
          }
          g = localJSONObject.optInt("max_redirects", 5);
          h = localJSONObject.optInt("connect_timeout", 20);
          i = localJSONObject.optInt("request_timeout", 20);
          a = localJSONObject.optLong("callback_id", -1L);
          localJSONObject = localJSONObject.optJSONObject("headers");
          if (localJSONObject != null)
          {
            localJSONObject = localJSONObject.optJSONObject("map");
            if (localJSONObject != null) {
              j = lv.a(localJSONObject);
            }
          }
          localArrayList.add(localhq);
        }
        i += 1;
      }
      a = localArrayList;
    }
  }
  
  private void a(ht paramht, JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optJSONObject("global_settings");
    d = new ia();
    if (paramJSONObject != null) {
      d.a = b(paramJSONObject.optString("log_level"));
    }
  }
  
  private ib b(String paramString)
  {
    ib localib = ib.f;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (ib)Enum.valueOf(ib.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localib;
    }
    return localib;
  }
  
  private void b(ht paramht, JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optJSONObject("pulse");
    hr localhr = new hr();
    if (paramJSONObject != null)
    {
      a(localhr, paramJSONObject.optJSONArray("callbacks"));
      b = paramJSONObject.optInt("max_callback_retries", 3);
      c = paramJSONObject.optInt("max_callback_attempts_per_report", 15);
      d = paramJSONObject.optInt("max_report_delay_seconds", 600);
      e = paramJSONObject.optString("agent_report_url", "");
    }
    e = localhr;
  }
  
  private void c(ht paramht, JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optJSONObject("analytics");
    f = new id();
    if (paramJSONObject != null)
    {
      f.b = paramJSONObject.optBoolean("analytics_enabled", true);
      f.a = paramJSONObject.optInt("max_session_properties", 10);
    }
  }
  
  public ht a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject = new String(lt.a(paramInputStream));
    kg.a(5, a, "Proton response string: " + (String)localObject);
    paramInputStream = new ht();
    try
    {
      localObject = new JSONObject((String)localObject);
      a = ((JSONObject)localObject).optLong("issued_at", -1L);
      b = ((JSONObject)localObject).optLong("refresh_ttl", 3600L);
      c = ((JSONObject)localObject).optLong("expiration_ttl", 86400L);
      a(paramInputStream, (JSONObject)localObject);
      b(paramInputStream, (JSONObject)localObject);
      c(paramInputStream, (JSONObject)localObject);
      return paramInputStream;
    }
    catch (JSONException paramInputStream)
    {
      throw new IOException("Exception while deserialize: ", paramInputStream);
    }
  }
  
  public void a(OutputStream paramOutputStream, ht paramht)
  {
    throw new IOException("Serialize not supported for response");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.it
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */