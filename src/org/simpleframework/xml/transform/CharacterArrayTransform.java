package org.simpleframework.xml.transform;

import java.lang.reflect.Array;

class CharacterArrayTransform
  implements Transform
{
  private final Class entry;
  
  public CharacterArrayTransform(Class paramClass)
  {
    entry = paramClass;
  }
  
  private Object read(char[] paramArrayOfChar, int paramInt)
  {
    Object localObject = Array.newInstance(entry, paramInt);
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return localObject;
      }
      Array.set(localObject, i, Character.valueOf(paramArrayOfChar[i]));
      i += 1;
    }
  }
  
  private String write(Object paramObject, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return localStringBuilder.toString();
      }
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        localStringBuilder.append(localObject);
      }
      i += 1;
    }
  }
  
  public Object read(String paramString)
  {
    paramString = paramString.toCharArray();
    int i = paramString.length;
    if (entry == Character.TYPE) {
      return paramString;
    }
    return read(paramString, i);
  }
  
  public String write(Object paramObject)
  {
    int i = Array.getLength(paramObject);
    if (entry == Character.TYPE) {
      return new String((char[])paramObject);
    }
    return write(paramObject, i);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.CharacterArrayTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */