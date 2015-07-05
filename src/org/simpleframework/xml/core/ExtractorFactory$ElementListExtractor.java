package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;

class ExtractorFactory$ElementListExtractor
  implements Extractor<ElementList>
{
  private final Contact contact;
  private final ElementListUnion union;
  
  public ExtractorFactory$ElementListExtractor(Contact paramContact, ElementListUnion paramElementListUnion)
  {
    contact = paramContact;
    union = paramElementListUnion;
  }
  
  public List<ElementList> getAnnotations()
  {
    ElementList[] arrayOfElementList = union.value();
    if (arrayOfElementList.length > 0) {
      return Arrays.asList(arrayOfElementList);
    }
    return Collections.emptyList();
  }
  
  public Label getLabel(ElementList paramElementList)
  {
    return new ElementListLabel(contact, paramElementList);
  }
  
  public Class getType(ElementList paramElementList)
  {
    return paramElementList.type();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ElementListExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */