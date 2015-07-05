package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class PrimitiveKey
  implements Converter
{
  private final Context context;
  private final Entry entry;
  private final PrimitiveFactory factory;
  private final Primitive root;
  private final Style style;
  private final Type type;
  
  public PrimitiveKey(Context paramContext, Entry paramEntry, Type paramType)
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
    paramInputNode = paramInputNode.getAttribute(style.getAttribute(paramString));
    if (paramInputNode == null) {
      return null;
    }
    return root.read(paramInputNode);
  }
  
  private Object readElement(InputNode paramInputNode, String paramString)
  {
    paramInputNode = paramInputNode.getNext(style.getElement(paramString));
    if (paramInputNode == null) {
      return null;
    }
    return root.read(paramInputNode);
  }
  
  private boolean validateAttribute(InputNode paramInputNode, String paramString)
  {
    paramInputNode = paramInputNode.getAttribute(style.getElement(paramString));
    if (paramInputNode == null) {
      return true;
    }
    return root.validate(paramInputNode);
  }
  
  private boolean validateElement(InputNode paramInputNode, String paramString)
  {
    paramInputNode = paramInputNode.getNext(style.getElement(paramString));
    if (paramInputNode == null) {
      return true;
    }
    return root.validate(paramInputNode);
  }
  
  private void writeAttribute(OutputNode paramOutputNode, Object paramObject)
  {
    Class localClass = type.getType();
    String str2 = factory.getText(paramObject);
    String str1 = entry.getKey();
    paramObject = str1;
    if (str1 == null) {
      paramObject = context.getName(localClass);
    }
    paramObject = style.getAttribute((String)paramObject);
    if (str2 != null) {
      paramOutputNode.setAttribute((String)paramObject, str2);
    }
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject)
  {
    Class localClass = type.getType();
    String str2 = entry.getKey();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    paramOutputNode = paramOutputNode.getChild(style.getElement(str1));
    if ((paramObject != null) && (!isOverridden(paramOutputNode, paramObject))) {
      root.write(paramOutputNode, paramObject);
    }
  }
  
  public Object read(InputNode paramInputNode)
  {
    Class localClass = type.getType();
    String str2 = entry.getKey();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    if (!entry.isAttribute()) {
      return readElement(paramInputNode, str1);
    }
    return readAttribute(paramInputNode, str1);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Class localClass = type.getType();
    if (paramObject != null) {
      throw new PersistenceException("Can not read key of %s for %s", new Object[] { localClass, entry });
    }
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    Class localClass = type.getType();
    String str2 = entry.getKey();
    String str1 = str2;
    if (str2 == null) {
      str1 = context.getName(localClass);
    }
    if (!entry.isAttribute()) {
      return validateElement(paramInputNode, str1);
    }
    return validateAttribute(paramInputNode, str1);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    if (!entry.isAttribute()) {
      writeElement(paramOutputNode, paramObject);
    }
    while (paramObject == null) {
      return;
    }
    writeAttribute(paramOutputNode, paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PrimitiveKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */