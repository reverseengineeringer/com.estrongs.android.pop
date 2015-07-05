package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class Variable$Adapter
  implements Repeater
{
  private final Converter reader;
  private final Object value;
  
  public Variable$Adapter(Variable paramVariable, Converter paramConverter, Object paramObject)
  {
    reader = paramConverter;
    value = paramObject;
  }
  
  public Object read(InputNode paramInputNode)
  {
    return read(paramInputNode, value);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Position localPosition = paramInputNode.getPosition();
    String str = paramInputNode.getName();
    if ((reader instanceof Repeater)) {
      return ((Repeater)reader).read(paramInputNode, paramObject);
    }
    throw new PersistenceException("Element '%s' declared twice at %s", new Object[] { str, localPosition });
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    Position localPosition = paramInputNode.getPosition();
    String str = paramInputNode.getName();
    if ((reader instanceof Repeater)) {
      return ((Repeater)reader).validate(paramInputNode);
    }
    throw new PersistenceException("Element '%s' declared twice at %s", new Object[] { str, localPosition });
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    write(paramOutputNode, paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Variable.Adapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */