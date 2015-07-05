package org.simpleframework.xml.transform;

class IntegerTransform
  implements Transform<Integer>
{
  public Integer read(String paramString)
  {
    return Integer.valueOf(paramString);
  }
  
  public String write(Integer paramInteger)
  {
    return paramInteger.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.IntegerTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */