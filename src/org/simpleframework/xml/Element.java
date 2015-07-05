package org.simpleframework.xml;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Element
{
  boolean data() default false;
  
  String name() default "";
  
  boolean required() default true;
  
  Class type() default void.class;
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.Element
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */