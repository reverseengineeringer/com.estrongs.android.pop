.class public abstract Lcom/estrongs/android/scanner/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/c/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/estrongs/android/scanner/d/z;

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/scanner/d/z;

    invoke-direct {v0, p2}, Lcom/estrongs/android/scanner/d/z;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lcom/estrongs/android/scanner/c/e;->c:I

    return-void
.end method

.method private a(Lcom/estrongs/android/scanner/a/d;)I
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/d;->f()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/scanner/a/d;->a(J)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/scanner/a/d;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/estrongs/android/scanner/a/d;->c(I)V

    iget-object v3, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/a/d;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/scanner/d/z;->a(J)V

    iget-object v3, p0, Lcom/estrongs/android/scanner/c/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove dirty file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method private b(Lcom/estrongs/android/scanner/a/f;)V
    .locals 4

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/scanner/d/z;->b(J)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/scanner/a/c;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/a/c;->e()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/estrongs/android/scanner/a/d;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/scanner/a/f;Lcom/estrongs/android/scanner/a/d;)Lcom/estrongs/android/scanner/a/d;
    .locals 0

    return-object p2
.end method

.method public a(Lcom/estrongs/android/scanner/a/a;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pid IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->c()I

    move-result v0

    const/16 v5, 0xf

    if-ne v0, v5, :cond_3

    const-string v0, "groupname"

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isLogPath"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/scanner/d/z;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    const/16 v5, 0x10

    if-ne v0, v5, :cond_4

    const-string v1, "groupname"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isLogPath"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    const/16 v5, 0xb

    if-ne v0, v5, :cond_5

    const-string v0, "pathtype"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_5
    const/16 v5, 0xc

    if-ne v0, v5, :cond_6

    const-string v0, "pathtype"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_6
    const/16 v5, 0xd

    if-ne v0, v5, :cond_7

    const-string v0, "groupname"

    const-string v2, "Download"

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isLogPath"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_7
    const/16 v5, 0xe

    if-ne v0, v5, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->f()Z

    move-result v5

    if-eqz v0, :cond_8

    const-string v6, "groupname"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v6, "isLogPath"

    if-eqz v5, :cond_9

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method public final a(Lcom/estrongs/android/scanner/a/f;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->a:Ljava/lang/String;

    const-string v1, "Receive the finish msg!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/w;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/c/e;->b(Lcom/estrongs/android/scanner/a/f;)V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/scanner/c/e;->b(Lcom/estrongs/android/scanner/a/f;Lcom/estrongs/android/scanner/a/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/scanner/c/e;->a(Lcom/estrongs/android/scanner/a/f;Lcom/estrongs/android/scanner/a/d;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/scanner/c/e;->a(Lcom/estrongs/android/scanner/a/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/a/d;->c(I)V

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/a/c;)J

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/a/c;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/scanner/c/e;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/estrongs/android/scanner/a/g;)V
    .locals 3

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->b()Lcom/estrongs/android/scanner/d/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/w;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/estrongs/android/scanner/c/e;->b(Lcom/estrongs/android/scanner/a/g;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/scanner/c/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/c/f;-><init>(Lcom/estrongs/android/scanner/c/e;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/e;->e:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/z;->d()V

    :cond_0
    return-void
.end method

.method protected b(Lcom/estrongs/android/scanner/a/g;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/scanner/c/e;->c(Lcom/estrongs/android/scanner/a/g;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/c/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->a()Lcom/estrongs/android/scanner/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync trash file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/a/d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/scanner/a/d;->d(J)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/scanner/a/d;->b(J)V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync new file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/a/d;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/scanner/c/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync old file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/e;->b:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/a/d;)V

    goto/16 :goto_0
.end method

.method protected b(Lcom/estrongs/android/scanner/a/f;Lcom/estrongs/android/scanner/a/d;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/estrongs/android/scanner/a/d;->k()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/scanner/c/e;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/estrongs/android/scanner/a/g;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->a()Lcom/estrongs/android/scanner/a/c;

    move-result-object v0

    instance-of v2, v0, Lcom/estrongs/android/scanner/a/d;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->k()I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/scanner/c/e;->c:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
