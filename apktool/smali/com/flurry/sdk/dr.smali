.class public Lcom/flurry/sdk/dr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kk",
            "<",
            "Lcom/flurry/sdk/cm;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kk",
            "<",
            "Lcom/flurry/sdk/cl;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/dr$a;

.field private g:Lcom/flurry/sdk/s;

.field private h:Lcom/flurry/sdk/au;

.field private i:Lcom/flurry/sdk/y;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/jg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/kk;

    const-string v1, "ad response"

    new-instance v2, Lcom/flurry/sdk/du;

    invoke-direct {v2}, Lcom/flurry/sdk/du;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kk;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lb;)V

    iput-object v0, p0, Lcom/flurry/sdk/dr;->b:Lcom/flurry/sdk/kk;

    new-instance v0, Lcom/flurry/sdk/kk;

    const-string v1, "ad request"

    new-instance v2, Lcom/flurry/sdk/dt;

    invoke-direct {v2}, Lcom/flurry/sdk/dt;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kk;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lb;)V

    iput-object v0, p0, Lcom/flurry/sdk/dr;->c:Lcom/flurry/sdk/kk;

    new-instance v0, Lcom/flurry/sdk/dr$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dr$1;-><init>(Lcom/flurry/sdk/dr;)V

    iput-object v0, p0, Lcom/flurry/sdk/dr;->k:Lcom/flurry/sdk/kb;

    iput-object p1, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dr;->e:Ljava/util/List;

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    iput-object v0, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-direct {p0}, Lcom/flurry/sdk/dr;->d()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dr;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/dr$a;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding request listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dr;->k:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing request listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dr;->k:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dr;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dr;->e()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dr;Lcom/flurry/sdk/dr$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dr;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)V
    .locals 22

    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/flurry/sdk/dr$a;->c:Lcom/flurry/sdk/dr$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v4, Lcom/flurry/sdk/dr$a;->d:Lcom/flurry/sdk/dr$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr$a;)V

    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/s;->g()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/s;->m()Lcom/flurry/sdk/e;

    move-result-object v11

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/r;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/flurry/sdk/cq;->b:Lcom/flurry/sdk/cq;

    move-object v10, v4

    :goto_1
    invoke-static {}, Lcom/flurry/sdk/lr;->j()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/lr;->c(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {}, Lcom/flurry/sdk/lr;->k()Landroid/util/Pair;

    move-result-object v6

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    if-lez v6, :cond_11

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/lr;->a(I)I

    move-result v4

    move v6, v4

    :goto_2
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/lr;->a(I)I

    move-result v4

    :goto_3
    new-instance v12, Lcom/flurry/sdk/cp;

    invoke-direct {v12}, Lcom/flurry/sdk/cp;-><init>()V

    iput v9, v12, Lcom/flurry/sdk/cp;->d:I

    iput v8, v12, Lcom/flurry/sdk/cp;->c:I

    iput v6, v12, Lcom/flurry/sdk/cp;->b:I

    iput v4, v12, Lcom/flurry/sdk/cp;->a:I

    invoke-static {}, Lcom/flurry/sdk/lr;->e()F

    move-result v4

    iput v4, v12, Lcom/flurry/sdk/cp;->e:F

    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v4

    iput-object v4, v12, Lcom/flurry/sdk/cp;->f:Lcom/flurry/sdk/dc;

    invoke-static {}, Lcom/flurry/sdk/fd;->c()Lcom/flurry/sdk/cx;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    new-instance v15, Lcom/flurry/sdk/di;

    invoke-direct {v15}, Lcom/flurry/sdk/di;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v15, Lcom/flurry/sdk/di;->c:Ljava/util/List;

    const/4 v4, -0x1

    iput v4, v15, Lcom/flurry/sdk/di;->a:I

    const/4 v4, -0x1

    iput v4, v15, Lcom/flurry/sdk/di;->b:I

    const/4 v6, 0x0

    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v4

    const-string v5, "Age"

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/lk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v5

    const-string v7, "Gender"

    invoke-virtual {v5, v7}, Lcom/flurry/sdk/lk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/Byte;->intValue()I

    move-result v5

    iput v5, v15, Lcom/flurry/sdk/di;->b:I

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/flurry/sdk/fj;->a(Ljava/lang/Long;)I

    move-result v4

    iput v4, v15, Lcom/flurry/sdk/di;->a:I

    :cond_2
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/flurry/sdk/e;->getEnableTestAds()Z

    move-result v4

    move v9, v4

    :goto_4
    invoke-static {}, Lcom/flurry/sdk/fd;->e()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Lcom/flurry/sdk/fd;->f()Ljava/util/List;

    move-result-object v17

    sget-object v4, Lcom/flurry/sdk/cq;->d:Lcom/flurry/sdk/cq;

    sget-object v5, Lcom/flurry/sdk/cq;->d:Lcom/flurry/sdk/cq;

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/cq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/flurry/sdk/fd;->g()Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    :goto_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/flurry/sdk/e;->getFixedAdId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "FLURRY_VIEWER"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v4

    iget-boolean v5, v4, Lcom/flurry/sdk/co;->t:Z

    iget-object v4, v4, Lcom/flurry/sdk/co;->u:Ljava/util/Map;

    move-object v6, v4

    move v7, v5

    :goto_6
    new-instance v11, Lcom/flurry/sdk/cy;

    invoke-direct {v11}, Lcom/flurry/sdk/cy;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/flurry/sdk/x;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p1

    check-cast v0, Lcom/flurry/sdk/x;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/flurry/sdk/x;->y()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/flurry/sdk/x;->z()Ljava/util/List;

    move-result-object v4

    :cond_4
    if-nez v5, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v11, Lcom/flurry/sdk/cy;->a:Ljava/util/List;

    :goto_7
    if-nez v4, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v11, Lcom/flurry/sdk/cy;->b:Ljava/util/List;

    :goto_8
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/o;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const-string v4, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    :goto_9
    :try_start_2
    new-instance v19, Lcom/flurry/sdk/cl;

    invoke-direct/range {v19 .. v19}, Lcom/flurry/sdk/cl;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/flurry/sdk/cl;->a:J

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jt;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->e:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/flurry/sdk/cl;->f:J

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/flurry/sdk/cl;->g:Ljava/util/List;

    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/flurry/sdk/cl;->h:Lcom/flurry/sdk/cx;

    move-object/from16 v0, v19

    iput-boolean v9, v0, Lcom/flurry/sdk/cl;->i:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/dr;->e:Ljava/util/List;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->j:Ljava/util/List;

    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/flurry/sdk/cl;->k:Lcom/flurry/sdk/cp;

    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/ji;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->l:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/ji;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jo;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->n:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jo;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->o:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/flurry/sdk/cl;->p:Ljava/util/Map;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/flurry/sdk/cl;->q:Z

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/je;->l()Lcom/flurry/sdk/jl$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jl$a;->a()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/flurry/sdk/cl;->r:I

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    move-object/from16 v0, v19

    iput-object v8, v0, Lcom/flurry/sdk/cl;->t:Ljava/util/List;

    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jf;->e()Z

    move-result v4

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/flurry/sdk/cl;->u:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->v:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/flurry/sdk/cl;->w:Ljava/util/List;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/i;->s()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->x:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/flurry/sdk/cl;->y:Lcom/flurry/sdk/di;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/i;->m()Lcom/flurry/sdk/cs;

    move-result-object v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/flurry/sdk/cl;->z:Z

    invoke-static {}, Lcom/flurry/sdk/fd;->d()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->A:Ljava/util/List;

    move-object/from16 v0, v19

    iput-boolean v7, v0, Lcom/flurry/sdk/cl;->B:Z

    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/flurry/sdk/cl;->C:Ljava/util/Map;

    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/flurry/sdk/cl;->D:Lcom/flurry/sdk/cy;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/flurry/sdk/cl;->E:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/lq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/cl;->F:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/dr;->c:Lcom/flurry/sdk/kk;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/kk;->a(Ljava/lang/Object;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    new-instance v5, Lcom/flurry/sdk/kn;

    invoke-direct {v5}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const/16 v6, 0x4e20

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/kn;->d(I)V

    sget-object v6, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-flurry"

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v7, "application/x-flurry"

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "FM-Checksum"

    invoke-static {v4}, Lcom/flurry/sdk/kk;->c([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/flurry/sdk/kx;

    invoke-direct {v6}, Lcom/flurry/sdk/kx;-><init>()V

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/lb;)V

    new-instance v6, Lcom/flurry/sdk/kx;

    invoke-direct {v6}, Lcom/flurry/sdk/kx;-><init>()V

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    invoke-virtual {v5, v4}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V

    new-instance v4, Lcom/flurry/sdk/dr$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/flurry/sdk/dr$4;-><init>(Lcom/flurry/sdk/dr;Lcom/flurry/sdk/s;)V

    invoke-virtual {v5, v4}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/x;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v4

    const-string v6, "nativeAdRequest"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    :cond_5
    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_6
    :try_start_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/u;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/flurry/sdk/cq;->c:Lcom/flurry/sdk/cq;

    move-object v10, v4

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/x;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/flurry/sdk/cq;->e:Lcom/flurry/sdk/cq;

    move-object v10, v4

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/flurry/sdk/cq;->a:Lcom/flurry/sdk/cq;

    move-object v10, v4

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    goto/16 :goto_5

    :cond_a
    iput-object v5, v11, Lcom/flurry/sdk/cy;->a:Ljava/util/List;

    goto/16 :goto_7

    :cond_b
    iput-object v4, v11, Lcom/flurry/sdk/cy;->b:Ljava/util/List;

    goto/16 :goto_8

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v4

    const/4 v5, 0x5

    sget-object v6, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ad request failed with exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/dr;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_d
    move-object v5, v4

    goto/16 :goto_9

    :cond_e
    move-object v6, v4

    move v7, v5

    goto/16 :goto_6

    :cond_f
    move v9, v6

    goto/16 :goto_4

    :cond_10
    move v4, v5

    goto/16 :goto_3

    :cond_11
    move v6, v4

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/flurry/sdk/dr;)Lcom/flurry/sdk/s;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dr;->g:Lcom/flurry/sdk/s;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/dr;)Lcom/flurry/sdk/au;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dr;->h:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/dr;)Lcom/flurry/sdk/kk;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dr;->b:Lcom/flurry/sdk/kk;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dr;->i:Lcom/flurry/sdk/y;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dr;->g:Lcom/flurry/sdk/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dr;->h:Lcom/flurry/sdk/au;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/dr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dr$a;->b:Lcom/flurry/sdk/dr$a;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    const-string v2, "Reported ids retrieved; request may continue"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/dr$a;->c:Lcom/flurry/sdk/dr$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dr$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dr$3;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/flurry/sdk/dr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 7

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dr$a;->e:Lcom/flurry/sdk/dr$a;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v3

    iget-object v1, v3, Lcom/flurry/sdk/co;->e:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/flurry/sdk/co;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cv;

    new-instance v6, Lcom/flurry/sdk/be;

    invoke-direct {v6, v1}, Lcom/flurry/sdk/be;-><init>(Lcom/flurry/sdk/cv;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/flurry/sdk/bf;->a(Lcom/flurry/sdk/be;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v5, v3, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cj;

    iget-object v1, v1, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/fo;->a(Ljava/lang/String;)Lcom/flurry/sdk/fm;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fm;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/fm;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ad;->a(Lcom/flurry/sdk/au;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/flurry/sdk/au;->a(ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling ad response for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/flurry/sdk/dr;->i:Lcom/flurry/sdk/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/sdk/dr;->i:Lcom/flurry/sdk/y;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Ljava/util/Collection;)V

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dr$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dr$5;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    :cond_7
    invoke-direct {p0}, Lcom/flurry/sdk/dr;->g()V

    invoke-direct {p0}, Lcom/flurry/sdk/dr;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    iput-object p0, v0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ds;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/flurry/sdk/ds;->c:Ljava/util/List;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/ka;)V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/dr;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dr;->f()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/dr;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAd: adSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    iget-object v1, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dr$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAds: request pending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dr;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (requestAds will fail)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/dr;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/flurry/sdk/dr;->g:Lcom/flurry/sdk/s;

    iput-object p3, p0, Lcom/flurry/sdk/dr;->h:Lcom/flurry/sdk/au;

    iput-object p2, p0, Lcom/flurry/sdk/dr;->i:Lcom/flurry/sdk/y;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()V

    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jf;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dr$a;->c:Lcom/flurry/sdk/dr$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dr$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dr$2;-><init>(Lcom/flurry/sdk/dr;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dr;->a:Ljava/lang/String;

    const-string v2, "No reported ids yet; waiting"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/dr$a;->b:Lcom/flurry/sdk/dr$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dr;->d()V

    return-void
.end method
