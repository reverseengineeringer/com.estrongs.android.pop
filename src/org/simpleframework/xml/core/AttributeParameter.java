package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.stream.Style;

class AttributeParameter
  extends TemplateParameter
{
  private final AttributeParameter.Contact contact;
  private final Expression expression;
  private final Constructor factory;
  private final int index;
  private final Label label;
  private final String name;
  private final String path;
  private final Class type;
  
  public AttributeParameter(Constructor paramConstructor, Attribute paramAttribute, int paramInt)
  {
    contact = new AttributeParameter.Contact(paramAttribute, paramConstructor, paramInt);
    label = new AttributeLabel(contact, paramAttribute);
    expression = label.getExpression();
    path = label.getPath();
    type = label.getType();
    name = label.getName();
    factory = paramConstructor;
    index = paramInt;
  }
  
  public Annotation getAnnotation()
  {
    return contact.getAnnotation();
  }
  
  public Expression getExpression()
  {
    return expression;
  }
  
  public int getIndex()
  {
    return index;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getName(Context paramContext)
  {
    return paramContext.getStyle().getAttribute(getName());
  }
  
  public String getPath()
  {
    return path;
  }
  
  public String getPath(Context paramContext)
  {
    return getExpression().getAttribute(getName(paramContext));
  }
  
  public Class getType()
  {
    return factory.getParameterTypes()[index];
  }
  
  public boolean isAttribute()
  {
    return true;
  }
  
  public boolean isPrimitive()
  {
    return type.isPrimitive();
  }
  
  public boolean isRequired()
  {
    return label.isRequired();
  }
  
  public String toString()
  {
    return contact.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AttributeParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */