.class public Lcom/flurry/sdk/fo;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/fo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    sget-object v0, Lcom/flurry/sdk/fo$a;->a:Lcom/flurry/sdk/fo$a;

    sput-object v0, Lcom/flurry/sdk/fo;->b:Lcom/flurry/sdk/fo$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/fm;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v0, Lcom/flurry/sdk/fo$a;->a:Lcom/flurry/sdk/fo$a;

    invoke-static {v0}, Lcom/flurry/sdk/fo;->a(Lcom/flurry/sdk/fo$a;)V

    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    new-instance v3, Lcom/flurry/sdk/fm$a;

    invoke-direct {v3}, Lcom/flurry/sdk/fm$a;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fm$a;Ljava/util/List;)Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->f()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Lcom/flurry/sdk/fm$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fm$a;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/fm$a;->a()Lcom/flurry/sdk/fm$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fm$a;->b()Lcom/flurry/sdk/fm;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :cond_1
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/fo;->a()Lcom/flurry/sdk/fo$a;

    move-result-object v3

    sget-object v4, Lcom/flurry/sdk/fo$a;->d:Lcom/flurry/sdk/fo$a;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/fo$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    const-string v3, "VASTXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing VAST XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/flurry/sdk/fm$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fm$a;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/fm$a;->a()Lcom/flurry/sdk/fm$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fm$a;->b()Lcom/flurry/sdk/fm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :goto_3
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :try_start_3
    const-string v3, "VASTXmlParser"

    const-string v4, "Not a VAST Ad"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fm$a;Ljava/util/List;)Lcom/flurry/sdk/fm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/fm$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fu;",
            ">;)",
            "Lcom/flurry/sdk/fm;"
        }
    .end annotation

    const/4 v2, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "VAST"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/fo$a;->b:Lcom/flurry/sdk/fo$a;

    invoke-static {v0}, Lcom/flurry/sdk/fo;->a(Lcom/flurry/sdk/fo$a;)V

    invoke-static {p0}, Lcom/flurry/sdk/fo;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/fo;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fm$a;->a(I)Lcom/flurry/sdk/fm$a;

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/flurry/sdk/fu$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fu$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fu$a;)Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/fo$a;->d:Lcom/flurry/sdk/fo$a;

    invoke-static {v0}, Lcom/flurry/sdk/fo;->a(Lcom/flurry/sdk/fo$a;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/fm$a;->a(Ljava/util/List;)Lcom/flurry/sdk/fm$a;

    invoke-static {p2}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fm$a;->a(Z)Lcom/flurry/sdk/fm$a;

    invoke-static {p2}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/flurry/sdk/fo$a;->a:Lcom/flurry/sdk/fo$a;

    invoke-static {v0}, Lcom/flurry/sdk/fo;->a(Lcom/flurry/sdk/fo$a;)V

    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/fm$a;->b()Lcom/flurry/sdk/fm;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lcom/flurry/sdk/fo$a;->c:Lcom/flurry/sdk/fo$a;

    invoke-static {v0}, Lcom/flurry/sdk/fo;->a(Lcom/flurry/sdk/fo$a;)V

    goto :goto_1
.end method

.method private static a()Lcom/flurry/sdk/fo$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/fo;->b:Lcom/flurry/sdk/fo$a;

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fu$a;)Lcom/flurry/sdk/fu;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "Ad"

    invoke-interface {p0, v6, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fu$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fu$a;

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "sequence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fu$a;->a(I)Lcom/flurry/sdk/fu$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v7, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify Ad Sequence"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string v2, "InLine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "Wrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/flurry/sdk/fw$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fw$a;-><init>()V

    new-instance v1, Lcom/flurry/sdk/fv$a;

    invoke-direct {v1}, Lcom/flurry/sdk/fv$a;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fw$a;Lcom/flurry/sdk/fv$a;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/fw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fu$a;->a(Lcom/flurry/sdk/fw;)Lcom/flurry/sdk/fu$a;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/flurry/sdk/fw$a;

    invoke-direct {v1}, Lcom/flurry/sdk/fw$a;-><init>()V

    new-instance v2, Lcom/flurry/sdk/fv$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fv$a;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fw$a;Lcom/flurry/sdk/fv$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/fw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fu$a;->a(Lcom/flurry/sdk/fw;)Lcom/flurry/sdk/fu$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/fu$a;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7d3bfd27 -> :sswitch_0
        -0x3dade38d -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fw$a;Lcom/flurry/sdk/fv$a;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/fw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/fw$a;",
            "Lcom/flurry/sdk/fv$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fw;"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v1, 0x2

    sget-object v0, Lcom/flurry/sdk/fp;->b:Lcom/flurry/sdk/fp;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->a(Lcom/flurry/sdk/fp;)Lcom/flurry/sdk/fw$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v3, "InLine"

    invoke-interface {p0, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "Creatives"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "AdSystem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "AdTitle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v4, "Impression"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->d(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v3, "version"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/fv$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fv$a;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/fv$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/fv$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/fv$a;->a()Lcom/flurry/sdk/fv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->a(Lcom/flurry/sdk/fv;)Lcom/flurry/sdk/fw$a;

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fw$a;

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/fw$a;->b(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {p1, p4}, Lcom/flurry/sdk/fw$a;->c(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {p1}, Lcom/flurry/sdk/fw$a;->a()Lcom/flurry/sdk/fw;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64e1597c -> :sswitch_0
        -0x616317ae -> :sswitch_1
        0x401e1e8 -> :sswitch_4
        0x1deadbd5 -> :sswitch_2
        0x7e026e29 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fw$a;Lcom/flurry/sdk/fv$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/flurry/sdk/fw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/fw$a;",
            "Lcom/flurry/sdk/fv$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fw;"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v1, 0x2

    sget-object v0, Lcom/flurry/sdk/fp;->c:Lcom/flurry/sdk/fp;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->a(Lcom/flurry/sdk/fp;)Lcom/flurry/sdk/fw$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v3, "Wrapper"

    invoke-interface {p0, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "Creatives"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "AdSystem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "VASTAdTagURI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v4, "Impression"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->d(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v3, "version"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/fv$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fv$a;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/fv$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/fv$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/fv$a;->a()Lcom/flurry/sdk/fv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fw$a;->a(Lcom/flurry/sdk/fv;)Lcom/flurry/sdk/fw$a;

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/flurry/sdk/fo;->a(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/fw$a;->a(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {p1, p4}, Lcom/flurry/sdk/fw$a;->b(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {p1, p5}, Lcom/flurry/sdk/fw$a;->c(Ljava/util/List;)Lcom/flurry/sdk/fw$a;

    invoke-virtual {p1}, Lcom/flurry/sdk/fw$a;->a()Lcom/flurry/sdk/fw;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x64e1597c -> :sswitch_0
        -0x616317ae -> :sswitch_1
        -0x2303541f -> :sswitch_2
        0x401e1e8 -> :sswitch_4
        0x7e026e29 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fx$a;)Lcom/flurry/sdk/fx;
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "Creative"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fx$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fx$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "sequence"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fx$a;->a(I)Lcom/flurry/sdk/fx$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/fq;->b:Lcom/flurry/sdk/fq;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fx$a;->a(Lcom/flurry/sdk/fq;)Lcom/flurry/sdk/fx$a;

    new-instance v0, Lcom/flurry/sdk/fy$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fy$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fy$a;)Lcom/flurry/sdk/fy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fx$a;->a(Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fx$a;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify Creative sequence"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/fx$a;->a()Lcom/flurry/sdk/fx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fy$a;)Lcom/flurry/sdk/fy;
    .locals 5

    const/4 v2, 0x3

    const/4 v1, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v3, "Linear"

    invoke-interface {p0, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v3, "skipoffset"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fy$a;->b(I)Lcom/flurry/sdk/fy$a;

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "Duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "TrackingEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "VideoClicks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v4, "MediaFiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fy$a;->a(I)Lcom/flurry/sdk/fy$a;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/flurry/sdk/jx;

    invoke-direct {v0}, Lcom/flurry/sdk/jx;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fy$a;->a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/fy$a;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/flurry/sdk/jx;

    invoke-direct {v0}, Lcom/flurry/sdk/jx;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fy$a;->b(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/fy$a;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;)Lcom/flurry/sdk/fz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fy$a;->a(Lcom/flurry/sdk/fz;)Lcom/flurry/sdk/fy$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/fy$a;->a()Lcom/flurry/sdk/fy;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_2
        -0x72e14e4c -> :sswitch_0
        -0x16f37aed -> :sswitch_3
        0x247392d0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fz$a;)Lcom/flurry/sdk/fz;
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v2, "MediaFile"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fz$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->d(Ljava/lang/String;)Lcom/flurry/sdk/fz$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "apiFramework"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->b(Ljava/lang/String;)Lcom/flurry/sdk/fz$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "delivery"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fr;->a(Ljava/lang/String;)Lcom/flurry/sdk/fr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->a(Lcom/flurry/sdk/fr;)Lcom/flurry/sdk/fz$a;

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "height"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->b(I)Lcom/flurry/sdk/fz$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "width"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->c(I)Lcom/flurry/sdk/fz$a;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "bitrate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->a(I)Lcom/flurry/sdk/fz$a;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "scalable"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->b(Z)Lcom/flurry/sdk/fz$a;

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "maintainAspectRatio"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->a(Z)Lcom/flurry/sdk/fz$a;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fz$a;->c(Ljava/lang/String;)Lcom/flurry/sdk/fz$a;

    invoke-virtual {p1}, Lcom/flurry/sdk/fz$a;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile height"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile width"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "VASTXmlParser"

    const-string v1, "Could not identify MediaFile bitRate"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ga$a;)Lcom/flurry/sdk/ga;
    .locals 3

    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v2, "Tracking"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "event"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fs;->a(Ljava/lang/String;)Lcom/flurry/sdk/fs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ga$a;->a(Lcom/flurry/sdk/fs;)Lcom/flurry/sdk/ga$a;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ga$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/ga$a;

    invoke-virtual {p1}, Lcom/flurry/sdk/ga$a;->a()Lcom/flurry/sdk/ga;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/ft;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/ft;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v2, "VideoClicks"

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :sswitch_0
    const-string v3, "ClickThrough"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "ClickTracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "CustomClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/ft;->b:Lcom/flurry/sdk/ft;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/ft;->c:Lcom/flurry/sdk/ft;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/ft;->d:Lcom/flurry/sdk/ft;

    invoke-static {p0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x24d417c3 -> :sswitch_0
        -0x8178f89 -> :sswitch_2
        0x7d9f703f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_0
    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fx;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "Creatives"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/flurry/sdk/fx$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fx$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fx$a;)Lcom/flurry/sdk/fx;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static a(Lcom/flurry/sdk/fo$a;)V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "VASTXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting VAST parse state as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/fo$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/flurry/sdk/fo;->b:Lcom/flurry/sdk/fo$a;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fu;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/fw;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/flurry/sdk/fp;->b:Lcom/flurry/sdk/fp;

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/fp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/fs;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/fs;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "TrackingEvents"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/flurry/sdk/ga$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ga$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/ga$a;)Lcom/flurry/sdk/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ga;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/ga;->a()Lcom/flurry/sdk/fs;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/ga;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fz;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    sget-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v1, "MediaFiles"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/flurry/sdk/fz$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fz$a;-><init>()V

    invoke-static {p0, v0}, Lcom/flurry/sdk/fo;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fz$a;)Lcom/flurry/sdk/fz;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/fo;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/high16 v0, -0x80000000

    sget-object v1, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VASTXmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v2, "VASTXmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not detect VAST version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
