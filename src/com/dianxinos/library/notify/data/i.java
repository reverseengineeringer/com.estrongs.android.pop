package com.dianxinos.library.notify.data;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class i
{
  public String a;
  public Map<String, String> b = new HashMap();
  public Map<String, String> c = new HashMap();
  private String d = null;
  private String e = null;
  private String f = null;
  private String g = null;
  
  public String a()
  {
    if (d != null) {
      return d;
    }
    String str = (String)b.get("bkg");
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    try
    {
      d = new JSONObject(str).optString("url");
      str = d;
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String b()
  {
    if (e != null) {
      return e;
    }
    String str = (String)b.get("bkg");
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    try
    {
      e = new JSONObject(str).optString("chksum");
      str = e;
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String c()
  {
    if (f != null) {
      return f;
    }
    String str2 = (String)b.get("file");
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str2 = (String)c.get("file");
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        return null;
      }
    }
    try
    {
      f = new JSONObject(str1).optString("url");
      str1 = f;
      return str1;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String d()
  {
    if (g != null) {
      return g;
    }
    String str = (String)b.get("file");
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    try
    {
      g = new JSONObject(str).optString("url", null);
      str = g;
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public boolean e()
  {
    boolean bool = true;
    if (("pandorajar".equals(a)) || ("pandoraapk".equals(a))) {}
    try
    {
      int i = new JSONObject((String)b.get("file")).optInt("location", 1);
      if (i == 1) {
        bool = true;
      }
      for (;;)
      {
        return bool;
        bool = false;
        continue;
        try
        {
          i = new JSONObject((String)b.get("file")).optInt("location", 0);
          if (i != 1) {
            return false;
          }
        }
        catch (Exception localException1)
        {
          return false;
        }
      }
      return true;
    }
    catch (Exception localException2) {}
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */