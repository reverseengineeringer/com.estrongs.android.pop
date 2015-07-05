package org.simpleframework.xml.core;

import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.stream.OutputNode;

class Qualifier
  implements Decorator
{
  private NamespaceDecorator decorator = new NamespaceDecorator();
  
  public Qualifier(Contact paramContact)
  {
    scan(paramContact);
  }
  
  private void namespace(Contact paramContact)
  {
    paramContact = (Namespace)paramContact.getAnnotation(Namespace.class);
    if (paramContact != null)
    {
      decorator.set(paramContact);
      decorator.add(paramContact);
    }
  }
  
  private void scan(Contact paramContact)
  {
    namespace(paramContact);
    scope(paramContact);
  }
  
  private void scope(Contact paramContact)
  {
    paramContact = (NamespaceList)paramContact.getAnnotation(NamespaceList.class);
    int j;
    int i;
    if (paramContact != null)
    {
      paramContact = paramContact.value();
      j = paramContact.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      Namespace localNamespace = paramContact[i];
      decorator.add(localNamespace);
      i += 1;
    }
  }
  
  public void decorate(OutputNode paramOutputNode)
  {
    decorator.decorate(paramOutputNode);
  }
  
  public void decorate(OutputNode paramOutputNode, Decorator paramDecorator)
  {
    decorator.decorate(paramOutputNode, paramDecorator);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Qualifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */