package com.estrongs.bluetooth.parser;

import java.text.SimpleDateFormat;
import java.util.Date;

public class OBEXElement
{
  private static final OBEXDateFormatter a = new OBEXDateFormatter();
  private static final SimpleDateFormat m = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
  private String b = "";
  private String c;
  private OBEXElement.OBEXElementType d = OBEXElement.OBEXElementType.FOLDER;
  private long e = 0L;
  private Date f;
  private String g = "";
  private String h = "";
  private String i = "";
  private String j = "RWD";
  private String k = "";
  private final String[][] l = { { "<", ">", "&", "'", "\"" }, { "&lt;", "&gt;", "&amp;", "&apos;", "&quot;" } };
  
  private String d(String paramString)
  {
    Object localObject1 = paramString;
    if (paramString == null) {
      localObject1 = "";
    }
    localObject1 = ((String)localObject1).toUpperCase();
    paramString = (String)localObject1;
    if (((String)localObject1).length() > 3) {
      paramString = ((String)localObject1).substring(0, 3);
    }
    localObject1 = "";
    int n = 0;
    while (n < paramString.length())
    {
      char c1 = paramString.charAt(n);
      Object localObject2;
      if ((c1 != 'R') && (c1 != 'W'))
      {
        localObject2 = localObject1;
        if (c1 != 'D') {}
      }
      else
      {
        localObject2 = localObject1;
        if (((String)localObject1).indexOf(c1) == -1) {
          localObject2 = (String)localObject1 + c1;
        }
      }
      n += 1;
      localObject1 = localObject2;
    }
    return (String)localObject1;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(long paramLong)
  {
    long l1 = paramLong;
    if (paramLong < 0L) {
      l1 = 0L;
    }
    e = l1;
  }
  
  public void a(OBEXElement.OBEXElementType paramOBEXElementType)
  {
    OBEXElement.OBEXElementType localOBEXElementType = paramOBEXElementType;
    if (paramOBEXElementType == null) {
      localOBEXElementType = OBEXElement.OBEXElementType.FOLDER;
    }
    d = localOBEXElementType;
  }
  
  public void a(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    b = str;
    c = str;
    int i1 = l[0].length;
    int n = 0;
    while (n < i1)
    {
      c = c.replace(l[0][n], l[1][n]);
      n += 1;
    }
  }
  
  public String b()
  {
    return c;
  }
  
  public void b(long paramLong)
  {
    try
    {
      f = new Date(paramLong);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void b(String paramString)
  {
    try
    {
      f = null;
      f = a.parse(paramString);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public long c()
  {
    return e;
  }
  
  public void c(String paramString)
  {
    j = d(paramString);
  }
  
  public OBEXElement.OBEXElementType d()
  {
    return d;
  }
  
  public boolean e()
  {
    return d == OBEXElement.OBEXElementType.FOLDER;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
      } while (getClass() != paramObject.getClass());
      paramObject = (OBEXElement)paramObject;
    } while ((a() != ((OBEXElement)paramObject).a()) && ((a() == null) || (!a().equals(((OBEXElement)paramObject).a()))));
    return true;
  }
  
  public Date f()
  {
    return f;
  }
  
  public String g()
  {
    return m.format(f);
  }
  
  public String h()
  {
    return j;
  }
  
  public int hashCode()
  {
    if (b != null) {}
    for (int n = b.hashCode();; n = 0) {
      return n + 469;
    }
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer().append(a());
    if (d() == OBEXElement.OBEXElementType.FOLDER) {}
    for (Object localObject = "";; localObject = new StringBuffer().append(" (").append(c()).append(")")) {
      return (CharSequence)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.parser.OBEXElement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */