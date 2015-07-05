.class public Lcom/estrongs/android/pop/app/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/b/r;-><init>(Ljava/util/Map;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/app/b/q;->a(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/q;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/q;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/pop/app/b/v;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/android/pop/app/b/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/v;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/estrongs/fs/i;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/estrongs/fs/h;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/i;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2
.end method
