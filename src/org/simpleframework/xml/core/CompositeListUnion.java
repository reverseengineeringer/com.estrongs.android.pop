package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeListUnion
  implements Repeater
{
  private final Context context;
  private final LabelMap elements;
  private final Group group;
  private final Expression path;
  private final Style style;
  private final Type type;
  
  public CompositeListUnion(Context paramContext, Group paramGroup, Expression paramExpression, Type paramType)
  {
    elements = paramGroup.getElements(paramContext);
    style = paramContext.getStyle();
    context = paramContext;
    group = paramGroup;
    type = paramType;
    path = paramExpression;
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Label paramLabel)
  {
    Converter localConverter = paramLabel.getConverter(context);
    paramObject = Collections.singleton(paramObject);
    if (!paramLabel.isInline())
    {
      paramLabel = paramLabel.getName();
      paramLabel = style.getElement(paramLabel);
      if (!paramOutputNode.isCommitted()) {
        paramOutputNode.setName(paramLabel);
      }
    }
    localConverter.write(paramOutputNode, paramObject);
  }
  
  private void write(OutputNode paramOutputNode, Collection paramCollection)
  {
    paramCollection = paramCollection.iterator();
    for (;;)
    {
      if (!paramCollection.hasNext()) {
        return;
      }
      Object localObject = paramCollection.next();
      if (localObject != null)
      {
        Class localClass = localObject.getClass();
        Label localLabel = group.getLabel(localClass);
        if (localLabel == null) {
          throw new UnionException("Entry of %s not declared in %s with annotation %s", new Object[] { localClass, type, group });
        }
        write(paramOutputNode, localObject, localLabel);
      }
    }
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
    paramObject = (Collection)paramObject;
    if (group.isInline())
    {
      if (!((Collection)paramObject).isEmpty()) {
        write(paramOutputNode, (Collection)paramObject);
      }
      while (paramOutputNode.isCommitted()) {
        return;
      }
      paramOutputNode.remove();
      return;
    }
    write(paramOutputNode, (Collection)paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeListUnion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */