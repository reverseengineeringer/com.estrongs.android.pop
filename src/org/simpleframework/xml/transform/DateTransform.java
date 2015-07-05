package org.simpleframework.xml.transform;

import java.util.Date;

class DateTransform<T extends Date>
  implements Transform<T>
{
  private final DateFactory<T> factory;
  
  public DateTransform(Class<T> paramClass)
  {
    factory = new DateFactory(paramClass);
  }
  
  public T read(String paramString)
  {
    try
    {
      long l = DateType.getDate(paramString).getTime();
      paramString = factory.getInstance(new Object[] { Long.valueOf(l) });
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public String write(T paramT)
  {
    try
    {
      paramT = DateType.getText(paramT);
      return paramT;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.DateTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */