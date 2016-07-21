package com.flurry.sdk;

public class eg
{
  private final String a;
  private final String b;
  
  public eg(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean c()
  {
    return ("".equals(a)) && ("".equals(b));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (eg)paramObject;
    } while ((a.equals(a)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode() * 31 + b.hashCode();
  }
  
  public String toString()
  {
    return String.format("Token[%s , %s]", new Object[] { a, b });
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */