package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;

@me
public class mc
  implements ly<f>
{
  private final boolean a;
  
  public mc(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private <K, V> sz<K, V> a(sz<K, Future<V>> paramsz)
  {
    sz localsz = new sz();
    int i = 0;
    while (i < paramsz.size())
    {
      localsz.put(paramsz.b(i), ((Future)paramsz.c(i)).get());
      i += 1;
    }
    return localsz;
  }
  
  private void a(ls paramls, JSONObject paramJSONObject, sz<String, Future<c>> paramsz)
  {
    paramsz.put(paramJSONObject.getString("name"), paramls.a(paramJSONObject, "image_value", a));
  }
  
  private void a(JSONObject paramJSONObject, sz<String, String> paramsz)
  {
    paramsz.put(paramJSONObject.getString("name"), paramJSONObject.getString("string_value"));
  }
  
  public f b(ls paramls, JSONObject paramJSONObject)
  {
    sz localsz1 = new sz();
    sz localsz2 = new sz();
    po localpo = paramls.b(paramJSONObject);
    JSONArray localJSONArray = paramJSONObject.getJSONArray("custom_assets");
    int i = 0;
    if (i < localJSONArray.length())
    {
      JSONObject localJSONObject = localJSONArray.getJSONObject(i);
      String str = localJSONObject.getString("type");
      if ("string".equals(str)) {
        a(localJSONObject, localsz2);
      }
      for (;;)
      {
        i += 1;
        break;
        if ("image".equals(str)) {
          a(paramls, localJSONObject, localsz1);
        } else {
          b.e("Unknown custom asset type: " + str);
        }
      }
    }
    return new f(paramJSONObject.getString("custom_template_id"), a(localsz1), localsz2, (a)localpo.get());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */