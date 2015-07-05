package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.stream.NamespaceMap;
import org.simpleframework.xml.stream.OutputNode;

class NamespaceDecorator
  implements Decorator
{
  private Namespace primary;
  private List<Namespace> scope = new ArrayList();
  
  private void namespace(OutputNode paramOutputNode)
  {
    if (primary != null) {
      paramOutputNode.setReference(primary.reference());
    }
  }
  
  private void scope(OutputNode paramOutputNode)
  {
    paramOutputNode = paramOutputNode.getNamespaces();
    Iterator localIterator = scope.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Namespace localNamespace = (Namespace)localIterator.next();
      paramOutputNode.setReference(localNamespace.reference(), localNamespace.prefix());
    }
  }
  
  public void add(Namespace paramNamespace)
  {
    scope.add(paramNamespace);
  }
  
  public void decorate(OutputNode paramOutputNode)
  {
    decorate(paramOutputNode, null);
  }
  
  public void decorate(OutputNode paramOutputNode, Decorator paramDecorator)
  {
    if (paramDecorator != null) {
      paramDecorator.decorate(paramOutputNode);
    }
    scope(paramOutputNode);
    namespace(paramOutputNode);
  }
  
  public void set(Namespace paramNamespace)
  {
    if (paramNamespace != null) {
      add(paramNamespace);
    }
    primary = paramNamespace;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.NamespaceDecorator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */