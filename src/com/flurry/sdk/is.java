package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class is
  implements lb<hs>
{
  private static final String a = is.class.getSimpleName();
  
  private void a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    if (paramString2 != null)
    {
      paramJSONObject.put(paramString1, paramString2);
      return;
    }
    paramJSONObject.put(paramString1, JSONObject.NULL);
  }
  
  public hs a(InputStream paramInputStream)
  {
    throw new IOException("Deserialize not supported for request");
  }
  
  public void a(OutputStream paramOutputStream, hs paramhs)
  {
    if ((paramOutputStream == null) || (paramhs == null)) {
      return;
    }
    is.1 local1 = new is.1(this, paramOutputStream);
    JSONObject localJSONObject1 = new JSONObject();
    for (;;)
    {
      Object localObject;
      try
      {
        a(localJSONObject1, "project_key", a);
        a(localJSONObject1, "bundle_id", b);
        a(localJSONObject1, "app_version", c);
        localJSONObject1.put("sdk_version", d);
        localJSONObject1.put("platform", e);
        a(localJSONObject1, "platform_version", f);
        localJSONObject1.put("limit_ad_tracking", g);
        if ((h == null) || (h.a == null)) {
          break label645;
        }
        paramOutputStream = new JSONObject();
        localObject = new JSONObject();
        a((JSONObject)localObject, "model", h.a.a);
        a((JSONObject)localObject, "brand", h.a.b);
        a((JSONObject)localObject, "id", h.a.c);
        a((JSONObject)localObject, "device", h.a.d);
        a((JSONObject)localObject, "product", h.a.e);
        a((JSONObject)localObject, "version_release", h.a.f);
        paramOutputStream.put("com.flurry.proton.generated.avro.v2.AndroidTags", localObject);
        if (paramOutputStream != null)
        {
          localJSONObject1.put("device_tags", paramOutputStream);
          paramOutputStream = new JSONArray();
          localObject = i.iterator();
          if (!((Iterator)localObject).hasNext()) {
            break label395;
          }
          hu localhu = (hu)((Iterator)localObject).next();
          JSONObject localJSONObject2 = new JSONObject();
          localJSONObject2.put("type", a);
          a(localJSONObject2, "id", b);
          paramOutputStream.put(localJSONObject2);
          continue;
        }
        localJSONObject1.put("device_tags", JSONObject.NULL);
      }
      catch (JSONException paramOutputStream)
      {
        throw new IOException("Invalid Json", paramOutputStream);
      }
      finally
      {
        local1.close();
      }
      continue;
      label395:
      localJSONObject1.put("device_ids", paramOutputStream);
      if ((j != null) && (j.a != null))
      {
        paramOutputStream = new JSONObject();
        localObject = new JSONObject();
        ((JSONObject)localObject).putOpt("latitude", Double.valueOf(j.a.a));
        ((JSONObject)localObject).putOpt("longitude", Double.valueOf(j.a.b));
        ((JSONObject)localObject).putOpt("accuracy", Float.valueOf(j.a.c));
        paramOutputStream.put("com.flurry.proton.generated.avro.v2.Geolocation", localObject);
      }
      for (;;)
      {
        if (paramOutputStream != null)
        {
          localJSONObject1.put("geo", paramOutputStream);
          paramOutputStream = new JSONObject();
          if (k == null) {
            break label626;
          }
          a(paramOutputStream, "string", k.a);
          localJSONObject1.put("publisher_user_id", paramOutputStream);
        }
        for (;;)
        {
          kg.a(5, a, "Proton Request String: " + localJSONObject1.toString());
          local1.write(localJSONObject1.toString().getBytes());
          local1.flush();
          local1.close();
          return;
          localJSONObject1.put("geo", JSONObject.NULL);
          break;
          label626:
          localJSONObject1.put("publisher_user_id", JSONObject.NULL);
        }
        paramOutputStream = null;
      }
      label645:
      paramOutputStream = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.is
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */