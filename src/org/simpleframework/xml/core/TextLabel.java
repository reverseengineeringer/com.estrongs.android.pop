package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Text;

class TextLabel
  extends TemplateLabel
{
  private Contact contact;
  private Introspector detail = new Introspector(paramContact, this);
  private String empty;
  private Text label;
  private Class type;
  
  public TextLabel(Contact paramContact, Text paramText)
  {
    type = paramContact.getType();
    empty = paramText.empty();
    contact = paramContact;
    label = paramText;
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Converter getConverter(Context paramContext)
  {
    String str = getEmpty(paramContext);
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localContact)) {
      throw new TextException("Cannot use %s to represent %s", new Object[] { localContact, label });
    }
    return new Primitive(paramContext, localContact, str);
  }
  
  public Decorator getDecorator()
  {
    return null;
  }
  
  public String getEmpty(Context paramContext)
  {
    if (detail.isEmpty(empty)) {
      return null;
    }
    return empty;
  }
  
  public Expression getExpression()
  {
    return detail.getExpression();
  }
  
  public String getName()
  {
    return "";
  }
  
  public String getName(Context paramContext)
  {
    return getName();
  }
  
  public String getOverride()
  {
    return contact.toString();
  }
  
  public String getPath()
  {
    return getExpression().getPath();
  }
  
  public String getPath(Context paramContext)
  {
    return getPath();
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isData()
  {
    return label.data();
  }
  
  public boolean isInline()
  {
    return true;
  }
  
  public boolean isRequired()
  {
    return label.required();
  }
  
  public boolean isText()
  {
    return true;
  }
  
  public String toString()
  {
    return detail.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TextLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */