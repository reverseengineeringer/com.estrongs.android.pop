package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class CompositeUnion
  implements Repeater
{
  private final Context context;
  private final LabelMap elements;
  private final Group group;
  private final Expression path;
  private final Type type;
  
  public CompositeUnion(Context paramContext, Group paramGroup, Expression paramExpression, Type paramType)
  {
    elements = paramGroup.getElements(paramContext);
    context = paramContext;
    group = paramGroup;
    type = paramType;
    path = paramExpression;
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Label paramLabel)
  {
    paramLabel.getConverter(context).write(paramOutputNode, paramObject);
  }
  
  public Object read(InputNode paramInputNode)
  {
    String str = paramInputNode.getName();
    str = path.getElement(str);
    return ((Label)elements.get(str)).getConverter(context).read(paramInputNode);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    String str = paramInputNode.getName();
    str = path.getElement(str);
    return ((Label)elements.get(str)).getConverter(context).read(paramInputNode, paramObject);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    String str = paramInputNode.getName();
    str = path.getElement(str);
    return ((Label)elements.get(str)).getConverter(context).validate(paramInputNode);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    Class localClass = paramObject.getClass();
    Label localLabel = group.getLabel(localClass);
    if (localLabel == null) {
      throw new UnionException("Value of %s not declared in %s with annotation %s", new Object[] { localClass, type, group });
    }
    write(paramOutputNode, paramObject, localLabel);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeUnion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */