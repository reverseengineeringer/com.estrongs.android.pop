package com.baidu.mobstat;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class by
{
  List<bz> a = new ArrayList();
  private long b = 0L;
  private long c = 0L;
  private int d = 0;
  
  public by()
  {
    a(System.currentTimeMillis());
  }
  
  public long a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public void a(String paramString, long paramLong1, long paramLong2)
  {
    paramString = new bz(paramString, paramLong1, paramLong2);
    a.add(paramString);
  }
  
  public void b()
  {
    b = 0L;
    c = 0L;
    d = 0;
    a.clear();
    a(System.currentTimeMillis());
  }
  
  public void b(long paramLong)
  {
    c = paramLong;
  }
  
  public JSONObject c()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      localJSONObject1.put("s", b);
      localJSONObject1.put("e", c);
      localJSONObject1.put("i", System.currentTimeMillis());
      localJSONObject1.put("c", d);
      JSONArray localJSONArray = new JSONArray();
      int i = 0;
      while (i < a.size())
      {
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("n", ((bz)a.get(i)).a());
        localJSONObject2.put("d", ((bz)a.get(i)).b());
        long l2 = ((bz)a.get(i)).c() - b;
        long l1 = l2;
        if (l2 < 0L) {
          l1 = 0L;
        }
        localJSONObject2.put("ps", l1);
        localJSONArray.put(localJSONObject2);
        i += 1;
      }
      localJSONObject1.put("p", localJSONArray);
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      cr.a("StatSession.constructJSONObject() failed");
    }
    return localJSONObject1;
  }
  
  public int d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */