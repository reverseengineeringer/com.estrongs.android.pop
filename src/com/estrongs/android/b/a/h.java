package com.estrongs.android.b.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

class h
{
  HashMap<String, i> a = new HashMap();
  
  public void a()
  {
    Iterator localIterator1 = a.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Object localObject1 = (i)((Map.Entry)localIterator1.next()).getValue();
      if (d != null)
      {
        Iterator localIterator2 = d.entrySet().iterator();
        while (localIterator2.hasNext())
        {
          localObject1 = (a)((Map.Entry)localIterator2.next()).getValue();
          if ((localObject1 instanceof p))
          {
            localObject1 = ((p)localObject1).s();
            if (localObject1 != null)
            {
              Object localObject2 = ((JSONObject)localObject1).optString("icon");
              String str = ((JSONObject)localObject1).optString("image");
              localObject1 = localObject2;
              if (localObject2 != null) {
                localObject1 = ((String)localObject2).trim();
              }
              localObject2 = str;
              if (str != null) {
                localObject2 = str.trim();
              }
              if ((localObject1 != null) && (((String)localObject1).length() > 0)) {
                c.a((String)localObject1);
              }
              if ((localObject2 != null) && (((String)localObject2).length() > 0)) {
                c.a((String)localObject2);
              }
            }
          }
        }
      }
    }
  }
  
  void a(i parami)
  {
    a.put(a, parami);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */