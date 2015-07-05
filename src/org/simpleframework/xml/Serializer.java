package org.simpleframework.xml;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

public abstract interface Serializer
{
  public abstract <T> T read(Class<? extends T> paramClass, File paramFile);
  
  public abstract <T> T read(Class<? extends T> paramClass, File paramFile, boolean paramBoolean);
  
  public abstract <T> T read(Class<? extends T> paramClass, InputStream paramInputStream);
  
  public abstract <T> T read(Class<? extends T> paramClass, InputStream paramInputStream, boolean paramBoolean);
  
  public abstract <T> T read(Class<? extends T> paramClass, Reader paramReader);
  
  public abstract <T> T read(Class<? extends T> paramClass, Reader paramReader, boolean paramBoolean);
  
  public abstract <T> T read(Class<? extends T> paramClass, String paramString);
  
  public abstract <T> T read(Class<? extends T> paramClass, String paramString, boolean paramBoolean);
  
  public abstract <T> T read(Class<? extends T> paramClass, InputNode paramInputNode);
  
  public abstract <T> T read(Class<? extends T> paramClass, InputNode paramInputNode, boolean paramBoolean);
  
  public abstract <T> T read(T paramT, File paramFile);
  
  public abstract <T> T read(T paramT, File paramFile, boolean paramBoolean);
  
  public abstract <T> T read(T paramT, InputStream paramInputStream);
  
  public abstract <T> T read(T paramT, InputStream paramInputStream, boolean paramBoolean);
  
  public abstract <T> T read(T paramT, Reader paramReader);
  
  public abstract <T> T read(T paramT, Reader paramReader, boolean paramBoolean);
  
  public abstract <T> T read(T paramT, String paramString);
  
  public abstract <T> T read(T paramT, String paramString, boolean paramBoolean);
  
  public abstract <T> T read(T paramT, InputNode paramInputNode);
  
  public abstract <T> T read(T paramT, InputNode paramInputNode, boolean paramBoolean);
  
  public abstract boolean validate(Class paramClass, File paramFile);
  
  public abstract boolean validate(Class paramClass, File paramFile, boolean paramBoolean);
  
  public abstract boolean validate(Class paramClass, InputStream paramInputStream);
  
  public abstract boolean validate(Class paramClass, InputStream paramInputStream, boolean paramBoolean);
  
  public abstract boolean validate(Class paramClass, Reader paramReader);
  
  public abstract boolean validate(Class paramClass, Reader paramReader, boolean paramBoolean);
  
  public abstract boolean validate(Class paramClass, String paramString);
  
  public abstract boolean validate(Class paramClass, String paramString, boolean paramBoolean);
  
  public abstract boolean validate(Class paramClass, InputNode paramInputNode);
  
  public abstract boolean validate(Class paramClass, InputNode paramInputNode, boolean paramBoolean);
  
  public abstract void write(Object paramObject, File paramFile);
  
  public abstract void write(Object paramObject, OutputStream paramOutputStream);
  
  public abstract void write(Object paramObject, Writer paramWriter);
  
  public abstract void write(Object paramObject, OutputNode paramOutputNode);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.Serializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */