package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Collection;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.strategy.Type;

class ElementUnionLabel
  implements Label
{
  private Contact contact;
  private Expression expression;
  private GroupExtractor extractor;
  private Label label;
  private ElementUnion union;
  
  public ElementUnionLabel(Contact paramContact, ElementUnion paramElementUnion, Element paramElement)
  {
    extractor = new GroupExtractor(paramContact, paramElementUnion);
    label = new ElementLabel(paramContact, paramElement);
    contact = paramContact;
    union = paramElementUnion;
  }
  
  public Annotation getAnnotation()
  {
    return label.getAnnotation();
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Converter getConverter(Context paramContext)
  {
    Expression localExpression = getExpression();
    Contact localContact = getContact();
    if (localContact == null) {
      throw new UnionException("Union %s was not declared on a field or method", new Object[] { label });
    }
    return new CompositeUnion(paramContext, extractor, localExpression, localContact);
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
    if (expression == null) {
      expression = label.getExpression();
    }
    return expression;
  }
  
  public Label getLabel(Class paramClass)
  {
    Contact localContact = getContact();
    if (!extractor.isValid(paramClass)) {
      throw new UnionException("No type matches %s in %s for %s", new Object[] { paramClass, union, localContact });
    }
    return extractor.getLabel(paramClass);
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
    return extractor.getNames();
  }
  
  public Collection<String> getNames(Context paramContext)
  {
    return extractor.getNames(paramContext);
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
    return extractor.getPaths();
  }
  
  public Collection<String> getPaths(Context paramContext)
  {
    return extractor.getPaths(paramContext);
  }
  
  public Class getType()
  {
    return label.getType();
  }
  
  public Type getType(Class paramClass)
  {
    Contact localContact = getContact();
    if (!extractor.isValid(paramClass)) {
      throw new UnionException("No type matches %s in %s for %s", new Object[] { paramClass, union, localContact });
    }
    return new OverrideType(localContact, paramClass);
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
    return true;
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementUnionLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */