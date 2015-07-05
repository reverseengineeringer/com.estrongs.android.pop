package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Style;

class ElementLabel
  extends TemplateLabel
{
  private Decorator decorator;
  private Introspector detail = new Introspector(paramContact, this);
  private Element label;
  private String name;
  private Class override;
  private Class type;
  
  public ElementLabel(Contact paramContact, Element paramElement)
  {
    decorator = new Qualifier(paramContact);
    type = paramContact.getType();
    override = paramElement.type();
    name = paramElement.name();
    label = paramElement;
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
    Contact localContact = getContact();
    if (paramContext.isPrimitive(localContact)) {
      return new Primitive(paramContext, localContact);
    }
    if (override == Void.TYPE) {
      return new Composite(paramContext, localContact);
    }
    return new Composite(paramContext, localContact, override);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Object getEmpty(Context paramContext)
  {
    return null;
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
    if (override == Void.TYPE) {
      return type;
    }
    return override;
  }
  
  public Type getType(Class paramClass)
  {
    paramClass = getContact();
    if (override == Void.TYPE) {
      return paramClass;
    }
    return new OverrideType(paramClass, override);
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
 * Qualified Name:     org.simpleframework.xml.core.ElementLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */