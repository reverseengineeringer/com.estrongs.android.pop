package org.simpleframework.xml.transform;

class LongTransform
  implements Transform<Long>
{
  public Long read(String paramString)
  {
    return Long.valueOf(paramString);
  }
  
  public String write(Long paramLong)
  {
    return paramLong.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.LongTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */