package org.simpleframework.xml.transform;

class StringTransform
  implements Transform<String>
{
  public String read(String paramString)
  {
    return paramString;
  }
  
  public String write(String paramString)
  {
    return paramString;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.StringTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */