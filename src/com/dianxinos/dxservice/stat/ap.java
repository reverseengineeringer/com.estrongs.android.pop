package com.dianxinos.dxservice.stat;

class ap
{
  private Integer b = Integer.valueOf(0);
  private Long c = Long.valueOf(0L);
  private String d = "";
  
  public ap(ao paramao) {}
  
  public String a()
  {
    return d;
  }
  
  public void a(Integer paramInteger)
  {
    if (paramInteger != null) {
      b = paramInteger;
    }
  }
  
  public void a(Long paramLong)
  {
    if (paramLong != null) {
      c = paramLong;
    }
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public boolean a(ap paramap)
  {
    return c.equals(c);
  }
  
  public int b()
  {
    return b.intValue();
  }
  
  public Long c()
  {
    return c;
  }
  
  public boolean d()
  {
    return (b.intValue() == 0) && (c.longValue() == 0L);
  }
  
  public String toString()
  {
    return String.format("[firstInstallTime:%d versionCode:%d]", new Object[] { c, b });
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */