package org.apache.tika.parser;

import java.io.InputStream;
import java.io.Serializable;
import org.apache.tika.metadata.Metadata;

public abstract interface Parser
  extends Serializable
{
  public abstract void parse(InputStream paramInputStream, Metadata paramMetadata);
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.Parser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */