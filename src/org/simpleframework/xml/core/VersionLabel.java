package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.stream.Style;

class VersionLabel
  extends TemplateLabel
{
  private Decorator decorator;
  private Introspector detail = new Introspector(paramContact, this);
  private Version label;
  private String name;
  private Class type;
  
  public VersionLabel(Contact paramContact, Version paramVersion)
  {
    decorator = new Qualifier(paramContact);
    type = paramContact.getType();
    name = paramVersion.name();
    label = paramVersion;
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
    String str = getEmpty(paramContext);
    Contact localContact = getContact();
    if (!paramContext.isFloat(localContact)) {
      throw new AttributeException("Cannot use %s to represent %s", new Object[] { label, localContact });
    }
    return new Primitive(paramContext, localContact, str);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public String getEmpty(Context paramContext)
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
    return paramContext.getStyle().getAttribute(detail.getName());
  }
  
  public String getOverride()
  {
    return name;
  }
  
  public String getPath()
  {
    return getExpression().getAttribute(getName());
  }
  
  public String getPath(Context paramContext)
  {
    return getExpression().getAttribute(getName(paramContext));
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isAttribute()
  {
    return true;
  }
  
  public boolean isData()
  {
    return false;
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
 * Qualified Name:     org.simpleframework.xml.core.VersionLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */