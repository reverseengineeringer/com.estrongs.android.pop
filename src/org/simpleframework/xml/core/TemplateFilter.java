package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;

class TemplateFilter
  implements Filter
{
  private Context context;
  private Filter filter;
  
  public TemplateFilter(Context paramContext, Filter paramFilter)
  {
    context = paramContext;
    filter = paramFilter;
  }
  
  public String replace(String paramString)
  {
    Object localObject = context.getAttribute(paramString);
    if (localObject != null) {
      return localObject.toString();
    }
    return filter.replace(paramString);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TemplateFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */