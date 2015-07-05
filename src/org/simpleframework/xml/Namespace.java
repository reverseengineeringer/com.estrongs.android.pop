package org.simpleframework.xml;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Namespace
{
  String prefix() default "";
  
  String reference() default "";
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.Namespace
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */