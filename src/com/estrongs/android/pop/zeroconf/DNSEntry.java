package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.util.HashMap;
import java.util.Map;

public abstract class DNSEntry
{
  final Map<DNSEntry.Fields, String> a;
  private final String b;
  private final String c;
  private final String d;
  private final DNSRecordType e;
  private final DNSRecordClass f;
  private final boolean g;
  
  DNSEntry(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    c = paramString;
    e = paramDNSRecordType;
    f = paramDNSRecordClass;
    g = paramBoolean;
    a = a(a());
    paramDNSRecordClass = (String)a.get(DNSEntry.Fields.Domain);
    String str = (String)a.get(DNSEntry.Fields.Protocol);
    paramString = (String)a.get(DNSEntry.Fields.Application);
    paramDNSRecordType = ((String)a.get(DNSEntry.Fields.Instance)).toLowerCase();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString.length() > 0)
    {
      paramString = "_" + paramString + ".";
      localStringBuilder = localStringBuilder.append(paramString);
      if (str.length() <= 0) {
        break label273;
      }
      paramString = "_" + str + ".";
      label187:
      d = (paramString + paramDNSRecordClass + ".");
      paramDNSRecordClass = new StringBuilder();
      if (paramDNSRecordType.length() <= 0) {
        break label279;
      }
    }
    label273:
    label279:
    for (paramString = paramDNSRecordType + ".";; paramString = "")
    {
      b = (paramString + d).toLowerCase();
      return;
      paramString = "";
      break;
      paramString = "";
      break label187;
    }
  }
  
  public static Map<DNSEntry.Fields, String> a(String paramString)
  {
    Object localObject2 = paramString.toLowerCase();
    String str1 = "";
    String str2 = "";
    int i;
    Object localObject1;
    if ((((String)localObject2).contains("in-addr.arpa")) || (((String)localObject2).contains("ip6.arpa"))) {
      if (((String)localObject2).contains("in-addr.arpa"))
      {
        i = ((String)localObject2).indexOf("in-addr.arpa");
        localObject2 = b(paramString.substring(0, i));
        str2 = paramString.substring(i);
        localObject1 = "";
      }
    }
    Object localObject3;
    for (paramString = "";; paramString = "")
    {
      localObject3 = new HashMap(5);
      ((Map)localObject3).put(DNSEntry.Fields.Domain, b(str2));
      ((Map)localObject3).put(DNSEntry.Fields.Protocol, str1);
      ((Map)localObject3).put(DNSEntry.Fields.Application, b((String)localObject1));
      ((Map)localObject3).put(DNSEntry.Fields.Instance, localObject2);
      ((Map)localObject3).put(DNSEntry.Fields.Subtype, paramString);
      return (Map<DNSEntry.Fields, String>)localObject3;
      i = ((String)localObject2).indexOf("ip6.arpa");
      break;
      if ((((String)localObject2).contains("_")) || (!((String)localObject2).contains("."))) {
        break label230;
      }
      i = ((String)localObject2).indexOf('.');
      localObject2 = b(paramString.substring(0, i));
      str2 = b(paramString.substring(i));
      localObject1 = "";
    }
    label230:
    if (((String)localObject2).startsWith("_"))
    {
      localObject1 = str2;
      if (!((String)localObject2).startsWith("_services")) {}
    }
    else
    {
      i = ((String)localObject2).indexOf('.');
      localObject1 = str2;
      if (i > 0)
      {
        str2 = paramString.substring(0, i);
        localObject1 = str2;
        if (i + 1 < ((String)localObject2).length())
        {
          localObject3 = ((String)localObject2).substring(i + 1);
          paramString = paramString.substring(i + 1);
          localObject1 = str2;
        }
      }
    }
    for (;;)
    {
      i = ((String)localObject3).lastIndexOf("._");
      if (i > 0)
      {
        i += 2;
        str1 = paramString.substring(i, ((String)localObject3).indexOf('.', i));
      }
      int j;
      if (str1.length() > 0)
      {
        j = ((String)localObject3).indexOf("_" + str1.toLowerCase() + ".");
        int k = str1.length();
        int m = ((String)localObject3).length();
        if (((String)localObject3).endsWith("."))
        {
          i = 1;
          label413:
          str2 = paramString.substring(k + j + 2, m - i);
        }
      }
      for (paramString = paramString.substring(0, j - 1);; paramString = (String)localObject2)
      {
        i = paramString.toLowerCase().indexOf("._sub");
        if (i > 0)
        {
          localObject2 = b(paramString.substring(0, i));
          localObject3 = paramString.substring(i + 5);
          paramString = (String)localObject2;
          localObject2 = localObject1;
          localObject1 = localObject3;
          break;
          i = 0;
          break label413;
        }
        localObject3 = paramString;
        paramString = "";
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        str2 = "";
      }
      localObject3 = localObject2;
    }
  }
  
  private static String b(String paramString)
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
  
  public String a()
  {
    if (c != null) {
      return c;
    }
    return "";
  }
  
  public String b()
  {
    if (b != null) {
      return b;
    }
    return "";
  }
  
  public DNSRecordType c()
  {
    if (e != null) {
      return e;
    }
    return DNSRecordType.TYPE_IGNORE;
  }
  
  public DNSRecordClass d()
  {
    if (f != null) {
      return f;
    }
    return DNSRecordClass.CLASS_UNKNOWN;
  }
  
  public boolean e()
  {
    return g;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof DNSEntry))
    {
      paramObject = (DNSEntry)paramObject;
      bool1 = bool2;
      if (b().equals(((DNSEntry)paramObject).b()))
      {
        bool1 = bool2;
        if (c().equals(((DNSEntry)paramObject).c()))
        {
          bool1 = bool2;
          if (d() == ((DNSEntry)paramObject).d()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.DNSEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */