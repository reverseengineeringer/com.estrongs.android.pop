.class public Lcom/estrongs/android/cleaner/scandisk/a/b;
.super Lcom/estrongs/android/cleaner/scandisk/a/e;


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/scandisk/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0801c6

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/cleaner/scandisk/a/e;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V

    const-string v0, "AD Junk"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->h:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->i:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/estrongs/android/cleaner/scandisk/a;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->l:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->n:Z

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->l:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/scandisk/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->n:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/estrongs/android/cleaner/scandisk/b;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->n:Z

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u77e5\u5e7f\u544a"

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/estrongs/android/cleaner/scandisk/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Unknown AD"

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/cleaner/h;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->c:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/h;->a(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(I)V

    invoke-virtual {v0, p2}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-static {p2}, Lcom/estrongs/android/cleaner/j;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/cleaner/scandisk/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method protected a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    invoke-virtual {p1, v4}, Lcom/estrongs/android/cleaner/h;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/b;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v1, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method protected a(Lcom/estrongs/android/cleaner/scandisk/i;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public b(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/cleaner/scandisk/a/e;->b(Lcom/estrongs/android/cleaner/scandisk/h;)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "AD Junk"

    return-object v0
.end method
