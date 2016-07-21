.class public Lcom/estrongs/fs/impl/n/b;
.super Lcom/estrongs/fs/impl/i/a;


# static fields
.field private static a:Lcom/estrongs/fs/impl/n/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/i/a;-><init>(I)V

    return-void
.end method

.method public static a()Lcom/estrongs/fs/impl/n/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/n/b;->a:Lcom/estrongs/fs/impl/n/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/n/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/n/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/n/b;->a:Lcom/estrongs/fs/impl/n/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/n/b;->a:Lcom/estrongs/fs/impl/n/b;

    return-object v0
.end method

.method private a(Lcom/estrongs/fs/h;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/estrongs/android/ui/topclassify/aa;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/android/ui/topclassify/aa;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/app/c/j;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/n/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/n/a;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/estrongs/android/ui/topclassify/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/topclassify/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/c;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/n/b;->a(Lcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/estrongs/android/ui/topclassify/aa;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/topclassify/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/aa;->a()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/fs/impl/i/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/estrongs/fs/impl/n/c;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/fs/impl/n/c;-><init>(Lcom/estrongs/fs/impl/n/b;Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/impl/n/c;->a(Lcom/estrongs/fs/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/fs/impl/i/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
