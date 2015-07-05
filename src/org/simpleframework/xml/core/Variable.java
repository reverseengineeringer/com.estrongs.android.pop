package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Collection;
import org.simpleframework.xml.strategy.Type;

class Variable
  implements Label
{
  private final Label label;
  private final Object value;
  
  public Variable(Label paramLabel, Object paramObject)
  {
    label = paramLabel;
    value = paramObject;
  }
  
  public Annotation getAnnotation()
  {
    return label.getAnnotation();
  }
  
  public Contact getContact()
  {
    return label.getContact();
  }
  
  public Converter getConverter(Context paramContext)
  {
    paramContext = label.getConverter(paramContext);
    if ((paramContext instanceof Variable.Adapter)) {
      return paramContext;
    }
    return new Variable.Adapter(this, paramContext, value);
  }
  
  public Decorator getDecorator()
  {
    return label.getDecorator();
  }
  
  public Type getDependent()
  {
    return label.getDependent();
  }
  
  public Object getEmpty(Context paramContext)
  {
    return label.getEmpty(paramContext);
  }
  
  public String getEntry()
  {
    return label.getEntry();
  }
  
  public Expression getExpression()
  {
    return label.getExpression();
  }
  
  public Label getLabel(Class paramClass)
  {
    return this;
  }
  
  public String getName()
  {
    return label.getName();
  }
  
  public String getName(Context paramContext)
  {
    return label.getName(paramContext);
  }
  
  public Collection<String> getNames()
  {
    return label.getNames();
  }
  
  public Collection<String> getNames(Context paramContext)
  {
    return label.getNames(paramContext);
  }
  
  public String getOverride()
  {
    return label.getOverride();
  }
  
  public String getPath()
  {
    return label.getPath();
  }
  
  public String getPath(Context paramContext)
  {
    return label.getPath(paramContext);
  }
  
  public Collection<String> getPaths()
  {
    return label.getPaths();
  }
  
  public Collection<String> getPaths(Context paramContext)
  {
    return label.getPaths(paramContext);
  }
  
  public Class getType()
  {
    return label.getType();
  }
  
  public Type getType(Class paramClass)
  {
    return label.getType(paramClass);
  }
  
  public Object getValue()
  {
    return value;
  }
  
  public boolean isAttribute()
  {
    return label.isAttribute();
  }
  
  public boolean isCollection()
  {
    return label.isCollection();
  }
  
  public boolean isData()
  {
    return label.isData();
  }
  
  public boolean isInline()
  {
    return label.isInline();
  }
  
  public boolean isRequired()
  {
    return label.isRequired();
  }
  
  public boolean isText()
  {
    return label.isText();
  }
  
  public boolean isUnion()
  {
    return label.isUnion();
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Variable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */