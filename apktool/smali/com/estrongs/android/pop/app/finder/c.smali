.class public Lcom/estrongs/android/pop/app/finder/c;
.super Lcom/estrongs/fs/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/finder/c;-><init>(Lcom/estrongs/fs/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/i;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/i;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/c;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/f/w;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/w;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/c;->a(Lcom/estrongs/fs/i;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/c;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/finder/c;->e:Z

    return-void
.end method

.method public b(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/f/s;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/s;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/c;->a(Lcom/estrongs/fs/i;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/c;->b:Ljava/util/List;

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;->Hidden_file:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/c;->a(Z)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;->System_file:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/c;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/finder/data/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/c;->a(Lcom/estrongs/fs/i;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;->Media_file:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/app/finder/data/b;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/finder/data/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/c;->a(Lcom/estrongs/fs/i;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/c;->e:Z

    return v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/c;->d:Ljava/util/List;

    return-void
.end method
