package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NamespaceMap;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class Composite
  implements Converter
{
  private final Context context;
  private final Criteria criteria;
  private final ObjectFactory factory;
  private final Primitive primitive;
  private final Revision revision;
  private final Type type;
  
  public Composite(Context paramContext, Type paramType)
  {
    this(paramContext, paramType, null);
  }
  
  public Composite(Context paramContext, Type paramType, Class paramClass)
  {
    factory = new ObjectFactory(paramContext, paramType, paramClass);
    primitive = new Primitive(paramContext, paramType);
    criteria = new Collector(paramContext);
    revision = new Revision();
    context = paramContext;
    type = paramType;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject, Type paramType)
  {
    return factory.setOverride(paramType, paramObject, paramOutputNode);
  }
  
  private Object read(InputNode paramInputNode, Instance paramInstance, Class paramClass)
  {
    Object localObject = context.getSchema(paramClass);
    paramClass = ((Schema)localObject).getCaller();
    localObject = read(paramInputNode, (Schema)localObject, paramInstance);
    paramClass.validate(localObject);
    paramClass.commit(localObject);
    paramInstance.setInstance(localObject);
    return readResolve(paramInputNode, localObject, paramClass);
  }
  
  private Object read(InputNode paramInputNode, Schema paramSchema, Instance paramInstance)
  {
    if (paramSchema.getCreator().isDefault()) {
      return readDefault(paramInputNode, paramSchema, paramInstance);
    }
    read(paramInputNode, null, paramSchema);
    return readConstructor(paramInputNode, paramSchema, paramInstance);
  }
  
  private void read(InputNode paramInputNode, Object paramObject, Schema paramSchema)
  {
    Section localSection = paramSchema.getSection();
    readVersion(paramInputNode, paramObject, paramSchema);
    readSection(paramInputNode, paramObject, localSection);
  }
  
  private void readAttribute(InputNode paramInputNode, Object paramObject, Section paramSection, LabelMap paramLabelMap)
  {
    paramSection = paramSection.getAttribute(paramInputNode.getName());
    Label localLabel = paramLabelMap.getLabel(paramSection);
    if (localLabel == null)
    {
      paramInputNode = paramInputNode.getPosition();
      paramObject = context.getType(type, paramObject);
      if ((paramLabelMap.isStrict(context)) && (revision.isEqual())) {
        throw new AttributeException("Attribute '%s' does not have a match in %s at %s", new Object[] { paramSection, paramObject, paramInputNode });
      }
    }
    else
    {
      readInstance(paramInputNode, paramObject, localLabel);
    }
  }
  
  private void readAttributes(InputNode paramInputNode, Object paramObject, Section paramSection)
  {
    Object localObject = paramInputNode.getAttributes();
    LabelMap localLabelMap = paramSection.getAttributes();
    localObject = ((NodeMap)localObject).iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        validate(paramInputNode, localLabelMap, paramObject);
        return;
      }
      InputNode localInputNode = paramInputNode.getAttribute((String)((Iterator)localObject).next());
      if (localInputNode != null) {
        readAttribute(localInputNode, paramObject, paramSection, localLabelMap);
      }
    }
  }
  
  private Object readConstructor(InputNode paramInputNode, Schema paramSchema, Instance paramInstance)
  {
    paramInputNode = paramSchema.getCreator().getInstance(context, criteria);
    if (paramInstance != null)
    {
      paramInstance.setInstance(paramInputNode);
      criteria.commit(paramInputNode);
    }
    return paramInputNode;
  }
  
  private Object readDefault(InputNode paramInputNode, Schema paramSchema, Instance paramInstance)
  {
    Object localObject = paramInstance.getInstance();
    paramInstance.setInstance(localObject);
    read(paramInputNode, localObject, paramSchema);
    criteria.commit(localObject);
    return localObject;
  }
  
  private void readElement(InputNode paramInputNode, Object paramObject, Section paramSection, LabelMap paramLabelMap)
  {
    String str = paramSection.getPath(paramInputNode.getName());
    Label localLabel = paramLabelMap.getLabel(str);
    paramSection = localLabel;
    if (localLabel == null) {
      paramSection = criteria.get(str);
    }
    if (paramSection == null)
    {
      paramSection = paramInputNode.getPosition();
      paramObject = context.getType(type, paramObject);
      if ((paramLabelMap.isStrict(context)) && (revision.isEqual())) {
        throw new ElementException("Element '%s' does not have a match in %s at %s", new Object[] { str, paramObject, paramSection });
      }
      paramInputNode.skip();
      return;
    }
    readUnion(paramInputNode, paramObject, paramLabelMap, paramSection);
  }
  
  private void readElements(InputNode paramInputNode, Object paramObject, Section paramSection)
  {
    LabelMap localLabelMap = paramSection.getElements();
    InputNode localInputNode = paramInputNode.getNext();
    if (localInputNode == null)
    {
      validate(paramInputNode, localLabelMap, paramObject);
      return;
    }
    Section localSection = paramSection.getSection(localInputNode.getName());
    if (localSection != null) {
      readSection(localInputNode, paramObject, localSection);
    }
    for (;;)
    {
      localInputNode = paramInputNode.getNext();
      break;
      readElement(localInputNode, paramObject, paramSection, localLabelMap);
    }
  }
  
  private Object readInstance(InputNode paramInputNode, Object paramObject, Label paramLabel)
  {
    Object localObject = readVariable(paramInputNode, paramObject, paramLabel);
    if (localObject == null)
    {
      paramInputNode = paramInputNode.getPosition();
      paramObject = context.getType(type, paramObject);
      if ((paramLabel.isRequired()) && (revision.isEqual())) {
        throw new ValueRequiredException("Empty value for %s in %s at %s", new Object[] { paramLabel, paramObject, paramInputNode });
      }
    }
    else if (localObject != paramLabel.getEmpty(context))
    {
      criteria.set(paramLabel, localObject);
    }
    return localObject;
  }
  
  private Object readPrimitive(InputNode paramInputNode, Instance paramInstance)
  {
    Class localClass = paramInstance.getType();
    paramInputNode = primitive.read(paramInputNode, localClass);
    if (localClass != null) {
      paramInstance.setInstance(paramInputNode);
    }
    return paramInputNode;
  }
  
  private Object readResolve(InputNode paramInputNode, Object paramObject, Caller paramCaller)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      paramInputNode = paramInputNode.getPosition();
      localObject = paramCaller.resolve(paramObject);
      paramObject = type.getType();
      paramCaller = localObject.getClass();
      if (!((Class)paramObject).isAssignableFrom(paramCaller)) {
        throw new ElementException("Type %s does not match %s at %s", new Object[] { paramCaller, paramObject, paramInputNode });
      }
    }
    return localObject;
  }
  
  private void readSection(InputNode paramInputNode, Object paramObject, Section paramSection)
  {
    readText(paramInputNode, paramObject, paramSection);
    readAttributes(paramInputNode, paramObject, paramSection);
    readElements(paramInputNode, paramObject, paramSection);
  }
  
  private void readText(InputNode paramInputNode, Object paramObject, Section paramSection)
  {
    paramSection = paramSection.getText();
    if (paramSection != null) {
      readInstance(paramInputNode, paramObject, paramSection);
    }
  }
  
  private void readUnion(InputNode paramInputNode, Object paramObject, LabelMap paramLabelMap, Label paramLabel)
  {
    paramInputNode = readInstance(paramInputNode, paramObject, paramLabel);
    paramObject = paramLabel.getPaths(context).iterator();
    for (;;)
    {
      if (!((Iterator)paramObject).hasNext()) {
        return;
      }
      Label localLabel = paramLabelMap.getLabel((String)((Iterator)paramObject).next());
      if (paramLabel.isInline()) {
        criteria.set(localLabel, paramInputNode);
      }
    }
  }
  
  private Object readVariable(InputNode paramInputNode, Object paramObject, Label paramLabel)
  {
    Converter localConverter = paramLabel.getConverter(context);
    Object localObject = paramLabel.getName(context);
    if (paramLabel.isCollection())
    {
      localObject = criteria.get((String)localObject);
      paramLabel = paramLabel.getContact();
      if (localObject != null) {
        return localConverter.read(paramInputNode, ((Variable)localObject).getValue());
      }
      if (paramObject != null)
      {
        paramObject = paramLabel.get(paramObject);
        if (paramObject != null) {
          return localConverter.read(paramInputNode, paramObject);
        }
      }
    }
    return localConverter.read(paramInputNode);
  }
  
  private void readVersion(InputNode paramInputNode, Object paramObject, Label paramLabel)
  {
    paramInputNode = readInstance(paramInputNode, paramObject, paramLabel);
    paramObject = type.getType();
    if (paramInputNode != null)
    {
      double d = context.getVersion((Class)paramObject).revision();
      if (!paramInputNode.equals(revision)) {
        revision.compare(Double.valueOf(d), paramInputNode);
      }
    }
  }
  
  private void readVersion(InputNode paramInputNode, Object paramObject, Schema paramSchema)
  {
    paramSchema = paramSchema.getVersion();
    Class localClass = type.getType();
    if (paramSchema != null)
    {
      String str = paramSchema.getName();
      paramInputNode = (InputNode)paramInputNode.getAttributes().remove(str);
      if (paramInputNode != null) {
        readVersion(paramInputNode, paramObject, paramSchema);
      }
    }
    else
    {
      return;
    }
    paramInputNode = context.getVersion(localClass);
    paramObject = Double.valueOf(revision.getDefault());
    double d = paramInputNode.revision();
    criteria.set(paramSchema, paramObject);
    revision.compare(Double.valueOf(d), paramObject);
  }
  
  private void validate(InputNode paramInputNode, Label paramLabel)
  {
    Converter localConverter = paramLabel.getConverter(context);
    Position localPosition = paramInputNode.getPosition();
    Class localClass = type.getType();
    if (!localConverter.validate(paramInputNode)) {
      throw new PersistenceException("Invalid value for %s in %s at %s", new Object[] { paramLabel, localClass, localPosition });
    }
    criteria.set(paramLabel, null);
  }
  
  private void validate(InputNode paramInputNode, LabelMap paramLabelMap)
  {
    paramInputNode = paramInputNode.getPosition();
    paramLabelMap = paramLabelMap.iterator();
    Label localLabel;
    Class localClass;
    do
    {
      if (!paramLabelMap.hasNext()) {
        return;
      }
      localLabel = (Label)paramLabelMap.next();
      localClass = type.getType();
    } while ((!localLabel.isRequired()) || (!revision.isEqual()));
    throw new ValueRequiredException("Unable to satisfy %s for %s at %s", new Object[] { localLabel, localClass, paramInputNode });
  }
  
  private void validate(InputNode paramInputNode, LabelMap paramLabelMap, Object paramObject)
  {
    paramObject = context.getType(type, paramObject);
    paramInputNode = paramInputNode.getPosition();
    paramLabelMap = paramLabelMap.iterator();
    for (;;)
    {
      if (!paramLabelMap.hasNext()) {
        return;
      }
      Label localLabel = (Label)paramLabelMap.next();
      if ((localLabel.isRequired()) && (revision.isEqual())) {
        throw new ValueRequiredException("Unable to satisfy %s for %s at %s", new Object[] { localLabel, paramObject, paramInputNode });
      }
      Object localObject = localLabel.getEmpty(context);
      if (localObject != null) {
        criteria.set(localLabel, localObject);
      }
    }
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass)
  {
    paramClass = context.getSchema(paramClass);
    Section localSection = paramClass.getSection();
    validateText(paramInputNode, paramClass);
    validateSection(paramInputNode, localSection);
    return paramInputNode.isElement();
  }
  
  private void validateAttribute(InputNode paramInputNode, Section paramSection, LabelMap paramLabelMap)
  {
    Position localPosition = paramInputNode.getPosition();
    paramSection = paramSection.getAttribute(paramInputNode.getName());
    Label localLabel = paramLabelMap.getLabel(paramSection);
    if (localLabel == null)
    {
      paramInputNode = type.getType();
      if ((paramLabelMap.isStrict(context)) && (revision.isEqual())) {
        throw new AttributeException("Attribute '%s' does not exist for %s at %s", new Object[] { paramSection, paramInputNode, localPosition });
      }
    }
    else
    {
      validate(paramInputNode, localLabel);
    }
  }
  
  private void validateAttributes(InputNode paramInputNode, Section paramSection)
  {
    Object localObject = paramInputNode.getAttributes();
    LabelMap localLabelMap = paramSection.getAttributes();
    localObject = ((NodeMap)localObject).iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        validate(paramInputNode, localLabelMap);
        return;
      }
      InputNode localInputNode = paramInputNode.getAttribute((String)((Iterator)localObject).next());
      if (localInputNode != null) {
        validateAttribute(localInputNode, paramSection, localLabelMap);
      }
    }
  }
  
  private void validateElement(InputNode paramInputNode, Section paramSection, LabelMap paramLabelMap)
  {
    String str = paramSection.getPath(paramInputNode.getName());
    Object localObject = paramLabelMap.getLabel(str);
    paramSection = (Section)localObject;
    if (localObject == null) {
      paramSection = criteria.get(str);
    }
    if (paramSection == null)
    {
      paramSection = paramInputNode.getPosition();
      localObject = type.getType();
      if ((paramLabelMap.isStrict(context)) && (revision.isEqual())) {
        throw new ElementException("Element '%s' does not exist for %s at %s", new Object[] { str, localObject, paramSection });
      }
      paramInputNode.skip();
      return;
    }
    validateUnion(paramInputNode, paramLabelMap, paramSection);
  }
  
  private void validateElements(InputNode paramInputNode, Section paramSection)
  {
    LabelMap localLabelMap = paramSection.getElements();
    InputNode localInputNode = paramInputNode.getNext();
    if (localInputNode == null)
    {
      validate(paramInputNode, localLabelMap);
      return;
    }
    Section localSection = paramSection.getSection(localInputNode.getName());
    if (localSection != null) {
      validateSection(localInputNode, localSection);
    }
    for (;;)
    {
      localInputNode = paramInputNode.getNext();
      break;
      validateElement(localInputNode, paramSection, localLabelMap);
    }
  }
  
  private void validateSection(InputNode paramInputNode, Section paramSection)
  {
    validateAttributes(paramInputNode, paramSection);
    validateElements(paramInputNode, paramSection);
  }
  
  private void validateText(InputNode paramInputNode, Schema paramSchema)
  {
    paramSchema = paramSchema.getText();
    if (paramSchema != null) {
      validate(paramInputNode, paramSchema);
    }
  }
  
  private void validateUnion(InputNode paramInputNode, LabelMap paramLabelMap, Label paramLabel)
  {
    Iterator localIterator = paramLabel.getPaths(context).iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        validate(paramInputNode, paramLabel);
        return;
      }
      Label localLabel = paramLabelMap.getLabel((String)localIterator.next());
      if ((localLabel != null) && (paramLabel.isInline())) {
        criteria.set(localLabel, null);
      }
    }
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Schema paramSchema)
  {
    Section localSection = paramSchema.getSection();
    writeVersion(paramOutputNode, paramObject, paramSchema);
    writeSection(paramOutputNode, paramObject, localSection);
  }
  
  private void writeAttribute(OutputNode paramOutputNode, Object paramObject, Label paramLabel)
  {
    if (paramObject != null) {
      paramLabel.getDecorator().decorate(paramOutputNode.setAttribute(paramLabel.getName(context), factory.getText(paramObject)));
    }
  }
  
  private void writeAttributes(OutputNode paramOutputNode, Object paramObject, Section paramSection)
  {
    Iterator localIterator = paramSection.getAttributes().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Label localLabel = (Label)localIterator.next();
      Object localObject = localLabel.getContact().get(paramObject);
      Class localClass = context.getType(type, paramObject);
      paramSection = (Section)localObject;
      if (localObject == null) {
        paramSection = localLabel.getEmpty(context);
      }
      if ((paramSection == null) && (localLabel.isRequired())) {
        throw new AttributeException("Value for %s is null in %s", new Object[] { localLabel, localClass });
      }
      writeAttribute(paramOutputNode, paramSection, localLabel);
    }
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject, Converter paramConverter)
  {
    paramConverter.write(paramOutputNode, paramObject);
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject, Label paramLabel)
  {
    if (paramObject != null)
    {
      Class localClass = paramObject.getClass();
      Label localLabel = paramLabel.getLabel(localClass);
      String str = localLabel.getName(context);
      paramLabel = paramLabel.getType(localClass);
      paramOutputNode = paramOutputNode.getChild(str);
      if (!localLabel.isInline()) {
        writeNamespaces(paramOutputNode, paramLabel, localLabel);
      }
      if ((localLabel.isInline()) || (!isOverridden(paramOutputNode, paramObject, paramLabel)))
      {
        paramLabel = localLabel.getConverter(context);
        paramOutputNode.setData(localLabel.isData());
        writeElement(paramOutputNode, paramObject, paramLabel);
      }
    }
  }
  
  private void writeElements(OutputNode paramOutputNode, Object paramObject, Section paramSection)
  {
    Iterator localIterator = paramSection.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str = (String)localIterator.next();
      Object localObject = paramSection.getSection(str);
      if (localObject != null)
      {
        writeSection(paramOutputNode.getChild(str), paramObject, (Section)localObject);
      }
      else
      {
        localObject = paramSection.getPath(str);
        Label localLabel = paramSection.getElement((String)localObject);
        Class localClass = context.getType(type, paramObject);
        if (criteria.get((String)localObject) == null)
        {
          if (localLabel == null) {
            throw new ElementException("Element '%s' not defined in %s", new Object[] { str, localClass });
          }
          writeUnion(paramOutputNode, paramObject, paramSection, localLabel);
        }
      }
    }
  }
  
  private void writeNamespaces(OutputNode paramOutputNode, Type paramType, Label paramLabel)
  {
    paramType = paramType.getType();
    paramType = context.getDecorator(paramType);
    paramLabel.getDecorator().decorate(paramOutputNode, paramType);
  }
  
  private Object writeReplace(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      localObject = paramObject.getClass();
      localObject = context.getCaller((Class)localObject).replace(paramObject);
    }
    return localObject;
  }
  
  private void writeSection(OutputNode paramOutputNode, Object paramObject, Section paramSection)
  {
    Object localObject = paramOutputNode.getNamespaces();
    String str = paramSection.getPrefix();
    if (str != null)
    {
      localObject = ((NamespaceMap)localObject).getReference(str);
      if (localObject == null) {
        throw new ElementException("Namespace prefix '%s' in %s is not in scope", new Object[] { str, type });
      }
      paramOutputNode.setReference((String)localObject);
    }
    writeAttributes(paramOutputNode, paramObject, paramSection);
    writeElements(paramOutputNode, paramObject, paramSection);
    writeText(paramOutputNode, paramObject, paramSection);
  }
  
  private void writeText(OutputNode paramOutputNode, Object paramObject, Label paramLabel)
  {
    if (paramObject != null)
    {
      paramObject = factory.getText(paramObject);
      paramOutputNode.setData(paramLabel.isData());
      paramOutputNode.setValue((String)paramObject);
    }
  }
  
  private void writeText(OutputNode paramOutputNode, Object paramObject, Section paramSection)
  {
    Label localLabel = paramSection.getText();
    if (localLabel != null)
    {
      paramSection = localLabel.getContact().get(paramObject);
      Class localClass = context.getType(type, paramObject);
      paramObject = paramSection;
      if (paramSection == null) {
        paramObject = localLabel.getEmpty(context);
      }
      if ((paramObject == null) && (localLabel.isRequired())) {
        throw new TextException("Value for %s is null in %s", new Object[] { localLabel, localClass });
      }
      writeText(paramOutputNode, paramObject, localLabel);
    }
  }
  
  private void writeUnion(OutputNode paramOutputNode, Object paramObject, Section paramSection, Label paramLabel)
  {
    Object localObject = paramLabel.getContact().get(paramObject);
    paramObject = context.getType(type, paramObject);
    if ((localObject == null) && (paramLabel.isRequired())) {
      throw new ElementException("Value for %s is null in %s", new Object[] { paramLabel, paramObject });
    }
    paramObject = writeReplace(localObject);
    if (paramObject != null) {
      writeElement(paramOutputNode, paramObject, paramLabel);
    }
    paramOutputNode = paramLabel.getPaths(context).iterator();
    for (;;)
    {
      if (!paramOutputNode.hasNext()) {
        return;
      }
      paramLabel = paramSection.getElement((String)paramOutputNode.next());
      if (paramLabel != null) {
        criteria.set(paramLabel, paramObject);
      }
    }
  }
  
  private void writeVersion(OutputNode paramOutputNode, Object paramObject, Schema paramSchema)
  {
    paramObject = paramSchema.getRevision();
    paramSchema = paramSchema.getVersion();
    if (paramObject != null)
    {
      double d = revision.getDefault();
      paramObject = Double.valueOf(((Version)paramObject).revision());
      if (!revision.compare(paramObject, Double.valueOf(d))) {
        break label70;
      }
      if (paramSchema.isRequired()) {
        writeAttribute(paramOutputNode, paramObject, paramSchema);
      }
    }
    return;
    label70:
    writeAttribute(paramOutputNode, paramObject, paramSchema);
  }
  
  public Object read(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    Class localClass = localInstance.getType();
    if (localInstance.isReference()) {
      return localInstance.getInstance();
    }
    if (context.isPrimitive(localClass)) {
      return readPrimitive(paramInputNode, localInstance);
    }
    return read(paramInputNode, localInstance, localClass);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Object localObject = paramObject.getClass();
    localObject = context.getSchema((Class)localObject);
    Caller localCaller = ((Schema)localObject).getCaller();
    read(paramInputNode, paramObject, (Schema)localObject);
    criteria.commit(paramObject);
    localCaller.validate(paramObject);
    localCaller.commit(paramObject);
    return readResolve(paramInputNode, paramObject, localCaller);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    if (!localInstance.isReference())
    {
      localInstance.setInstance(null);
      return validate(paramInputNode, localInstance.getType());
    }
    return true;
  }
  
  /* Error */
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 285	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 52	org/simpleframework/xml/core/Composite:context	Lorg/simpleframework/xml/core/Context;
    //   9: aload_3
    //   10: invokeinterface 68 2 0
    //   15: astore 4
    //   17: aload 4
    //   19: invokeinterface 74 1 0
    //   24: astore_3
    //   25: aload 4
    //   27: invokeinterface 577 1 0
    //   32: ifeq +18 -> 50
    //   35: aload_0
    //   36: getfield 38	org/simpleframework/xml/core/Composite:primitive	Lorg/simpleframework/xml/core/Primitive;
    //   39: aload_1
    //   40: aload_2
    //   41: invokevirtual 578	org/simpleframework/xml/core/Primitive:write	(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    //   44: aload_3
    //   45: aload_2
    //   46: invokevirtual 581	org/simpleframework/xml/core/Caller:complete	(Ljava/lang/Object;)V
    //   49: return
    //   50: aload_3
    //   51: aload_2
    //   52: invokevirtual 584	org/simpleframework/xml/core/Caller:persist	(Ljava/lang/Object;)V
    //   55: aload_0
    //   56: aload_1
    //   57: aload_2
    //   58: aload 4
    //   60: invokespecial 586	org/simpleframework/xml/core/Composite:write	(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    //   63: goto -19 -> 44
    //   66: astore_1
    //   67: aload_3
    //   68: aload_2
    //   69: invokevirtual 581	org/simpleframework/xml/core/Caller:complete	(Ljava/lang/Object;)V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Composite
    //   0	74	1	paramOutputNode	OutputNode
    //   0	74	2	paramObject	Object
    //   4	64	3	localObject	Object
    //   15	44	4	localSchema	Schema
    // Exception table:
    //   from	to	target	type
    //   25	44	66	finally
    //   50	63	66	finally
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Composite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */