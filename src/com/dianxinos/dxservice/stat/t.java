package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.dianxinos.dxservice.a.b;
import com.dianxinos.dxservice.a.c;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class t
{
  private final int a;
  private final int b;
  private final int c;
  private final String d;
  private final Object e;
  private final String f;
  private int g;
  private final Date h;
  private final String i = "rp";
  private final String j = "dt";
  private final String k = "dp";
  private final String l = "tag";
  private final String m = "ov";
  private final String n = "ev";
  private final String o = "p";
  private final String p = "t";
  private final String q = "ot";
  private int r;
  
  public t(int paramInt1, int paramInt2, int paramInt3, String paramString1, int paramInt4, Object paramObject, String paramString2)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramString1;
    g = paramInt4;
    e = paramObject;
    f = paramString2;
    paramString1 = Calendar.getInstance();
    paramInt1 = paramString1.getTimeZone().getOffset(paramString1.getTimeInMillis());
    paramString1.add(14, aa.a.getOffset(paramString1.getTimeInMillis()) - paramInt1);
    h = paramString1.getTime();
    r = 0;
  }
  
  public t(Bundle paramBundle)
  {
    a = paramBundle.getInt("rp");
    b = paramBundle.getInt("dt");
    c = paramBundle.getInt("dp");
    d = paramBundle.getString("tag");
    f = paramBundle.getString("ev");
    g = paramBundle.getInt("p");
    h = new Date(paramBundle.getLong("t"));
    e = a(paramBundle.getString("ov"), paramBundle.getInt("ot"));
    r = 0;
  }
  
  public t(am paramam, Object paramObject)
  {
    this(paramam.a(), paramam.b(), paramam.c(), paramam.d(), paramam.e(), paramObject, null);
  }
  
  private Object a(String paramString, int paramInt)
  {
    String str = paramString;
    switch (paramInt)
    {
    default: 
      str = null;
    case 8: 
      return str;
    case 10: 
      return paramString.getBytes();
    case 9: 
      try
      {
        paramString = new JSONObject(paramString);
        return paramString;
      }
      catch (JSONException paramString)
      {
        if (c.e) {
          Log.e("stat.Event", "Failed to getOriginalValue!", paramString);
        }
        return null;
      }
    case 0: 
      return Byte.valueOf(Byte.parseByte(paramString));
    case 1: 
      return Short.valueOf(Short.parseShort(paramString));
    case 2: 
      return Integer.valueOf(Integer.parseInt(paramString));
    case 3: 
      return Long.valueOf(Long.parseLong(paramString));
    case 4: 
      return Float.valueOf(Float.parseFloat(paramString));
    case 5: 
      return Double.valueOf(Double.parseDouble(paramString));
    case 6: 
      return new BigInteger(paramString);
    }
    return new BigDecimal(paramString);
  }
  
  public static String a(Context paramContext, String paramString)
  {
    String str = paramContext.getPackageName();
    return a(str, b.a(paramContext, str), paramString);
  }
  
  public static String a(String paramString1, int paramInt, String paramString2)
  {
    return a(paramString1, String.valueOf(paramInt), paramString2);
  }
  
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pkg", paramString1);
      localJSONObject.put("ver", paramString2);
      localJSONObject.put("key", paramString3);
      return localJSONObject.toString();
    }
    catch (JSONException paramString1)
    {
      for (;;) {}
    }
  }
  
  private String k()
  {
    if ((e instanceof byte[])) {
      return Arrays.toString((byte[])e);
    }
    if ((e instanceof JSONObject)) {
      return ((JSONObject)e).toString();
    }
    return String.valueOf(e);
  }
  
  public Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("rp", a);
    localBundle.putInt("dt", b);
    localBundle.putInt("dp", c);
    localBundle.putString("tag", d);
    localBundle.putInt("ot", o.a(c, e));
    localBundle.putString("ov", k());
    localBundle.putString("ev", f);
    localBundle.putInt("p", g);
    localBundle.putLong("t", h.getTime());
    return localBundle;
  }
  
  public void a(int paramInt)
  {
    r = paramInt;
  }
  
  public int b()
  {
    return a;
  }
  
  public void b(int paramInt)
  {
    g = paramInt;
  }
  
  public int c()
  {
    return b;
  }
  
  public int d()
  {
    return c;
  }
  
  public String e()
  {
    return d;
  }
  
  public int f()
  {
    return g;
  }
  
  public Object g()
  {
    return e;
  }
  
  public String h()
  {
    return f;
  }
  
  public Date i()
  {
    return h;
  }
  
  public int j()
  {
    return r;
  }
  
  public String toString()
  {
    return "[" + a + ":" + b + ":" + c + ":" + d + ":" + h + ":" + f + ":" + e + "]";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */