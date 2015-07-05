package org.simpleframework.xml;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface ElementArray
{
  boolean data() default false;
  
  boolean empty() default true;
  
  String entry() default "";
  
  String name() default "";
  
  boolean required() default true;
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.ElementArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */