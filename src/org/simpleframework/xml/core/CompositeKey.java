package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;
import org.simpleframework.xml.stream.Style;

class CompositeKey
  implements Converter
{
  private final Context context;
  private final Entry entry;
  private final Traverser root;
  private final Style style;
  private final Type type;
  
  public CompositeKey(Context paramContext, Entry paramEntry, Type paramType)
  {
    root = new Traverser(paramContext);
    style = paramContext.getStyle();
    context = paramContext;
    entry = paramEntry;
    type = paramType;
  }
  
  private Object read(InputNode paramInputNode, String paramString)
  {
    String str = style.getElement(paramString);
    Class localClass = type.getType();
    paramString = paramInputNode;
    if (str != null) {
      paramString = paramInputNode.getNext(str);
    }
    if (paramString == null) {}
    while (paramString.isEmpty()) {
      return null;
    }
    return root.read(paramString, localClass);
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
    Position localPosition = paramInputNode.getPosition();
    Class localClass = type.getType();
    String str2 = entry.getKey();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    if (entry.isAttribute()) {
      throw new AttributeException("Can not have %s as an attribute for %s at %s", new Object[] { localClass, entry, localPosition });
    }
    return read(paramInputNode, str1);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Position localPosition = paramInputNode.getPosition();
    Class localClass = type.getType();
    if (paramObject != null) {
      throw new PersistenceException("Can not read key of %s for %s at %s", new Object[] { localClass, entry, localPosition });
    }
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    Position localPosition = paramInputNode.getPosition();
    Class localClass = type.getType();
    String str2 = entry.getKey();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    if (entry.isAttribute()) {
      throw new ElementException("Can not have %s as an attribute for %s at %s", new Object[] { localClass, entry, localPosition });
    }
    return validate(paramInputNode, str1);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    Class localClass = type.getType();
    String str2 = entry.getKey();
    if (entry.isAttribute()) {
      throw new ElementException("Can not have %s as an attribute for %s", new Object[] { localClass, entry });
    }
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    str1 = style.getElement(str1);
    root.write(paramOutputNode, paramObject, localClass, str1);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */