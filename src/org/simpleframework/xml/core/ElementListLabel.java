package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Style;

class ElementListLabel
  extends TemplateLabel
{
  private Decorator decorator;
  private Introspector detail = new Introspector(paramContact, this);
  private String entry;
  private Class item;
  private ElementList label;
  private String name;
  private Class type;
  
  public ElementListLabel(Contact paramContact, ElementList paramElementList)
  {
    decorator = new Qualifier(paramContact);
    type = paramContact.getType();
    entry = paramElementList.entry();
    item = paramElementList.type();
    name = paramElementList.name();
    label = paramElementList;
  }
  
  private Converter getConverter(Context paramContext, String paramString)
  {
    Type localType = getDependent();
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localType)) {
      return new CompositeList(paramContext, localContact, localType, paramString);
    }
    return new PrimitiveList(paramContext, localContact, localType, paramString);
  }
  
  private String getEntry(Context paramContext)
  {
    return paramContext.getStyle().getElement(getEntry());
  }
  
  private Converter getInlineConverter(Context paramContext, String paramString)
  {
    Type localType = getDependent();
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localType)) {
      return new CompositeInlineList(paramContext, localContact, localType, paramString);
    }
    return new PrimitiveInlineList(paramContext, localContact, localType, paramString);
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
    if (!label.inline()) {
      return getConverter(paramContext, str);
    }
    return getInlineConverter(paramContext, str);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    Contact localContact = getContact();
    if (item == Void.TYPE) {
      item = localContact.getDependent();
    }
    if (item == null) {
      throw new ElementException("Unable to determine generic type for %s", new Object[] { localContact });
    }
    return new ClassType(item);
  }
  
  public Object getEmpty(Context paramContext)
  {
    paramContext = new CollectionFactory(paramContext, new ClassType(type));
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
 * Qualified Name:     org.simpleframework.xml.core.ElementListLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */