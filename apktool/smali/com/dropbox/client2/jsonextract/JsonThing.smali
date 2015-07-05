.class public final Lcom/dropbox/client2/jsonextract/JsonThing;
.super Lcom/dropbox/client2/jsonextract/JsonBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/client2/jsonextract/JsonBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TypeNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/client2/jsonextract/JsonThing;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    sget-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    const-string v2, "a string"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Number;

    const-string v2, "a number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "a boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    const-string v2, "an object"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    const-string v2, "an array"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private expect(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-boolean v0, Lcom/dropbox/client2/jsonextract/JsonThing;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dropbox/client2/jsonextract/JsonThing;->typeNameForClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-static {v1}, Lcom/dropbox/client2/jsonextract/JsonThing;->typeNameForObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0
.end method

.method private is(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/dropbox/client2/jsonextract/JsonThing;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static pathConcat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static typeNameForClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, "null"

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/dropbox/client2/jsonextract/JsonThing;->TypeNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/dropbox/client2/jsonextract/JsonThing;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static typeNameForObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    const-string v0, "a number"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "a string"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const-string v0, "a boolean"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    const-string v0, "an object"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    const-string v0, "an array"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a valid org.json.simple type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    .locals 1

    invoke-super {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    return-object v0
.end method

.method public expectBoolean()Z
    .locals 1

    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expect(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public expectFloat64()D
    .locals 2

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting a floating point number, found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-static {v1}, Lcom/dropbox/client2/jsonextract/JsonThing;->typeNameForObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0
.end method

.method public expectInt32()I
    .locals 2

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting an integer, found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-static {v1}, Lcom/dropbox/client2/jsonextract/JsonThing;->typeNameForObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0
.end method

.method public expectInt64()J
    .locals 2

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expecting an integer, found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-static {v1}, Lcom/dropbox/client2/jsonextract/JsonThing;->typeNameForObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0
.end method

.method public expectList()Lcom/dropbox/client2/jsonextract/JsonList;
    .locals 3

    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expect(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonList;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->path:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public expectMap()Lcom/dropbox/client2/jsonextract/JsonMap;
    .locals 3

    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expect(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonMap;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->path:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonMap;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public expectNull()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "expecting null"

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public expectNumber()Ljava/lang/Number;
    .locals 1

    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expect(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public expectString()Ljava/lang/String;
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expect(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public expectStringOrNull()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expect(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 1

    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isFloat64()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectFloat64()D
    :try_end_0
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt32()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectInt32()I
    :try_end_0
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt64()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectInt64()J
    :try_end_0
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isList()Z
    .locals 1

    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .locals 1

    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 1

    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isString()Z
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public optionalExtract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/dropbox/client2/jsonextract/JsonExtractor;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public unexpected()Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonThing;->internal:Ljava/lang/Object;

    invoke-static {v1}, Lcom/dropbox/client2/jsonextract/JsonThing;->typeNameForObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    return-object v0
.end method
