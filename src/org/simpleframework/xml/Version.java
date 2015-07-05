package org.simpleframework.xml;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Version
{
  String name() default "";
  
  boolean required() default false;
  
  double revision() default 1.0D;
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.Version
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */