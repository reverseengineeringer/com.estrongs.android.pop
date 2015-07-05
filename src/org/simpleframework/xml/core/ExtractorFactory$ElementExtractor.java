package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;

class ExtractorFactory$ElementExtractor
  implements Extractor<Element>
{
  private final Contact contact;
  private final ElementUnion union;
  
  public ExtractorFactory$ElementExtractor(Contact paramContact, ElementUnion paramElementUnion)
  {
    contact = paramContact;
    union = paramElementUnion;
  }
  
  public List<Element> getAnnotations()
  {
    Element[] arrayOfElement = union.value();
    if (arrayOfElement.length > 0) {
      return Arrays.asList(arrayOfElement);
    }
    return Collections.emptyList();
  }
  
  public Label getLabel(Element paramElement)
  {
    return new ElementLabel(contact, paramElement);
  }
  
  public Class getType(Element paramElement)
  {
    Class localClass = paramElement.type();
    paramElement = localClass;
    if (localClass == Void.TYPE) {
      paramElement = contact.getType();
    }
    return paramElement;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ElementExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */