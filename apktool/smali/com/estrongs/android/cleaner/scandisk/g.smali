.class public Lcom/estrongs/android/cleaner/scandisk/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/estrongs/android/cleaner/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/estrongs/android/cleaner/scandisk/g;-><init>(Lcom/estrongs/android/cleaner/f;Lcom/estrongs/android/cleaner/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/cleaner/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/cleaner/scandisk/g;-><init>(Lcom/estrongs/android/cleaner/f;Lcom/estrongs/android/cleaner/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/cleaner/f;Lcom/estrongs/android/cleaner/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/estrongs/android/cleaner/scandisk/g;->b:Lcom/estrongs/android/cleaner/f;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/estrongs/android/cleaner/f;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/cleaner/f;->a(Lcom/estrongs/android/cleaner/scandisk/h;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/g;->b:Lcom/estrongs/android/cleaner/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/g;->b:Lcom/estrongs/android/cleaner/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/cleaner/f;->a(Lcom/estrongs/android/cleaner/scandisk/h;)V

    goto :goto_0
.end method
