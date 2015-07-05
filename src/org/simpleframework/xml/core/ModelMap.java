package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import org.simpleframework.xml.stream.Style;

class ModelMap
  extends LinkedHashMap<String, ModelList>
  implements Iterable<ModelList>
{
  private final Class type;
  
  public ModelMap(Class paramClass)
  {
    type = paramClass;
  }
  
  private ModelMap getModels(Style paramStyle)
  {
    ModelMap localModelMap = new ModelMap(type);
    Iterator localIterator = keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localModelMap;
      }
      String str1 = (String)localIterator.next();
      ModelList localModelList2 = (ModelList)get(str1);
      String str2 = paramStyle.getElement(str1);
      ModelList localModelList1 = localModelList2;
      if (localModelList2 != null) {
        localModelList1 = localModelList2.build();
      }
      if (localModelMap.containsKey(str2)) {
        throw new PathException("Path with name '%s' is a duplicate of '%s' in %s ", new Object[] { str1, str2, type });
      }
      localModelMap.put(str2, localModelList1);
    }
  }
  
  public ModelMap getModels(Context paramContext)
  {
    Style localStyle = paramContext.getStyle();
    paramContext = this;
    if (localStyle != null) {
      paramContext = getModels(localStyle);
    }
    return paramContext;
  }
  
  public Iterator<ModelList> iterator()
  {
    return values().iterator();
  }
  
  public Model lookup(String paramString, int paramInt)
  {
    paramString = (ModelList)get(paramString);
    if (paramString != null) {
      return paramString.lookup(paramInt);
    }
    return null;
  }
  
  public void register(String paramString, Model paramModel)
  {
    ModelList localModelList2 = (ModelList)get(paramString);
    ModelList localModelList1 = localModelList2;
    if (localModelList2 == null)
    {
      localModelList1 = new ModelList();
      put(paramString, localModelList1);
    }
    localModelList1.register(paramModel);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */