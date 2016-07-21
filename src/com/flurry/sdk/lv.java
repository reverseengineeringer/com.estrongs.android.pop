package com.flurry.sdk;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class lv
{
  public static List<JSONObject> a(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      Object localObject = paramJSONArray.get(i);
      if (!(localObject instanceof JSONObject)) {
        throw new JSONException("Array contains unsupported objects. JSONArray param must contain JSON object.");
      }
      localArrayList.add((JSONObject)localObject);
      i += 1;
    }
    return localArrayList;
  }
  
  public static Map<String, String> a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      Object localObject1 = localIterator.next();
      if (!(localObject1 instanceof String)) {
        throw new JSONException("JSONObject contains unsupported type for key in the map.");
      }
      localObject1 = (String)localObject1;
      Object localObject2 = paramJSONObject.get((String)localObject1);
      if (!(localObject2 instanceof String)) {
        throw new JSONException("JSONObject contains unsupported type for value in the map.");
      }
      localHashMap.put(localObject1, (String)localObject2);
    }
    return localHashMap;
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, float paramFloat)
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.putOpt(paramString, Float.valueOf(paramFloat));
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, int paramInt)
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.put(paramString, paramInt);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, long paramLong)
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.put(paramString, paramLong);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, Object paramObject)
  {
    if (paramJSONObject == null) {
      throw new NullPointerException("Null Json object");
    }
    if (paramObject == null)
    {
      paramJSONObject.put(paramString, JSONObject.NULL);
      return;
    }
    paramJSONObject.put(paramString, paramObject);
  }
  
  public static void a(JSONObject paramJSONObject, String paramString1, String paramString2)
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
  
  public static void a(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    paramJSONObject.put(paramString, paramBoolean);
  }
  
  public static List<String> b(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      Object localObject = paramJSONArray.get(i);
      if (!(localObject instanceof String)) {
        throw new JSONException("Array contains unsupported objects. JSONArray param must contain String object.");
      }
      localArrayList.add((String)localObject);
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */