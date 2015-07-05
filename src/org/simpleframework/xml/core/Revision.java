package org.simpleframework.xml.core;

class Revision
{
  private boolean equal = true;
  
  public boolean compare(Object paramObject1, Object paramObject2)
  {
    if (paramObject2 != null) {
      equal = paramObject2.equals(paramObject1);
    }
    for (;;)
    {
      return equal;
      if (paramObject1 != null) {
        equal = paramObject1.equals(Double.valueOf(1.0D));
      }
    }
  }
  
  public double getDefault()
  {
    return 1.0D;
  }
  
  public boolean isEqual()
  {
    return equal;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Revision
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */