package org.simpleframework.xml.transform;

class BooleanTransform
  implements Transform<Boolean>
{
  public Boolean read(String paramString)
  {
    return Boolean.valueOf(paramString);
  }
  
  public String write(Boolean paramBoolean)
  {
    return paramBoolean.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.BooleanTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */