package com.estrongs.android.d;

import com.estrongs.android.util.bd;
import java.util.HashMap;

public class e
{
  private static HashMap<String, String> a = new HashMap();
  
  static
  {
    a.put("tsb-wadp", "net_wirelessadapter");
    a.put("wirelessssd", "net_wireless_ssd");
  }
  
  public static boolean a(String paramString)
  {
    if (bd.a(paramString)) {
      return false;
    }
    String str = paramString;
    if (paramString.startsWith("tsb-wadp")) {
      str = "tsb-wadp";
    }
    return a.containsKey(str.toLowerCase());
  }
  
  public static String b(String paramString)
  {
    if (bd.a(paramString)) {
      return null;
    }
    String str = paramString;
    if (paramString.startsWith("tsb-wadp")) {
      str = "tsb-wadp";
    }
    return (String)a.get(str.toLowerCase());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */