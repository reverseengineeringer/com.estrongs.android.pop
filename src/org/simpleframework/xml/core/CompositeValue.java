package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeValue
  implements Converter
{
  private final Context context;
  private final Entry entry;
  private final Traverser root;
  private final Style style;
  private final Type type;
  
  public CompositeValue(Context paramContext, Entry paramEntry, Type paramType)
  {
    root = new Traverser(paramContext);
    style = paramContext.getStyle();
    context = paramContext;
    entry = paramEntry;
    type = paramType;
  }
  
  private boolean validate(InputNode paramInputNode, String paramString)
  {
    paramInputNode = paramInputNode.getNext(style.getElement(paramString));
    paramString = type.getType();
    if (paramInputNode == null) {}
    while (paramInputNode.isEmpty()) {
      return true;
    }
    return root.validate(paramInputNode, paramString);
  }
  
  public Object read(InputNode paramInputNode)
  {
    paramInputNode = paramInputNode.getNext();
    Class localClass = type.getType();
    if (paramInputNode == null) {}
    while (paramInputNode.isEmpty()) {
      return null;
    }
    return root.read(paramInputNode, localClass);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Class localClass = type.getType();
    if (paramObject != null) {
      throw new PersistenceException("Can not read value of %s for %s", new Object[] { localClass, entry });
    }
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    Class localClass = type.getType();
    String str2 = entry.getValue();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    return validate(paramInputNode, str1);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    Class localClass = type.getType();
    String str2 = entry.getValue();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    str1 = style.getElement(str1);
    root.write(paramOutputNode, paramObject, localClass, str1);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */