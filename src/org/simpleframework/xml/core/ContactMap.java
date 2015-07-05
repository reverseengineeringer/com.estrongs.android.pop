package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

class ContactMap
  extends LinkedHashMap<Object, Contact>
  implements Iterable<Contact>
{
  public Iterator<Contact> iterator()
  {
    return values().iterator();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ContactMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */