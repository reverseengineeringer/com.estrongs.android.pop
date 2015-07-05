package org.simpleframework.xml.transform;

class EnumTransform
  implements Transform<Enum>
{
  private final Class type;
  
  public EnumTransform(Class paramClass)
  {
    type = paramClass;
  }
  
  public Enum read(String paramString)
  {
    return Enum.valueOf(type, paramString);
  }
  
  public String write(Enum paramEnum)
  {
    return paramEnum.name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.EnumTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */