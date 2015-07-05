package org.simpleframework.xml.transform;

import java.lang.reflect.Array;

class ArrayTransform
  implements Transform
{
  private final Transform delegate;
  private final Class entry;
  private final StringArrayTransform split = new StringArrayTransform();
  
  public ArrayTransform(Transform paramTransform, Class paramClass)
  {
    delegate = paramTransform;
    entry = paramClass;
  }
  
  private Object read(String[] paramArrayOfString, int paramInt)
  {
    Object localObject1 = Array.newInstance(entry, paramInt);
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return localObject1;
      }
      Object localObject2 = delegate.read(paramArrayOfString[i]);
      if (localObject2 != null) {
        Array.set(localObject1, i, localObject2);
      }
      i += 1;
    }
  }
  
  private String write(Object paramObject, int paramInt)
  {
    String[] arrayOfString = new String[paramInt];
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return split.write(arrayOfString);
      }
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        arrayOfString[i] = delegate.write(localObject);
      }
      i += 1;
    }
  }
  
  public Object read(String paramString)
  {
    paramString = split.read(paramString);
    return read(paramString, paramString.length);
  }
  
  public String write(Object paramObject)
  {
    return write(paramObject, Array.getLength(paramObject));
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.ArrayTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */