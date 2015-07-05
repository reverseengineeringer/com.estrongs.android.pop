package org.simpleframework.xml.stream;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

class DocumentReader
  implements EventReader
{
  private static final String RESERVED = "xml";
  private EventNode peek;
  private NodeExtractor queue;
  private NodeStack stack;
  
  public DocumentReader(Document paramDocument)
  {
    queue = new NodeExtractor(paramDocument);
    stack = new NodeStack();
    stack.push(paramDocument);
  }
  
  private DocumentReader.Entry attribute(Node paramNode)
  {
    return new DocumentReader.Entry(paramNode);
  }
  
  private DocumentReader.Start build(DocumentReader.Start paramStart)
  {
    NamedNodeMap localNamedNodeMap = paramStart.getAttributes();
    int j = localNamedNodeMap.getLength();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return paramStart;
      }
      DocumentReader.Entry localEntry = attribute(localNamedNodeMap.item(i));
      if (!localEntry.isReserved()) {
        paramStart.add(localEntry);
      }
      i += 1;
    }
  }
  
  private EventNode convert(Node paramNode)
  {
    if (paramNode.getNodeType() == 1)
    {
      stack.push(paramNode);
      return start(paramNode);
    }
    return text(paramNode);
  }
  
  private DocumentReader.End end()
  {
    return new DocumentReader.End(null);
  }
  
  private EventNode read()
  {
    Node localNode = (Node)queue.peek();
    if (localNode == null) {
      return end();
    }
    return read(localNode);
  }
  
  private EventNode read(Node paramNode)
  {
    Node localNode1 = paramNode.getParentNode();
    Node localNode2 = (Node)stack.top();
    if (localNode1 != localNode2)
    {
      if (localNode2 != null) {
        stack.pop();
      }
      return end();
    }
    queue.poll();
    return convert(paramNode);
  }
  
  private DocumentReader.Start start(Node paramNode)
  {
    DocumentReader.Start localStart = new DocumentReader.Start(paramNode);
    paramNode = localStart;
    if (localStart.isEmpty()) {
      paramNode = build(localStart);
    }
    return paramNode;
  }
  
  private DocumentReader.Text text(Node paramNode)
  {
    return new DocumentReader.Text(paramNode);
  }
  
  public EventNode next()
  {
    EventNode localEventNode = peek;
    if (localEventNode == null) {
      return read();
    }
    peek = null;
    return localEventNode;
  }
  
  public EventNode peek()
  {
    if (peek == null) {
      peek = next();
    }
    return peek;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.DocumentReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */