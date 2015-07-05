package org.simpleframework.xml.stream;

class NodeReader
{
  private final EventReader reader;
  private final InputStack stack = new InputStack();
  
  public NodeReader(EventReader paramEventReader)
  {
    reader = paramEventReader;
  }
  
  private boolean isName(EventNode paramEventNode, String paramString)
  {
    paramEventNode = paramEventNode.getName();
    if (paramEventNode == null) {
      return false;
    }
    return paramEventNode.equals(paramString);
  }
  
  private InputNode readStart(InputNode paramInputNode, EventNode paramEventNode)
  {
    InputElement localInputElement = new InputElement(paramInputNode, this, paramEventNode);
    paramInputNode = localInputElement;
    if (paramEventNode.isStart()) {
      paramInputNode = (InputNode)stack.push(localInputElement);
    }
    return paramInputNode;
  }
  
  public boolean isEmpty(InputNode paramInputNode)
  {
    return (stack.top() == paramInputNode) && (reader.peek().isEnd());
  }
  
  public boolean isRoot(InputNode paramInputNode)
  {
    return stack.bottom() == paramInputNode;
  }
  
  public InputNode readElement(InputNode paramInputNode)
  {
    if (!stack.isRelevant(paramInputNode)) {}
    EventNode localEventNode;
    label23:
    do
    {
      return null;
      localEventNode = reader.next();
      if (localEventNode == null) {
        break;
      }
      if (!localEventNode.isEnd()) {
        break label60;
      }
    } while (stack.pop() == paramInputNode);
    label60:
    while (!localEventNode.isStart())
    {
      localEventNode = reader.next();
      break label23;
      break;
    }
    return readStart(paramInputNode, localEventNode);
  }
  
  public InputNode readElement(InputNode paramInputNode, String paramString)
  {
    if (!stack.isRelevant(paramInputNode)) {}
    EventNode localEventNode;
    label23:
    label78:
    do
    {
      do
      {
        return null;
        localEventNode = reader.peek();
        if (localEventNode == null) {
          break;
        }
        if (!localEventNode.isEnd()) {
          break label78;
        }
      } while (stack.top() == paramInputNode);
      stack.pop();
      while (!localEventNode.isStart())
      {
        reader.next();
        localEventNode = reader.peek();
        break label23;
        break;
      }
    } while (!isName(localEventNode, paramString));
    return readElement(paramInputNode);
  }
  
  public InputNode readRoot()
  {
    Object localObject = null;
    if (stack.isEmpty())
    {
      InputNode localInputNode = readElement(null);
      localObject = localInputNode;
      if (localInputNode == null) {
        throw new NodeException("Document has no root element");
      }
    }
    return (InputNode)localObject;
  }
  
  public String readValue(InputNode paramInputNode)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      if (stack.top() != paramInputNode) {}
      EventNode localEventNode;
      do
      {
        return null;
        localEventNode = reader.peek();
        if (localEventNode.isText()) {
          break;
        }
      } while (localStringBuilder.length() == 0);
      return localStringBuilder.toString();
      localStringBuilder.append(localEventNode.getValue());
      reader.next();
    }
  }
  
  public void skipElement(InputNode paramInputNode)
  {
    while (readElement(paramInputNode) != null) {}
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.NodeReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */