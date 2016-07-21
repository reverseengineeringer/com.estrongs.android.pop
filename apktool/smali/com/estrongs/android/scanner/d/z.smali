.class public Lcom/estrongs/android/scanner/d/z;
.super Lcom/estrongs/android/scanner/d/t;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Lcom/estrongs/android/scanner/d/t;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/z;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/z;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/z;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/z;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/scanner/a/d;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/scanner/d/ad;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/ad;-><init>(Lcom/estrongs/android/scanner/d/z;Lcom/estrongs/android/scanner/a/d;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/z;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add file to insert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/scanner/d/w;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/scanner/d/ac;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/ac;-><init>(Lcom/estrongs/android/scanner/d/z;Lcom/estrongs/android/scanner/d/w;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/z;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    const-string v1, "send store"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()V
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/scanner/d/z;->c:Ljava/util/Map;

    new-instance v1, Lcom/estrongs/android/scanner/d/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/scanner/d/aa;-><init>(Lcom/estrongs/android/scanner/d/z;)V

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v2, 0x1

    const-string v5, "pid"

    aput-object v5, v3, v2

    const/4 v2, 0x2

    const-string v5, "lastmodified"

    aput-object v5, v3, v2

    const/4 v2, 0x3

    const-string v5, "name"

    aput-object v5, v3, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit16 v8, v0, 0x3e8

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/z;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/scanner/a/d;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/scanner/d/ae;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/ae;-><init>(Lcom/estrongs/android/scanner/d/z;Lcom/estrongs/android/scanner/a/d;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/z;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add file to update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/estrongs/android/scanner/a/d;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/scanner/d/ab;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/ab;-><init>(Lcom/estrongs/android/scanner/d/z;Lcom/estrongs/android/scanner/a/d;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/z;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add file to remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
