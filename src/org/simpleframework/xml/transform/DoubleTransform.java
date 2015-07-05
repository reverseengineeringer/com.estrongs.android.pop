package org.simpleframework.xml.transform;

class DoubleTransform
  implements Transform<Double>
{
  public Double read(String paramString)
  {
    return Double.valueOf(paramString);
  }
  
  public String write(Double paramDouble)
  {
    return paramDouble.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.DoubleTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */