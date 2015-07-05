.class public Lorg/simpleframework/xml/filter/MapFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/filter/MapFilter;-><init>(Ljava/util/Map;Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/simpleframework/xml/filter/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    iput-object p1, p0, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
