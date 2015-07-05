package org.simpleframework.xml.transform;

class FloatTransform
  implements Transform<Float>
{
  public Float read(String paramString)
  {
    return Float.valueOf(paramString);
  }
  
  public String write(Float paramFloat)
  {
    return paramFloat.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.FloatTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */