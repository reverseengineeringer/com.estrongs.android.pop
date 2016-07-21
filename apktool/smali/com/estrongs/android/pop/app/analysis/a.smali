.class public Lcom/estrongs/android/pop/app/analysis/a;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/estrongs/android/pop/app/analysis/a;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Lcom/estrongs/android/pop/app/analysis/view/b;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/a;->i:Lcom/estrongs/android/pop/app/analysis/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->e:Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b;-><init>(Lcom/estrongs/android/pop/app/analysis/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->k:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;)Lcom/estrongs/android/a/b/a;
    .locals 9

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/estrongs/android/a/b/m;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    check-cast p1, Lcom/estrongs/android/a/b/m;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/m;->e()Ljava/util/Map;

    move-result-object v5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/h;

    instance-of v4, v3, Lcom/estrongs/android/a/b/f;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/estrongs/android/a/b/f;

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/f;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/estrongs/android/a/b/m;

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    move-object p1, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_8

    :cond_0
    const-string v1, "largefile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->a(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "catalog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->c()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "longtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->d(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "appcatalog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->f()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "sensitive_permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->g()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->e()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v1, "allfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->h(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v1, "apprelationfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v1, "allfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->h(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v1, "apprelationfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const-string v1, "allfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->h(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v1, "apprelationfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1a
    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    const-string v1, "allfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->h(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_1d
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_1e
    const-string v1, "apprelationfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_1f
    const-string v1, "similar_image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/a/b;->f(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a()Lcom/estrongs/android/pop/app/analysis/a;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/a;->i:Lcom/estrongs/android/pop/app/analysis/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/analysis/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/analysis/a;->i:Lcom/estrongs/android/pop/app/analysis/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/a;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/a;->i:Lcom/estrongs/android/pop/app/analysis/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/analysis/a;->i:Lcom/estrongs/android/pop/app/analysis/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/estrongs/android/a/b/m;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/m;->e()Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "cache"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Cache"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    :goto_0
    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v2, "internal_storage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Memory"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string v2, "little_open"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Associated"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string v2, "more_file"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "more_power"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Battery"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_4
    const-string v1, "appcatalog"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->f()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v1, v0, Lcom/estrongs/android/a/b/f;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/a/b/f;

    invoke-virtual {v1}, Lcom/estrongs/android/a/b/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/estrongs/fs/impl/c/d;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/estrongs/fs/impl/c/d;

    iget-object v1, v1, Lcom/estrongs/fs/impl/c/d;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

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

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_8

    :cond_0
    const-string v1, "largefile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->a(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "catalog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->c()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "longtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "appcatalog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->f()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "sensitive_permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->g()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->e()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_b
    const-string v1, "redundancy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->e(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v1, "newcreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "allfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->i(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v1, "apprelationfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->h(Ljava/lang/String;)Lcom/estrongs/android/a/b/d;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "similar_image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->f(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/a;)Lcom/estrongs/android/pop/app/analysis/view/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->j:Lcom/estrongs/android/pop/app/analysis/view/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->b:Landroid/content/Context;

    const v2, 0x7f0803e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->b:Landroid/content/Context;

    const v2, 0x7f0800f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080229

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/e;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/app/analysis/e;-><init>(Lcom/estrongs/android/pop/app/analysis/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080225

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->j:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/view/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a/a;->a()Lcom/estrongs/android/pop/app/ad/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->b()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "A_loading_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_loading_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->d:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/d;-><init>(Lcom/estrongs/android/pop/app/analysis/a;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/estrongs/android/pop/app/analysis/f;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;Lcom/estrongs/android/pop/app/analysis/j;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/f;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/analysis/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/bk;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/analysis/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    const-string v0, "/"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/estrongs/android/pop/app/analysis/view/b;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a;->j:Lcom/estrongs/android/pop/app/analysis/view/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->j:Lcom/estrongs/android/pop/app/analysis/view/b;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/c;-><init>(Lcom/estrongs/android/pop/app/analysis/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/b;->a(Lcom/estrongs/android/pop/app/analysis/view/h;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V
    .locals 2

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/a;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->f:Z

    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->j:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->f:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p4}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->e:Z

    return-void
.end method

.method public d()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a;->b()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->b:Landroid/content/Context;

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/a;->i:Lcom/estrongs/android/pop/app/analysis/a;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a;->f:Z

    return v0
.end method
