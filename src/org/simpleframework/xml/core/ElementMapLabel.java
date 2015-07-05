package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Style;

class ElementMapLabel
  extends TemplateLabel
{
  private Decorator decorator;
  private Introspector detail = new Introspector(paramContact, this);
  private Entry entry;
  private Class[] items;
  private ElementMap label;
  private String name;
  private String parent;
  private Class type;
  
  public ElementMapLabel(Contact paramContact, ElementMap paramElementMap)
  {
    decorator = new Qualifier(paramContact);
    entry = new Entry(paramContact, paramElementMap);
    type = paramContact.getType();
    name = paramElementMap.name();
    label = paramElementMap;
  }
  
  private Type getMap()
  {
    return new ClassType(type);
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
    Type localType = getMap();
    if (!label.inline()) {
      return new CompositeMap(paramContext, entry, localType);
    }
    return new CompositeInlineMap(paramContext, entry, localType);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    Contact localContact = getContact();
    if (items == null) {
      items = localContact.getDependents();
    }
    if (items == null) {
      throw new ElementException("Unable to determine type for %s", new Object[] { localContact });
    }
    if (items.length == 0) {
      return new ClassType(Object.class);
    }
    return new ClassType(items[0]);
  }
  
  public Object getEmpty(Context paramContext)
  {
    paramContext = new MapFactory(paramContext, new ClassType(type));
    if (!label.empty()) {
      return paramContext.getInstance();
    }
    return null;
  }
  
  public String getEntry()
  {
    if (detail.isEmpty(parent)) {
      parent = detail.getEntry();
    }
    return parent;
  }
  
  public Expression getExpression()
  {
    return detail.getExpression();
  }
  
  public String getName()
  {
    if (label.inline()) {
      return entry.getEntry();
    }
    return detail.getName();
  }
  
  public String getName(Context paramContext)
  {
    Style localStyle = paramContext.getStyle();
    paramContext = entry.getEntry();
    if (!label.inline()) {
      paramContext = detail.getName();
    }
    return localStyle.getElement(paramContext);
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
  
  public boolean isCollection()
  {
    return true;
  }
  
  public boolean isData()
  {
    return label.data();
  }
  
  public boolean isInline()
  {
    return label.inline();
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
 * Qualified Name:     org.simpleframework.xml.core.ElementMapLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */