package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Style;

class CacheLabel
  implements Label
{
  private final Annotation annotation;
  private final boolean attribute;
  private final boolean collection;
  private final Contact contact;
  private final boolean data;
  private final Decorator decorator;
  private final Type depend;
  private final String entry;
  private final Expression expression;
  private final boolean inline;
  private final Label label;
  private final String name;
  private final Collection<String> names;
  private final String override;
  private final String path;
  private final Collection<String> paths;
  private final boolean required;
  private final boolean text;
  private final Class type;
  private final boolean union;
  
  public CacheLabel(Label paramLabel)
  {
    annotation = paramLabel.getAnnotation();
    expression = paramLabel.getExpression();
    decorator = paramLabel.getDecorator();
    attribute = paramLabel.isAttribute();
    collection = paramLabel.isCollection();
    contact = paramLabel.getContact();
    depend = paramLabel.getDependent();
    required = paramLabel.isRequired();
    override = paramLabel.getOverride();
    inline = paramLabel.isInline();
    union = paramLabel.isUnion();
    names = paramLabel.getNames();
    paths = paramLabel.getPaths();
    path = paramLabel.getPath();
    type = paramLabel.getType();
    name = paramLabel.getName();
    entry = paramLabel.getEntry();
    data = paramLabel.isData();
    text = paramLabel.isText();
    label = paramLabel;
  }
  
  public Annotation getAnnotation()
  {
    return annotation;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Converter getConverter(Context paramContext)
  {
    return label.getConverter(paramContext);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    return depend;
  }
  
  public Object getEmpty(Context paramContext)
  {
    return label.getEmpty(paramContext);
  }
  
  public String getEntry()
  {
    return entry;
  }
  
  public Expression getExpression()
  {
    return expression;
  }
  
  public Label getLabel(Class paramClass)
  {
    return label.getLabel(paramClass);
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getName(Context paramContext)
  {
    paramContext = paramContext.getStyle();
    if (attribute) {
      return paramContext.getAttribute(name);
    }
    return paramContext.getElement(name);
  }
  
  public Collection<String> getNames()
  {
    return names;
  }
  
  public Collection<String> getNames(Context paramContext)
  {
    if (!union) {
      return Arrays.asList(new String[] { getPath(paramContext), getName(paramContext) });
    }
    return label.getNames(paramContext);
  }
  
  public String getOverride()
  {
    return override;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public String getPath(Context paramContext)
  {
    paramContext = getName(paramContext);
    if (attribute) {
      return expression.getAttribute(paramContext);
    }
    return expression.getElement(paramContext);
  }
  
  public Collection<String> getPaths()
  {
    return paths;
  }
  
  public Collection<String> getPaths(Context paramContext)
  {
    if (!union) {
      return Collections.singleton(getPath(paramContext));
    }
    return label.getPaths(paramContext);
  }
  
  public Class getType()
  {
    return type;
  }
  
  public Type getType(Class paramClass)
  {
    return label.getType(paramClass);
  }
  
  public boolean isAttribute()
  {
    return attribute;
  }
  
  public boolean isCollection()
  {
    return collection;
  }
  
  public boolean isData()
  {
    return data;
  }
  
  public boolean isInline()
  {
    return inline;
  }
  
  public boolean isRequired()
  {
    return required;
  }
  
  public boolean isText()
  {
    return text;
  }
  
  public boolean isUnion()
  {
    return union;
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CacheLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */