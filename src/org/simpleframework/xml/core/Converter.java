package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

abstract interface Converter
{
  public abstract Object read(InputNode paramInputNode);
  
  public abstract Object read(InputNode paramInputNode, Object paramObject);
  
  public abstract boolean validate(InputNode paramInputNode);
  
  public abstract void write(OutputNode paramOutputNode, Object paramObject);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Converter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */