package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.OutputNode;

abstract interface Decorator
{
  public abstract void decorate(OutputNode paramOutputNode);
  
  public abstract void decorate(OutputNode paramOutputNode, Decorator paramDecorator);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Decorator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */