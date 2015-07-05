package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;

class StructureBuilder
{
  private ModelAssembler assembler;
  private LabelMap attributes;
  private ExpressionBuilder builder;
  private Comparer comparer;
  private LabelMap elements;
  private boolean primitive;
  private LabelResolver resolver;
  private Model root;
  private Scanner scanner;
  private Label text;
  private LabelMap texts;
  private Class type;
  private Label version;
  
  public StructureBuilder(Scanner paramScanner, Class paramClass)
  {
    builder = new ExpressionBuilder(paramClass);
    assembler = new ModelAssembler(builder, paramClass);
    root = new TreeModel(paramScanner, paramClass);
    attributes = new LabelMap(paramScanner);
    elements = new LabelMap(paramScanner);
    texts = new LabelMap(paramScanner);
    resolver = new LabelResolver();
    comparer = new Comparer();
    scanner = paramScanner;
    type = paramClass;
  }
  
  private Model create(Expression paramExpression)
  {
    Object localObject = root;
    Expression localExpression = paramExpression;
    for (;;)
    {
      if (localObject == null) {}
      do
      {
        return (Model)localObject;
        String str1 = localExpression.getPrefix();
        String str2 = localExpression.getFirst();
        int i = localExpression.getIndex();
        paramExpression = (Expression)localObject;
        if (str2 != null) {
          paramExpression = ((Model)localObject).register(str2, str1, i);
        }
        localObject = paramExpression;
      } while (!localExpression.isPath());
      localExpression = localExpression.getPath(1);
      localObject = paramExpression;
    }
  }
  
  private Annotation[] extract(Annotation paramAnnotation)
  {
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    if (arrayOfMethod.length != 1) {
      throw new UnionException("Annotation '%s' is not a valid union for %s", new Object[] { paramAnnotation, type });
    }
    return (Annotation[])arrayOfMethod[0].invoke(paramAnnotation, new Object[0]);
  }
  
  private boolean isAttribute(String paramString)
  {
    paramString = builder.build(paramString);
    Model localModel = lookup(paramString);
    if (localModel != null) {
      return localModel.isAttribute(paramString.getLast());
    }
    return false;
  }
  
  private boolean isElement(String paramString)
  {
    paramString = builder.build(paramString);
    Model localModel = lookup(paramString);
    if (localModel != null)
    {
      String str = paramString.getLast();
      int i = paramString.getIndex();
      if (localModel.isElement(str)) {}
      do
      {
        return true;
        if (!localModel.isModel(str)) {
          break;
        }
      } while (!localModel.lookup(str, i).isEmpty());
      return false;
    }
    return false;
  }
  
  private boolean isEmpty()
  {
    if (text != null) {
      return false;
    }
    return root.isEmpty();
  }
  
  private Model lookup(Expression paramExpression)
  {
    Expression localExpression = paramExpression.getPath(0, 1);
    if (paramExpression.isPath()) {
      return root.lookup(localExpression);
    }
    return root;
  }
  
  private void process(Contact paramContact, Annotation paramAnnotation, LabelMap paramLabelMap)
  {
    paramAnnotation = LabelFactory.getInstance(paramContact, paramAnnotation);
    String str1 = paramAnnotation.getPath();
    String str2 = paramAnnotation.getName();
    if (paramLabelMap.get(str1) != null) {
      throw new PersistenceException("Duplicate annotation of name '%s' on %s", new Object[] { str2, paramContact });
    }
    process(paramContact, paramAnnotation, paramLabelMap);
    validate(paramAnnotation, str1);
  }
  
  private void process(Contact paramContact, Label paramLabel, LabelMap paramLabelMap)
  {
    Expression localExpression = paramLabel.getExpression();
    String str = paramLabel.getPath();
    paramContact = root;
    if (!localExpression.isEmpty()) {
      paramContact = register(localExpression);
    }
    resolver.register(paramLabel);
    paramContact.register(paramLabel);
    paramLabelMap.put(str, paramLabel);
  }
  
  private Model register(Expression paramExpression)
  {
    Model localModel = root.lookup(paramExpression);
    if (localModel != null) {
      return localModel;
    }
    return create(paramExpression);
  }
  
  private void text(Contact paramContact, Annotation paramAnnotation)
  {
    Label localLabel = LabelFactory.getInstance(paramContact, paramAnnotation);
    Expression localExpression = localLabel.getExpression();
    String str = localLabel.getPath();
    paramContact = root;
    if (!localExpression.isEmpty()) {
      paramContact = register(localExpression);
    }
    if (texts.get(str) != null) {
      throw new TextException("Multiple text annotations in %s", new Object[] { paramAnnotation });
    }
    resolver.register(localLabel);
    paramContact.register(localLabel);
    texts.put(str, localLabel);
  }
  
  private void union(Contact paramContact, Annotation paramAnnotation, LabelMap paramLabelMap)
  {
    Annotation[] arrayOfAnnotation = extract(paramAnnotation);
    int j = arrayOfAnnotation.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      Label localLabel = LabelFactory.getInstance(paramContact, paramAnnotation, arrayOfAnnotation[i]);
      String str1 = localLabel.getPath();
      String str2 = localLabel.getName();
      if (paramLabelMap.get(str1) != null) {
        throw new PersistenceException("Duplicate annotation of name '%s' on %s", new Object[] { str2, localLabel });
      }
      process(paramContact, localLabel, paramLabelMap);
      validate(localLabel, str1);
      i += 1;
    }
  }
  
  private void validate(Label paramLabel, String paramString)
  {
    paramString = scanner.getCreator().getParameter(paramString);
    if (paramString != null) {
      validate(paramLabel, paramString);
    }
  }
  
  private void validate(Label paramLabel, Parameter paramParameter)
  {
    Object localObject = paramLabel.getNames();
    Contact localContact = paramLabel.getContact();
    String str = paramParameter.getName();
    if (localContact.getType() != paramParameter.getType()) {
      throw new ConstructorException("Type does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter });
    }
    if (!((Collection)localObject).contains(str))
    {
      localObject = paramLabel.getName();
      if (str != localObject)
      {
        if ((str == null) || (localObject == null)) {
          throw new ConstructorException("Annotation does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter });
        }
        if (!str.equals(localObject)) {
          throw new ConstructorException("Annotation does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter });
        }
      }
    }
    validateAnnotations(paramLabel, paramParameter);
  }
  
  private void validateAnnotations(Label paramLabel, Parameter paramParameter)
  {
    Object localObject2 = paramLabel.getAnnotation();
    Object localObject1 = paramParameter.getAnnotation();
    paramLabel = paramParameter.getName();
    if (!comparer.equals((Annotation)localObject2, (Annotation)localObject1))
    {
      localObject2 = ((Annotation)localObject2).annotationType();
      localObject1 = ((Annotation)localObject1).annotationType();
      if (!localObject2.equals(localObject1)) {
        throw new ConstructorException("Annotation %s does not match %s for '%s' in %s", new Object[] { localObject1, localObject2, paramLabel, paramParameter });
      }
    }
  }
  
  private void validateAttributes(Class paramClass, Order paramOrder)
  {
    int j;
    int i;
    if (paramOrder != null)
    {
      paramOrder = paramOrder.attributes();
      j = paramOrder.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      String str = paramOrder[i];
      if (!isAttribute(str)) {
        throw new AttributeException("Ordered attribute '%s' missing in %s", new Object[] { str, paramClass });
      }
      i += 1;
    }
  }
  
  private void validateConstructor(Label paramLabel, List<Initializer> paramList)
  {
    Iterator localIterator = paramList.iterator();
    label86:
    label110:
    label135:
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Initializer localInitializer = (Initializer)localIterator.next();
      paramList = paramLabel.getContact();
      Object localObject1 = paramLabel.getPath();
      if (paramList.isReadOnly())
      {
        localObject1 = localInitializer.getParameter((String)localObject1);
        Object localObject2 = paramLabel.getNames();
        paramList = (List<Initializer>)localObject1;
        if (localObject1 == null)
        {
          localObject2 = ((Collection)localObject2).iterator();
          paramList = (List<Initializer>)localObject1;
          if (((Iterator)localObject2).hasNext()) {
            break label110;
          }
        }
        for (;;)
        {
          if (paramList != null) {
            break label135;
          }
          localIterator.remove();
          break;
          localObject1 = localInitializer.getParameter((String)((Iterator)localObject2).next());
          paramList = (List<Initializer>)localObject1;
          if (localObject1 == null) {
            break label86;
          }
          paramList = (List<Initializer>)localObject1;
        }
      }
    }
  }
  
  private void validateConstructors(Class paramClass)
  {
    paramClass = scanner.getCreator();
    List localList = paramClass.getInitializers();
    if (paramClass.isDefault())
    {
      validateConstructors(elements);
      validateConstructors(attributes);
    }
    if (!localList.isEmpty())
    {
      validateConstructors(elements, localList);
      validateConstructors(attributes, localList);
    }
  }
  
  private void validateConstructors(LabelMap paramLabelMap)
  {
    paramLabelMap = paramLabelMap.iterator();
    Label localLabel;
    do
    {
      if (!paramLabelMap.hasNext()) {
        return;
      }
      localLabel = (Label)paramLabelMap.next();
    } while ((localLabel == null) || (!localLabel.getContact().isReadOnly()));
    throw new ConstructorException("Default constructor can not accept read only %s in %s", new Object[] { localLabel, type });
  }
  
  private void validateConstructors(LabelMap paramLabelMap, List<Initializer> paramList)
  {
    paramLabelMap = paramLabelMap.iterator();
    for (;;)
    {
      if (!paramLabelMap.hasNext())
      {
        if (!paramList.isEmpty()) {
          break;
        }
        throw new ConstructorException("No constructor accepts all read only values in %s", new Object[] { type });
      }
      Label localLabel = (Label)paramLabelMap.next();
      if (localLabel != null) {
        validateConstructor(localLabel, paramList);
      }
    }
  }
  
  private void validateElements(Class paramClass, Order paramOrder)
  {
    int j;
    int i;
    if (paramOrder != null)
    {
      paramOrder = paramOrder.elements();
      j = paramOrder.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      String str = paramOrder[i];
      if (!isElement(str)) {
        throw new ElementException("Ordered element '%s' missing for %s", new Object[] { str, paramClass });
      }
      i += 1;
    }
  }
  
  private void validateModel(Class paramClass)
  {
    if (!root.isEmpty()) {
      root.validate(paramClass);
    }
  }
  
  private void validateParameters(Creator paramCreator)
  {
    paramCreator = paramCreator.getParameters().iterator();
    Object localObject;
    Label localLabel;
    do
    {
      if (!paramCreator.hasNext()) {
        return;
      }
      localObject = (Parameter)paramCreator.next();
      localLabel = resolver.resolve((Parameter)localObject);
      localObject = ((Parameter)localObject).getPath();
    } while (localLabel != null);
    throw new ConstructorException("Parameter '%s' does not have a match in %s", new Object[] { localObject, type });
  }
  
  private void validateText(Class paramClass)
  {
    if (root.getText() != null)
    {
      if (!elements.isEmpty()) {
        throw new TextException("Elements used with %s in %s", new Object[] { text, paramClass });
      }
      if (root.isComposite()) {
        throw new TextException("Paths used with %s in %s", new Object[] { text, paramClass });
      }
    }
    else if (scanner.isEmpty())
    {
      primitive = isEmpty();
    }
  }
  
  private void validateUnions(Class paramClass)
  {
    Label localLabel;
    Contact localContact;
    Object localObject2;
    Annotation localAnnotation;
    do
    {
      paramClass = elements.iterator();
      Object localObject1;
      while (!((Iterator)localObject1).hasNext())
      {
        if (!paramClass.hasNext()) {
          return;
        }
        localLabel = (Label)paramClass.next();
        localObject1 = localLabel.getPaths();
        localContact = localLabel.getContact();
        localObject1 = ((Collection)localObject1).iterator();
      }
      localObject2 = (String)((Iterator)localObject1).next();
      localAnnotation = localContact.getAnnotation();
      localObject2 = (Label)elements.get(localObject2);
      if (localLabel.isInline() != ((Label)localObject2).isInline()) {
        throw new UnionException("Inline must be consistent in %s for %s", new Object[] { localAnnotation, localContact });
      }
    } while (localLabel.isRequired() == ((Label)localObject2).isRequired());
    throw new UnionException("Required must be consistent in %s for %s", new Object[] { localAnnotation, localContact });
  }
  
  private void version(Contact paramContact, Annotation paramAnnotation)
  {
    paramContact = LabelFactory.getInstance(paramContact, paramAnnotation);
    if (version != null) {
      throw new AttributeException("Multiple version annotations in %s", new Object[] { paramAnnotation });
    }
    version = paramContact;
  }
  
  public void assemble(Class paramClass)
  {
    paramClass = scanner.getOrder();
    if (paramClass != null) {
      assembler.assemble(root, paramClass);
    }
  }
  
  public Structure build(Class paramClass)
  {
    return new Structure(root, version, text, primitive);
  }
  
  public void process(Contact paramContact, Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Attribute)) {
      process(paramContact, paramAnnotation, attributes);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      union(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      union(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      union(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementList)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof Element)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof Version)) {
      version(paramContact, paramAnnotation);
    }
    if ((paramAnnotation instanceof Text)) {
      text(paramContact, paramAnnotation);
    }
  }
  
  public void validate(Class paramClass)
  {
    Creator localCreator = scanner.getCreator();
    Order localOrder = scanner.getOrder();
    validateUnions(paramClass);
    validateElements(paramClass, localOrder);
    validateAttributes(paramClass, localOrder);
    validateParameters(localCreator);
    validateConstructors(paramClass);
    validateModel(paramClass);
    validateText(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.StructureBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */