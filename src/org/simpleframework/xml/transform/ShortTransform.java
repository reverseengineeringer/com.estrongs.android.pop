package org.simpleframework.xml.transform;

class ShortTransform
  implements Transform<Short>
{
  public Short read(String paramString)
  {
    return Short.valueOf(paramString);
  }
  
  public String write(Short paramShort)
  {
    return paramShort.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.ShortTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */