package org.simpleframework.xml.core;

class LabelResolver
{
  private final LabelMap attributes = new LabelMap();
  private final LabelMap elements = new LabelMap();
  private final LabelMap texts = new LabelMap();
  
  private void register(Label paramLabel, LabelMap paramLabelMap)
  {
    String str1 = paramLabel.getName();
    String str2 = paramLabel.getPath();
    if (paramLabelMap.containsKey(str1)) {
      paramLabelMap.put(str1, null);
    }
    for (;;)
    {
      paramLabelMap.put(str2, paramLabel);
      return;
      paramLabelMap.put(str1, paramLabel);
    }
  }
  
  private Label resolve(Parameter paramParameter, LabelMap paramLabelMap)
  {
    String str = paramParameter.getName();
    Label localLabel = (Label)paramLabelMap.get(paramParameter.getPath());
    paramParameter = localLabel;
    if (localLabel == null) {
      paramParameter = (Label)paramLabelMap.get(str);
    }
    return paramParameter;
  }
  
  public void register(Label paramLabel)
  {
    if (paramLabel.isAttribute())
    {
      register(paramLabel, attributes);
      return;
    }
    if (paramLabel.isText())
    {
      register(paramLabel, texts);
      return;
    }
    register(paramLabel, elements);
  }
  
  public Label resolve(Parameter paramParameter)
  {
    if (paramParameter.isAttribute()) {
      return resolve(paramParameter, attributes);
    }
    if (paramParameter.isText()) {
      return resolve(paramParameter, texts);
    }
    return resolve(paramParameter, elements);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */