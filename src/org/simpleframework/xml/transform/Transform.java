package org.simpleframework.xml.transform;

public abstract interface Transform<T>
{
  public abstract T read(String paramString);
  
  public abstract String write(T paramT);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.Transform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */