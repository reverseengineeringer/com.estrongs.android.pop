package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;

class ExtractorFactory$ElementMapExtractor
  implements Extractor<ElementMap>
{
  private final Contact contact;
  private final ElementMapUnion union;
  
  public ExtractorFactory$ElementMapExtractor(Contact paramContact, ElementMapUnion paramElementMapUnion)
  {
    contact = paramContact;
    union = paramElementMapUnion;
  }
  
  public List<ElementMap> getAnnotations()
  {
    ElementMap[] arrayOfElementMap = union.value();
    if (arrayOfElementMap.length > 0) {
      return Arrays.asList(arrayOfElementMap);
    }
    return Collections.emptyList();
  }
  
  public Label getLabel(ElementMap paramElementMap)
  {
    return new ElementMapLabel(contact, paramElementMap);
  }
  
  public Class getType(ElementMap paramElementMap)
  {
    return paramElementMap.valueType();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ElementMapExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */