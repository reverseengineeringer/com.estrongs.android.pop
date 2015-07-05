package org.simpleframework.xml.transform;

class ByteTransform
  implements Transform<Byte>
{
  public Byte read(String paramString)
  {
    return Byte.valueOf(paramString);
  }
  
  public String write(Byte paramByte)
  {
    return paramByte.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.ByteTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */