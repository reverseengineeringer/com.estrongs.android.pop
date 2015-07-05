package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;

abstract interface Repeater
  extends Converter
{
  public abstract Object read(InputNode paramInputNode, Object paramObject);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Repeater
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */