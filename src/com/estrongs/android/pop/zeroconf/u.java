package com.estrongs.android.pop.zeroconf;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Map;

public class u
{
  private static final byte[] l = new byte[0];
  public String a = null;
  public String b = null;
  public String c = null;
  public int d = 0;
  public String e = null;
  public Inet4Address f = null;
  public Inet6Address g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  private byte[] m;
  private Map<String, byte[]> n;
  
  public u(String paramString1, int paramInt, String paramString2)
  {
    b(paramString1);
    k = paramString1;
    d = paramInt;
    e = paramString2;
    if ((paramString2 != null) && (paramString2.contains(".")))
    {
      paramInt = paramString2.indexOf('.');
      if (paramInt > 0) {
        a = paramString2.substring(0, paramInt);
      }
    }
  }
  
  private static String a(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    String str;
    do
    {
      return paramString;
      str = paramString.trim();
      paramString = str;
      if (str.startsWith(".")) {
        paramString = str.substring(1);
      }
      str = paramString;
      if (paramString.startsWith("_")) {
        str = paramString.substring(1);
      }
      paramString = str;
    } while (!str.endsWith("."));
    return str.substring(0, str.length() - 1);
  }
  
  private boolean a(u paramu)
  {
    if (paramu == null) {}
    while ((d != d) || (!e.equals(e))) {
      return false;
    }
    return true;
  }
  
  private void b(String paramString)
  {
    Object localObject2 = paramString.toLowerCase();
    String str1 = "";
    String str2 = "";
    int i1;
    if ((((String)localObject2).contains("in-addr.arpa")) || (((String)localObject2).contains("ip6.arpa"))) {
      if (((String)localObject2).contains("in-addr.arpa"))
      {
        i1 = ((String)localObject2).indexOf("in-addr.arpa");
        localObject2 = a(paramString.substring(0, i1));
        str2 = paramString.substring(i1);
      }
    }
    for (Object localObject1 = "";; localObject1 = "")
    {
      c = paramString;
      h = a(str2);
      i = str1;
      b = ((String)localObject2);
      j = ((String)localObject1);
      return;
      i1 = ((String)localObject2).indexOf("ip6.arpa");
      break;
      if ((((String)localObject2).contains("_")) || (!((String)localObject2).contains("."))) {
        break label174;
      }
      i1 = ((String)localObject2).indexOf('.');
      localObject2 = a(paramString.substring(0, i1));
      str2 = a(paramString.substring(i1));
    }
    label174:
    Object localObject3;
    if (((String)localObject2).startsWith("_"))
    {
      localObject1 = str2;
      if (!((String)localObject2).startsWith("_services")) {}
    }
    else
    {
      i1 = ((String)localObject2).indexOf('.');
      localObject1 = str2;
      if (i1 > 0)
      {
        str2 = paramString.substring(0, i1);
        localObject1 = str2;
        if (i1 + 1 < ((String)localObject2).length())
        {
          localObject3 = ((String)localObject2).substring(i1 + 1);
          paramString = paramString.substring(i1 + 1);
          localObject1 = str2;
        }
      }
    }
    for (;;)
    {
      i1 = ((String)localObject3).lastIndexOf("._");
      if (i1 > 0)
      {
        i1 += 2;
        str1 = paramString.substring(i1, ((String)localObject3).indexOf('.', i1));
      }
      if (str1.length() > 0)
      {
        int i2 = ((String)localObject3).indexOf("_" + str1.toLowerCase() + ".");
        int i3 = str1.length();
        int i4 = ((String)localObject3).length();
        if (((String)localObject3).endsWith("."))
        {
          i1 = 1;
          label358:
          str2 = paramString.substring(i3 + i2 + 2, i4 - i1);
          localObject2 = paramString.substring(0, i2 - 1);
        }
      }
      for (;;)
      {
        i1 = ((String)localObject2).toLowerCase().indexOf("._sub");
        if (i1 > 0)
        {
          localObject3 = a(((String)localObject2).substring(0, i1));
          ((String)localObject2).substring(i1 + 5);
          localObject2 = localObject1;
          localObject1 = localObject3;
          break;
          i1 = 0;
          break label358;
        }
        localObject3 = "";
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        str2 = "";
      }
      localObject3 = localObject2;
    }
  }
  
  private byte[] d()
  {
    if ((m != null) && (m.length > 0)) {
      return m;
    }
    return n.b;
  }
  
  private Map<String, byte[]> e()
  {
    Hashtable localHashtable;
    int i1;
    if ((n == null) && (d() != null))
    {
      localHashtable = new Hashtable();
      i1 = 0;
    }
    label237:
    for (;;)
    {
      try
      {
        if (i1 < d().length)
        {
          localObject1 = d();
          i2 = i1 + 1;
          i3 = localObject1[i1] & 0xFF;
          if ((i3 != 0) && (i2 + i3 <= d().length)) {
            continue;
          }
          localHashtable.clear();
        }
      }
      catch (Exception localException2)
      {
        Object localObject1;
        int i2;
        int i3;
        int i4;
        continue;
      }
      n = localHashtable;
      if (n != null)
      {
        return n;
        i1 = 0;
        if (i1 < i3)
        {
          i4 = d()[(i2 + i1)];
          if (i4 != 61)
          {
            i1 += 1;
            continue;
          }
        }
        try
        {
          localObject1 = new String(d(), i2, i1);
          if (localObject1 == null) {
            localHashtable.clear();
          }
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
          Object localObject2 = null;
          continue;
          if (i1 == i3)
          {
            localHashtable.put(localObject2, l);
            i1 = i2;
            break label237;
          }
          i1 += 1;
          byte[] arrayOfByte = new byte[i3 - i1];
          System.arraycopy(d(), i2 + i1, arrayOfByte, 0, i3 - i1);
          localHashtable.put(localObject2, arrayOfByte);
          i1 = i2 + i3;
          break label237;
        }
      }
      else
      {
        return Collections.emptyMap();
      }
    }
  }
  
  public void a(Inet4Address paramInet4Address)
  {
    f = paramInet4Address;
  }
  
  public void a(Inet6Address paramInet6Address)
  {
    g = paramInet6Address;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return;
    }
    m = paramArrayOfByte;
    e();
  }
  
  public boolean a()
  {
    return (f != null) || (g != null);
  }
  
  public Map<String, byte[]> b()
  {
    return n;
  }
  
  public String c()
  {
    if ((n == null) || (n.size() == 0) || (!n.containsKey("path"))) {
      return null;
    }
    try
    {
      String str = new String((byte[])n.get("path"));
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof u)) && (a((u)paramObject));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */