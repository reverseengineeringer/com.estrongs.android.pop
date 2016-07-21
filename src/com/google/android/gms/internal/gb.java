package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class gb
  implements fq
{
  final HashMap<String, pj<JSONObject>> a = new HashMap();
  
  public Future<JSONObject> a(String paramString)
  {
    pj localpj = new pj();
    a.put(paramString, localpj);
    return localpj;
  }
  
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    a((String)paramMap.get("request_id"), (String)paramMap.get("fetched_ad"));
  }
  
  public void a(String paramString1, String paramString2)
  {
    b.a("Received ad from the cache.");
    pj localpj = (pj)a.get(paramString1);
    if (localpj == null)
    {
      b.b("Could not find the ad request for the corresponding ad response.");
      return;
    }
    try
    {
      localpj.b(new JSONObject(paramString2));
      return;
    }
    catch (JSONException paramString2)
    {
      b.b("Failed constructing JSON object from value passed from javascript", paramString2);
      localpj.b(null);
      return;
    }
    finally
    {
      a.remove(paramString1);
    }
  }
  
  public void b(String paramString)
  {
    pj localpj = (pj)a.get(paramString);
    if (localpj == null)
    {
      b.b("Could not find the ad request for the corresponding ad response.");
      return;
    }
    if (!localpj.isDone()) {
      localpj.cancel(true);
    }
    a.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */