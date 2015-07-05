package org.simpleframework.xml.core;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeMapUnion
  implements Repeater
{
  private final Context context;
  private final LabelMap elements;
  private final Group group;
  private final Expression path;
  private final Style style;
  private final Type type;
  
  public CompositeMapUnion(Context paramContext, Group paramGroup, Expression paramExpression, Type paramType)
  {
    elements = paramGroup.getElements(paramContext);
    style = paramContext.getStyle();
    context = paramContext;
    group = paramGroup;
    type = paramType;
    path = paramExpression;
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject1, Object paramObject2, Label paramLabel)
  {
    Converter localConverter = paramLabel.getConverter(context);
    paramObject1 = Collections.singletonMap(paramObject1, paramObject2);
    if (!paramLabel.isInline())
    {
      paramObject2 = paramLabel.getName();
      paramObject2 = style.getElement((String)paramObject2);
      if (!paramOutputNode.isCommitted()) {
        paramOutputNode.setName((String)paramObject2);
      }
    }
    localConverter.write(paramOutputNode, paramObject1);
  }
  
  private void write(OutputNode paramOutputNode, Map paramMap)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Object localObject1 = localIterator.next();
      Object localObject2 = paramMap.get(localObject1);
      if (localObject2 != null)
      {
        Class localClass = localObject2.getClass();
        Label localLabel = group.getLabel(localClass);
        if (localLabel == null) {
          throw new UnionException("Value of %s not declared in %s with annotation %s", new Object[] { localClass, type, group });
        }
        write(paramOutputNode, localObject1, localObject2, localLabel);
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
    paramObject = (Map)paramObject;
    if (group.isInline())
    {
      if (!((Map)paramObject).isEmpty()) {
        write(paramOutputNode, (Map)paramObject);
      }
      while (paramOutputNode.isCommitted()) {
        return;
      }
      paramOutputNode.remove();
      return;
    }
    write(paramOutputNode, (Map)paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeMapUnion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */