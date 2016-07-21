package com.estrongs.android.b.a;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.i;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;

public class p
  extends a
{
  HashMap<String, Integer> r;
  private JSONObject s;
  
  public p(String paramString)
  {
    super(paramString, null);
  }
  
  public static p a(JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        localObject = paramJSONObject.getString("type");
        String str = paramJSONObject.optString("key");
        p localp = new p((String)localObject);
        if (str != null)
        {
          localObject = str;
          if (str.length() != 0)
          {
            b = ((String)localObject);
            s = paramJSONObject;
            return localp;
          }
        }
      }
      catch (Exception paramJSONObject)
      {
        return null;
      }
      Object localObject = null;
    }
  }
  
  public String a(String paramString1, String paramString2)
  {
    Object localObject1;
    if (r != null)
    {
      localObject1 = (Integer)r.get(paramString1);
      if (localObject1 != null)
      {
        localObject1 = FexApplication.a().getString(((Integer)localObject1).intValue());
        if (localObject1 == null) {}
      }
    }
    Object localObject2;
    do
    {
      do
      {
        return (String)localObject1;
        localObject1 = paramString2;
      } while (s == null);
      localObject2 = s.opt(paramString1);
      localObject1 = paramString2;
    } while (localObject2 == null);
    if ((localObject2 instanceof String)) {
      paramString1 = (String)localObject2;
    }
    for (;;)
    {
      paramString1 = paramString1.trim();
      localObject1 = paramString2;
      if (paramString1 == null) {
        break;
      }
      localObject1 = paramString2;
      if (paramString1.length() == 0) {
        break;
      }
      return paramString1;
      if ((localObject2 instanceof JSONObject))
      {
        if (i.a == null) {}
        for (paramString1 = Locale.getDefault().getLanguage();; paramString1 = i.a)
        {
          localObject1 = ((JSONObject)localObject2).optString(paramString1);
          if (((localObject1 != null) && (((String)localObject1).length() != 0)) || ("en".equals(paramString1))) {
            break label174;
          }
          paramString1 = ((JSONObject)localObject2).optString("en");
          break;
        }
        label174:
        paramString1 = (String)localObject1;
      }
      else
      {
        paramString1 = null;
      }
    }
  }
  
  public String e(String paramString)
  {
    return a(paramString, null);
  }
  
  public String l()
  {
    return a;
  }
  
  public String m()
  {
    return b;
  }
  
  public JSONObject s()
  {
    return s;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */