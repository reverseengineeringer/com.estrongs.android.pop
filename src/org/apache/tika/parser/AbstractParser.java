package org.apache.tika.parser;

import java.io.InputStream;
import org.apache.tika.metadata.Metadata;

public abstract class AbstractParser
  implements Parser
{
  private static final long serialVersionUID = 7186985395903074255L;
  
  public void parse(InputStream paramInputStream, Metadata paramMetadata) {}
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.AbstractParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */