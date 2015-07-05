package org.simpleframework.xml.stream;

import java.io.Writer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class NodeWriter
{
  private final Set active;
  private final OutputStack stack;
  private final boolean verbose;
  private final Formatter writer;
  
  public NodeWriter(Writer paramWriter)
  {
    this(paramWriter, new Format());
  }
  
  public NodeWriter(Writer paramWriter, Format paramFormat)
  {
    this(paramWriter, paramFormat, false);
  }
  
  private NodeWriter(Writer paramWriter, Format paramFormat, boolean paramBoolean)
  {
    writer = new Formatter(paramWriter, paramFormat);
    active = new HashSet();
    stack = new OutputStack(active);
    verbose = paramBoolean;
  }
  
  private void writeAttributes(OutputNode paramOutputNode)
  {
    NodeMap localNodeMap = paramOutputNode.getAttributes();
    Iterator localIterator = localNodeMap.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        active.remove(paramOutputNode);
        return;
      }
      String str1 = (String)localIterator.next();
      Object localObject = (OutputNode)localNodeMap.get(str1);
      String str2 = ((OutputNode)localObject).getValue();
      localObject = ((OutputNode)localObject).getPrefix(verbose);
      writer.writeAttribute(str1, str2, (String)localObject);
    }
  }
  
  private void writeComment(OutputNode paramOutputNode)
  {
    paramOutputNode = paramOutputNode.getComment();
    if (paramOutputNode != null) {
      writer.writeComment(paramOutputNode);
    }
  }
  
  private void writeEnd(OutputNode paramOutputNode)
  {
    Mode localMode = paramOutputNode.getMode();
    Iterator localIterator = stack.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {}
      OutputNode localOutputNode;
      do
      {
        writeEnd(paramOutputNode, localMode);
        return;
        localOutputNode = (OutputNode)localIterator.next();
      } while (localMode != Mode.INHERIT);
      localMode = localOutputNode.getMode();
    }
  }
  
  private void writeEnd(OutputNode paramOutputNode, Mode paramMode)
  {
    String str = paramOutputNode.getValue();
    if (str != null) {
      writer.writeText(str, paramMode);
    }
    paramMode = paramOutputNode.getName();
    paramOutputNode = paramOutputNode.getPrefix(verbose);
    if (paramMode != null)
    {
      writer.writeEnd(paramMode, paramOutputNode);
      writer.flush();
    }
  }
  
  private void writeName(OutputNode paramOutputNode)
  {
    String str = paramOutputNode.getPrefix(verbose);
    paramOutputNode = paramOutputNode.getName();
    if (paramOutputNode != null) {
      writer.writeStart(paramOutputNode, str);
    }
  }
  
  private void writeNamespaces(OutputNode paramOutputNode)
  {
    paramOutputNode = paramOutputNode.getNamespaces();
    Iterator localIterator = paramOutputNode.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str1 = (String)localIterator.next();
      String str2 = paramOutputNode.getPrefix(str1);
      writer.writeNamespace(str1, str2);
    }
  }
  
  private OutputNode writeStart(OutputNode paramOutputNode, String paramString)
  {
    paramOutputNode = new OutputElement(paramOutputNode, this, paramString);
    if (paramString == null) {
      throw new NodeException("Can not have a null name");
    }
    return stack.push(paramOutputNode);
  }
  
  private void writeStart(OutputNode paramOutputNode)
  {
    writeComment(paramOutputNode);
    writeName(paramOutputNode);
    writeAttributes(paramOutputNode);
    writeNamespaces(paramOutputNode);
  }
  
  public void commit(OutputNode paramOutputNode)
  {
    if (stack.contains(paramOutputNode))
    {
      OutputNode localOutputNode = stack.top();
      if (!isCommitted(localOutputNode)) {
        writeStart(localOutputNode);
      }
    }
    for (;;)
    {
      if (stack.top() == paramOutputNode)
      {
        writeEnd(paramOutputNode);
        stack.pop();
        return;
      }
      writeEnd(stack.pop());
    }
  }
  
  public boolean isCommitted(OutputNode paramOutputNode)
  {
    return !active.contains(paramOutputNode);
  }
  
  public boolean isRoot(OutputNode paramOutputNode)
  {
    return stack.bottom() == paramOutputNode;
  }
  
  public void remove(OutputNode paramOutputNode)
  {
    if (stack.top() != paramOutputNode) {
      throw new NodeException("Cannot remove node");
    }
    stack.pop();
  }
  
  public OutputNode writeElement(OutputNode paramOutputNode, String paramString)
  {
    if (stack.isEmpty()) {
      return writeStart(paramOutputNode, paramString);
    }
    if (stack.contains(paramOutputNode))
    {
      OutputNode localOutputNode = stack.top();
      if (!isCommitted(localOutputNode)) {
        writeStart(localOutputNode);
      }
      for (;;)
      {
        if (stack.top() == paramOutputNode) {
          return writeStart(paramOutputNode, paramString);
        }
        writeEnd(stack.pop());
      }
    }
    return null;
  }
  
  public OutputNode writeRoot()
  {
    OutputDocument localOutputDocument = new OutputDocument(this, stack);
    if (stack.isEmpty()) {
      writer.writeProlog();
    }
    return localOutputDocument;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.NodeWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */