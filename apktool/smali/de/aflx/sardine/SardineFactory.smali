.class public Lde/aflx/sardine/SardineFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin()Lde/aflx/sardine/Sardine;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lde/aflx/sardine/SardineFactory;->begin(Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;

    move-result-object v0

    return-object v0
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lde/aflx/sardine/SardineFactory;->begin(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)Lde/aflx/sardine/Sardine;

    move-result-object v0

    return-object v0
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)Lde/aflx/sardine/Sardine;
    .locals 1

    new-instance v0, Lde/aflx/sardine/impl/SardineImpl;

    invoke-direct {v0, p0, p1, p2}, Lde/aflx/sardine/impl/SardineImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)V

    return-object v0
.end method
