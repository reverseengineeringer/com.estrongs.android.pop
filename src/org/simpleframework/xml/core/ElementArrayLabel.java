package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Style;

class ElementArrayLabel
  extends TemplateLabel
{
  private Decorator decorator;
  private Introspector detail = new Introspector(paramContact, this);
  private String entry;
  private ElementArray label;
  private String name;
  private Class type;
  
  public ElementArrayLabel(Contact paramContact, ElementArray paramElementArray)
  {
    decorator = new Qualifier(paramContact);
    type = paramContact.getType();
    entry = paramElementArray.entry();
    name = paramElementArray.name();
    label = paramElementArray;
  }
  
  private Converter getConverter(Context paramContext, String paramString)
  {
    Type localType = getDependent();
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localType)) {
      return new CompositeArray(paramContext, localContact, localType, paramString);
    }
    return new PrimitiveArray(paramContext, localContact, localType, paramString);
  }
  
  private String getEntry(Context paramContext)
  {
    return paramContext.getStyle().getElement(getEntry());
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public Contact getContact()
  {
    return detail.getContact();
  }
  
  public Converter getConverter(Context paramContext)
  {
    String str = getEntry(paramContext);
    Contact localContact = getContact();
    if (!type.isArray()) {
      throw new InstantiationException("Type is not an array %s for %s", new Object[] { type, localContact });
    }
    return getConverter(paramContext, str);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    Class localClass = type.getComponentType();
    if (localClass == null) {
      return new ClassType(type);
    }
    return new ClassType(localClass);
  }
  
  public Object getEmpty(Context paramContext)
  {
    paramContext = new ArrayFactory(paramContext, new ClassType(type));
    if (!label.empty()) {
      return paramContext.getInstance();
    }
    return null;
  }
  
  public String getEntry()
  {
    if (detail.isEmpty(entry)) {
      entry = detail.getEntry();
    }
    return entry;
  }
  
  public Expression getExpression()
  {
    return detail.getExpression();
  }
  
  public String getName()
  {
    return detail.getName();
  }
  
  public String getName(Context paramContext)
  {
    return paramContext.getStyle().getElement(detail.getName());
  }
  
  public String getOverride()
  {
    return name;
  }
  
  public String getPath()
  {
    return getExpression().getElement(getName());
  }
  
  public String getPath(Context paramContext)
  {
    return getExpression().getElement(getName(paramContext));
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isData()
  {
    return label.data();
  }
  
  public boolean isRequired()
  {
    return label.required();
  }
  
  public String toString()
  {
    return detail.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementArrayLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */