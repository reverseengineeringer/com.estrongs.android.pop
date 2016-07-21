package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ae;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@me
public final class hs
{
  public final String a;
  public final String b;
  public final List<String> c;
  public final String d;
  public final String e;
  public final List<String> f;
  public final List<String> g;
  public final String h;
  public final List<String> i;
  public final List<String> j;
  
  public hs(JSONObject paramJSONObject)
  {
    b = paramJSONObject.getString("id");
    Object localObject1 = paramJSONObject.getJSONArray("adapters");
    ArrayList localArrayList = new ArrayList(((JSONArray)localObject1).length());
    int k = 0;
    while (k < ((JSONArray)localObject1).length())
    {
      localArrayList.add(((JSONArray)localObject1).getString(k));
      k += 1;
    }
    c = Collections.unmodifiableList(localArrayList);
    d = paramJSONObject.optString("allocation_id", null);
    f = ae.q().a(paramJSONObject, "clickurl");
    g = ae.q().a(paramJSONObject, "imp_urls");
    i = ae.q().a(paramJSONObject, "video_start_urls");
    j = ae.q().a(paramJSONObject, "video_complete_urls");
    localObject1 = paramJSONObject.optJSONObject("ad");
    if (localObject1 != null)
    {
      localObject1 = ((JSONObject)localObject1).toString();
      a = ((String)localObject1);
      localObject1 = paramJSONObject.optJSONObject("data");
      if (localObject1 == null) {
        break label206;
      }
    }
    label206:
    for (paramJSONObject = ((JSONObject)localObject1).toString();; paramJSONObject = null)
    {
      h = paramJSONObject;
      paramJSONObject = (JSONObject)localObject2;
      if (localObject1 != null) {
        paramJSONObject = ((JSONObject)localObject1).optString("class_name");
      }
      e = paramJSONObject;
      return;
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */