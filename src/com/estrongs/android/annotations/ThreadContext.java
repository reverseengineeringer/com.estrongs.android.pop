package com.estrongs.android.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.SOURCE)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface ThreadContext {}

/* Location:
 * Qualified Name:     com.estrongs.android.annotations.ThreadContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */