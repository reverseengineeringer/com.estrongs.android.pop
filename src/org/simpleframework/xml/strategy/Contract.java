package org.simpleframework.xml.strategy;

class Contract
{
  private String label;
  private String length;
  private String mark;
  private String refer;
  
  public Contract(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    length = paramString4;
    label = paramString3;
    refer = paramString2;
    mark = paramString1;
  }
  
  public String getIdentity()
  {
    return mark;
  }
  
  public String getLabel()
  {
    return label;
  }
  
  public String getLength()
  {
    return length;
  }
  
  public String getReference()
  {
    return refer;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Contract
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */