package org.simpleframework.xml;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface ElementMap
{
  boolean attribute() default false;
  
  boolean data() default false;
  
  boolean empty() default true;
  
  String entry() default "";
  
  boolean inline() default false;
  
  String key() default "";
  
  Class keyType() default void.class;
  
  String name() default "";
  
  boolean required() default true;
  
  String value() default "";
  
  Class valueType() default void.class;
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.ElementMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */