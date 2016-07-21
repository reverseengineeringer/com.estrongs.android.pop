.class public Lorg/simpleframework/xml/core/Persister;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/Serializer;


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final manager:Lorg/simpleframework/xml/core/SessionManager;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, p3}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    new-instance v0, Lorg/simpleframework/xml/core/SessionManager;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SessionManager;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {p4}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iput-object p4, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Z
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Z
    .locals 4

    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Z

    move-result v0

    return v0
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    return-void
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    .locals 4

    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/File;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/File;",
            "Z)TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/Reader;",
            "Z)TT;"
        }
    .end annotation

    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/File;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/File;",
            "Z)TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Reader;",
            "Z)TT;"
        }
    .end annotation

    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/File;Z)Z
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public validate(Ljava/lang/Class;Ljava/io/InputStream;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z
    .locals 1

    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/Reader;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z
    .locals 1

    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/lang/String;Z)Z
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method

.method public write(Ljava/lang/Object;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "utf-8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-static {p2, v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method public write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager;->open()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v0
.end method
