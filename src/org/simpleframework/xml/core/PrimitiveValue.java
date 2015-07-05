package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class PrimitiveValue
  implements Converter
{
  private final Context context;
  private final Entry entry;
  private final PrimitiveFactory factory;
  private final Primitive root;
  private final Style style;
  private final Type type;
  
  public PrimitiveValue(Context paramContext, Entry paramEntry, Type paramType)
  {
    factory = new PrimitiveFactory(paramContext, paramType);
    root = new Primitive(paramContext, paramType);
    style = paramContext.getStyle();
    context = paramContext;
    entry = paramEntry;
    type = paramType;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject)
  {
    return factory.setOverride(type, paramObject, paramOutputNode);
  }
  
  private Object readAttribute(InputNode paramInputNode, String paramString)
  {
    InputNode localInputNode = paramInputNode;
    if (paramString != null) {
      localInputNode = paramInputNode.getAttribute(style.getAttribute(paramString));
    }
    if (localInputNode == null) {
      return null;
    }
    return root.read(localInputNode);
  }
  
  private Object readElement(InputNode paramInputNode, String paramString)
  {
    paramInputNode = paramInputNode.getNext(style.getAttribute(paramString));
    if (paramInputNode == null) {
      return null;
    }
    return root.read(paramInputNode);
  }
  
  private boolean validateAttribute(InputNode paramInputNode, String paramString)
  {
    InputNode localInputNode = paramInputNode;
    if (paramString != null) {
      localInputNode = paramInputNode.getNext(style.getAttribute(paramString));
    }
    if (localInputNode == null) {
      return true;
    }
    return root.validate(localInputNode);
  }
  
  private boolean validateElement(InputNode paramInputNode, String paramString)
  {
    if (paramInputNode.getNext(style.getAttribute(paramString)) == null) {
      return true;
    }
    return root.validate(paramInputNode);
  }
  
  private void writeAttribute(OutputNode paramOutputNode, Object paramObject, String paramString)
  {
    if (paramObject != null)
    {
      OutputNode localOutputNode = paramOutputNode;
      if (paramString != null) {
        localOutputNode = paramOutputNode.setAttribute(style.getAttribute(paramString), null);
      }
      root.write(localOutputNode, paramObject);
    }
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject, String paramString)
  {
    paramOutputNode = paramOutputNode.getChild(style.getAttribute(paramString));
    if ((paramObject != null) && (!isOverridden(paramOutputNode, paramObject))) {
      root.write(paramOutputNode, paramObject);
    }
  }
  
  public Object read(InputNode paramInputNode)
  {
    Class localClass = type.getType();
    String str2 = entry.getValue();
    if (!entry.isInline())
    {
      String str1 = str2;
      if (str2 == null) {
        str1 = context.getName(localClass);
      }
      return readElement(paramInputNode, str1);
    }
    return readAttribute(paramInputNode, str2);
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
    if (!entry.isInline())
    {
      String str1 = str2;
      if (str2 == null) {
        str1 = context.getName(localClass);
      }
      return validateElement(paramInputNode, str1);
    }
    return validateAttribute(paramInputNode, str2);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    Class localClass = type.getType();
    String str2 = entry.getValue();
    if (!entry.isInline())
    {
      String str1 = str2;
      if (str2 == null) {
        str1 = context.getName(localClass);
      }
      writeElement(paramOutputNode, paramObject, str1);
      return;
    }
    writeAttribute(paramOutputNode, paramObject, str2);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PrimitiveValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */