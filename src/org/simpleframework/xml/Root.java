package org.simpleframework.xml;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Root
{
  String name() default "";
  
  boolean strict() default true;
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.Root
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */