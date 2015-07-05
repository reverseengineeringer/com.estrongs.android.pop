package org.simpleframework.xml.convert;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

public abstract interface Converter<T>
{
  public abstract T read(InputNode paramInputNode);
  
  public abstract void write(OutputNode paramOutputNode, T paramT);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.Converter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */