package com.baidu.mobstat;

import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class m
{
  public static String a(String paramString)
  {
    String[] arrayOfString;
    String str1;
    try
    {
      localJSONObject = new JSONObject(paramString);
      arrayOfString = new String[localJSONObject.length()];
      paramString = localJSONObject.keys();
      i = 0;
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        JSONObject localJSONObject;
        String str2;
        String str3 = localJSONObject.getString(str2);
        arrayOfString[i] = (str2 + ":" + str3);
        i += 1;
      }
      catch (JSONException localJSONException2)
      {
        for (;;)
        {
          localJSONException2.printStackTrace();
        }
      }
      localJSONException1 = localJSONException1;
      n.b("String to JSONObject error, return desc string!");
      localJSONException1.printStackTrace();
      str1 = paramString;
    }
    if (paramString.hasNext())
    {
      str2 = (String)paramString.next();
      return str1;
    }
    Arrays.sort(arrayOfString);
    paramString = arrayOfString[0];
    int i = 1;
    for (;;)
    {
      str1 = paramString;
      if (i >= arrayOfString.length) {
        break;
      }
      paramString = paramString + ", " + arrayOfString[i];
      i += 1;
    }
  }
  
  public static JSONObject a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject = paramJSONObject1.keys();
    while (((Iterator)localObject).hasNext())
    {
      String str1 = (String)((Iterator)localObject).next();
      try
      {
        String str3 = paramJSONObject1.getString(str1);
        try
        {
          localJSONObject.put(str1, str3);
        }
        catch (JSONException localJSONException3)
        {
          localJSONException3.printStackTrace();
        }
      }
      catch (JSONException localJSONException4)
      {
        localJSONException4.printStackTrace();
      }
    }
    paramJSONObject1 = paramJSONObject2.keys();
    while (paramJSONObject1.hasNext())
    {
      localObject = (String)paramJSONObject1.next();
      try
      {
        String str2 = paramJSONObject2.getString((String)localObject);
        try
        {
          localJSONObject.put((String)localObject, str2);
        }
        catch (JSONException localJSONException1)
        {
          localJSONException1.printStackTrace();
        }
      }
      catch (JSONException localJSONException2)
      {
        localJSONException2.printStackTrace();
      }
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */