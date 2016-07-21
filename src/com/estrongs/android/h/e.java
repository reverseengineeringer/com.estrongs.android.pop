package com.estrongs.android.h;

import com.estrongs.android.util.bk;
import java.util.HashMap;

public class e
{
  private static HashMap<String, String> a = new HashMap();
  
  static
  {
    a.put("tsb-wadp", "net_wirelessadapter");
    a.put("wirelessssd", "net_wireless_ssd");
    a.put("tsb-whdd", "net_wireless_aerocast");
  }
  
  public static boolean a(String paramString)
  {
    if (bk.a(paramString)) {
      return false;
    }
    String str = paramString;
    if (paramString.startsWith("tsb-wadp")) {
      str = "tsb-wadp";
    }
    paramString = str;
    if (str.startsWith("tsb-whdd")) {
      paramString = "tsb-whdd";
    }
    return a.containsKey(paramString.toLowerCase());
  }
  
  public static String b(String paramString)
  {
    if (bk.a(paramString)) {
      return null;
    }
    String str = paramString;
    if (paramString.startsWith("tsb-wadp")) {
      str = "tsb-wadp";
    }
    paramString = str;
    if (str.startsWith("tsb-whdd")) {
      paramString = "tsb-whdd";
    }
    return (String)a.get(paramString.toLowerCase());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */