package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Convert
{
  Class<? extends Converter> value();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.Convert
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */