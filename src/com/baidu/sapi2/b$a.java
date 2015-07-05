package com.baidu.sapi2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b$a
{
  private static final String a = ".BD_SAPI_CACHE";
  private boolean b = true;
  private List<b.a.a> c = new ArrayList();
  
  static a a(JSONObject paramJSONObject)
  {
    locala = new a();
    if (paramJSONObject != null) {
      try
      {
        b = paramJSONObject.optBoolean("enabled", true);
        paramJSONObject = paramJSONObject.optJSONArray("modules");
        int i = 0;
        while (i < paramJSONObject.length())
        {
          JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
          locala.b().add(b.a.a.a(localJSONObject));
          i += 1;
        }
        return locala;
      }
      catch (JSONException paramJSONObject) {}
    }
  }
  
  public boolean a()
  {
    return b;
  }
  
  public List<b.a.a> b()
  {
    return c;
  }
  
  JSONObject c()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("enabled", b);
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = b().iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((b.a.a)localIterator.next()).a());
      }
      localJSONObject.put("modules", localJSONArray);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */