package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.stream.Style;

class ModelSection
  implements Section
{
  private LabelMap attributes;
  private Context context;
  private LabelMap elements;
  private Model model;
  private ModelMap models;
  private Style style;
  
  public ModelSection(Context paramContext, Model paramModel)
  {
    style = paramContext.getStyle();
    context = paramContext;
    model = paramModel;
  }
  
  public String getAttribute(String paramString)
  {
    Expression localExpression = model.getExpression();
    if (localExpression == null) {
      return paramString;
    }
    return localExpression.getAttribute(paramString);
  }
  
  public LabelMap getAttributes()
  {
    if (attributes == null) {
      attributes = model.buildAttributes(context);
    }
    return attributes;
  }
  
  public Label getElement(String paramString)
  {
    return getElements().getLabel(paramString);
  }
  
  public LabelMap getElements()
  {
    if (elements == null) {
      elements = model.buildElements(context);
    }
    return elements;
  }
  
  public ModelMap getModels()
  {
    if (models == null) {
      models = model.buildModels(context);
    }
    return models;
  }
  
  public String getName()
  {
    return model.getName();
  }
  
  public String getPath(String paramString)
  {
    Expression localExpression = model.getExpression();
    if (localExpression == null) {
      return paramString;
    }
    return localExpression.getElement(paramString);
  }
  
  public String getPrefix()
  {
    return model.getPrefix();
  }
  
  public Section getSection(String paramString)
  {
    paramString = (ModelList)getModels().get(paramString);
    if (paramString != null)
    {
      paramString = paramString.take();
      if (paramString != null) {
        return new ModelSection(context, paramString);
      }
    }
    return null;
  }
  
  public Label getText()
  {
    return model.getText();
  }
  
  public boolean isSection(String paramString)
  {
    return getModels().get(paramString) != null;
  }
  
  public Iterator<String> iterator()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = model.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localArrayList.iterator();
      }
      String str = (String)localIterator.next();
      str = style.getElement(str);
      if (str != null) {
        localArrayList.add(str);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */