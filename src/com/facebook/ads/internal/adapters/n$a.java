package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.util.o;
import com.facebook.ads.internal.util.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class n$a
{
  Map<String, List<String>> a = new HashMap();
  
  n$a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return;
    }
    int i = 0;
    label22:
    Object localObject;
    String str;
    if (i < paramJSONArray.length())
    {
      localObject = paramJSONArray.optJSONObject(i);
      str = ((JSONObject)localObject).optString("type");
      if (!s.a(str)) {
        break label61;
      }
    }
    for (;;)
    {
      i += 1;
      break label22;
      break;
      label61:
      localObject = ((JSONObject)localObject).optJSONArray("urls");
      if (localObject != null)
      {
        ArrayList localArrayList = new ArrayList(((JSONArray)localObject).length());
        int j = 0;
        while (j < ((JSONArray)localObject).length())
        {
          localArrayList.add(((JSONArray)localObject).optString(j));
          j += 1;
        }
        a.put(str, localArrayList);
      }
    }
  }
  
  void a(String paramString)
  {
    paramString = (List)a.get(paramString);
    if ((paramString == null) || (paramString.isEmpty())) {}
    for (;;)
    {
      return;
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        String str = (String)paramString.next();
        new o().execute(new String[] { str });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.n.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */