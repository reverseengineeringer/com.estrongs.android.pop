.class public Lcom/estrongs/android/b/a/f;
.super Ljava/lang/Object;


# static fields
.field static d:Lcom/estrongs/android/b/a/f;


# instance fields
.field a:Lcom/estrongs/android/b/a/h;

.field b:Lcom/estrongs/android/b/a/k;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/b/a/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/b/a/f;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/f;-><init>()V

    sput-object v0, Lcom/estrongs/android/b/a/f;->d:Lcom/estrongs/android/b/a/f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/f;->a:Lcom/estrongs/android/b/a/h;

    iput-object v0, p0, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/f;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/b/a/b/d;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/f;->a(Lcom/estrongs/android/b/a/o;)V

    new-instance v0, Lcom/estrongs/android/b/a/b/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/b/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/f;->a(Lcom/estrongs/android/b/a/o;)V

    new-instance v0, Lcom/estrongs/android/b/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/b/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/f;->a(Lcom/estrongs/android/b/a/o;)V

    new-instance v0, Lcom/estrongs/android/b/a/b/g;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/b/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/f;->a(Lcom/estrongs/android/b/a/o;)V

    new-instance v0, Lcom/estrongs/android/pop/app/a/a/e;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/a/a/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/f;->a(Lcom/estrongs/android/b/a/o;)V

    return-void
.end method

.method public static a()Lcom/estrongs/android/b/a/f;
    .locals 1

    sget-object v0, Lcom/estrongs/android/b/a/f;->d:Lcom/estrongs/android/b/a/f;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/b/a/a;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/b/a/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/b/a/f;->a:Lcom/estrongs/android/b/a/h;

    iget-object v0, v0, Lcom/estrongs/android/b/a/h;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/estrongs/android/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/i;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lcom/estrongs/android/b/a/i;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/s;->c()Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/b/a/a/g;

    const-string v2, "junk"

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/b/a/a/g;-><init>(Ljava/lang/String;Lcom/estrongs/android/k/d;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/b/a/e;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/estrongs/android/b/a/n;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/n;-><init>()V

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/n;->a()V

    iget-object v4, p0, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iput-object v4, p0, Lcom/estrongs/android/b/a/f;->a:Lcom/estrongs/android/b/a/h;

    iget-object v0, v0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iput-object v0, p0, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/b/a/k;->a(Ljava/lang/String;)Lcom/estrongs/android/b/a/j;

    move-result-object v0

    if-nez v0, :cond_f

    if-nez p2, :cond_2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/b/a/k;->a(Ljava/lang/String;)Lcom/estrongs/android/b/a/j;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, v4, Lcom/estrongs/android/b/a/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v4, Lcom/estrongs/android/b/a/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/b/a/a;

    array-length v7, v0

    if-ne v7, v2, :cond_5

    const/4 v7, 0x0

    aget-object v0, v0, v7

    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :try_start_4
    array-length v7, v0

    if-le v7, v2, :cond_e

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v0, v0, v7

    goto :goto_3

    :cond_6
    iget-boolean v0, v4, Lcom/estrongs/android/b/a/j;->c:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/estrongs/android/b/a/e;

    invoke-direct {v0, v5}, Lcom/estrongs/android/b/a/e;-><init>(Ljava/util/List;)V

    monitor-exit p0

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    iget-object v6, v0, Lcom/estrongs/android/b/a/a;->b:Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-direct {p0, v0, v4, v1}, Lcom/estrongs/android/b/a/f;->a(Lcom/estrongs/android/b/a/a;Ljava/util/List;Ljava/util/HashSet;)V

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ad"

    if-ne v0, v5, :cond_b

    move v0, v2

    :goto_6
    new-instance v1, Lcom/estrongs/android/b/a/a;

    const-string v2, "charge_boost"

    const-string v3, "charge_boost"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/estrongs/android/b/a/e;

    invoke-direct {v0, v4}, Lcom/estrongs/android/b/a/e;-><init>(Ljava/util/List;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto :goto_6

    :cond_e
    move-object v0, v1

    goto/16 :goto_3

    :cond_f
    move-object v4, v0

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/android/b/a/o;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/o;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/b/a/o;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/b/a/f;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/estrongs/android/b/a/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/b/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/b/a/a;

    const-string v1, "pandect"

    const-string v2, "pandect"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/b/a/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->a(I)V

    invoke-virtual {v0, p2}, Lcom/estrongs/android/b/a/a;->d(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    invoke-direct {p0, v8}, Lcom/estrongs/android/b/a/f;->a(Ljava/util/List;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "largefile"

    const v2, 0x7f08038d

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "redundancy"

    const v2, 0x7f080603

    const v3, 0x7f0800e8

    const v4, 0x7f0200f9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "duplicate"

    const v2, 0x7f0802aa

    const v3, 0x7f0800d1

    const v4, 0x7f0200f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "newcreate"

    const v2, 0x7f080462

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/d;

    const-string v1, "junk"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/b/a/a/d;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "catalog"

    const v2, 0x7f080198

    const v3, 0x7f0800cb

    const v4, 0x7f0200f2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/b/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "appcatalog"

    const v2, 0x7f080196

    const v3, 0x7f0800cd

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v0, "charge_boost"

    const-string v1, "charge_boost"

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lcom/estrongs/android/b/a/a;->a(I)V

    const/4 v1, 0x1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ad"

    if-ne v0, v4, :cond_3

    const/4 v0, 0x2

    :goto_2
    invoke-interface {v8, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    return-object v8

    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->a(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v8}, Lcom/estrongs/android/b/a/f;->a(Ljava/util/List;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/a;

    const-string v1, "sensitive_permission"

    const v2, 0x7f080135

    invoke-direct {v0, v1, v2, p2}, Lcom/estrongs/android/b/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/a;

    const-string v1, "cache"

    const v2, 0x7f08010f

    invoke-direct {v0, v1, v2, p2}, Lcom/estrongs/android/b/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f080196

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const v0, 0x7f080197

    :cond_7
    new-instance v1, Lcom/estrongs/android/b/a/a/a;

    const-string v2, "appcatalog"

    invoke-direct {v1, v2, v0, p2}, Lcom/estrongs/android/b/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/a;

    const-string v1, "internal_storage"

    const v2, 0x7f08012d

    invoke-direct {v0, v1, v2, p2}, Lcom/estrongs/android/b/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v8}, Lcom/estrongs/android/b/a/f;->a(Ljava/util/List;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "redundancy"

    const v2, 0x7f080603

    const v3, 0x7f0800e9

    const v4, 0x7f0200f9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "duplicate"

    const v2, 0x7f0802aa

    const v3, 0x7f0800d1

    const v4, 0x7f0200f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "newcreate"

    const v2, 0x7f080462

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "allfile"

    const v2, 0x7f080198

    const v3, 0x7f0800cb

    const v4, 0x7f0200f2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "apprelationfile"

    const v2, 0x7f080196

    const v3, 0x7f0800cd

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v8}, Lcom/estrongs/android/b/a/f;->a(Ljava/util/List;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "redundancy"

    const v2, 0x7f080603

    const v3, 0x7f0800e9

    const v4, 0x7f0200f9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "duplicate"

    const v2, 0x7f0802aa

    const v3, 0x7f0800d1

    const v4, 0x7f0200f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "newcreate"

    const v2, 0x7f080462

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "allfile"

    const v2, 0x7f080198

    const v3, 0x7f0800cb

    const v4, 0x7f0200f2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "apprelationfile"

    const v2, 0x7f080196

    const v3, 0x7f0800cd

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v8}, Lcom/estrongs/android/b/a/f;->a(Ljava/util/List;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "redundancy"

    const v2, 0x7f080603

    const v3, 0x7f0800e9

    const v4, 0x7f0200f9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "duplicate"

    const v2, 0x7f0802aa

    const v3, 0x7f0800d1

    const v4, 0x7f0200f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "newcreate"

    const v2, 0x7f080462

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "allfile"

    const v2, 0x7f080198

    const v3, 0x7f0800cb

    const v4, 0x7f0200f2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "apprelationfile"

    const v2, 0x7f080196

    const v3, 0x7f0800cd

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_c
    invoke-direct {p0, v8}, Lcom/estrongs/android/b/a/f;->a(Ljava/util/List;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "redundancy"

    const v2, 0x7f080603

    const v3, 0x7f0800e9

    const v4, 0x7f0200f9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "duplicate"

    const v2, 0x7f0802aa

    const v3, 0x7f0800d1

    const v4, 0x7f0200f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "newcreate"

    const v2, 0x7f080462

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "allfile"

    const v2, 0x7f080198

    const v3, 0x7f0800cb

    const v4, 0x7f0200f2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "apprelationfile"

    const v2, 0x7f080196

    const v3, 0x7f0800cd

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/b/a/a/b;

    const-string v1, "similar_image"

    const v2, 0x7f08065e

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/b;-><init>(Ljava/lang/String;IIIZZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/b/a/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/b/a/g;-><init>(Lcom/estrongs/android/b/a/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/g;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
