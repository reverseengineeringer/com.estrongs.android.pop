.class public Lcom/flurry/sdk/dq;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/flurry/sdk/dr;

.field private final d:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/dq$a;

.field private g:Lcom/flurry/sdk/s;

.field private h:Lcom/flurry/sdk/dr;

.field private i:Lcom/flurry/sdk/y;

.field private j:Lcom/flurry/sdk/au;

.field private k:Lcom/flurry/sdk/au;

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private volatile r:Z

.field private final s:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ln;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/dq;->r:Z

    new-instance v0, Lcom/flurry/sdk/dq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dq$1;-><init>(Lcom/flurry/sdk/dq;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->s:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/dq$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dq$5;-><init>(Lcom/flurry/sdk/dq;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->t:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/dq$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dq$6;-><init>(Lcom/flurry/sdk/dq;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->u:Lcom/flurry/sdk/kb;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSpace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v0, Lcom/flurry/sdk/dr;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/dr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->c:Lcom/flurry/sdk/dr;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->e:Ljava/util/TreeSet;

    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    iput-object v0, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/au;ILcom/flurry/sdk/fm;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/flurry/sdk/fm;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/flurry/sdk/kn;

    invoke-direct {v6}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {v6, v2}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const/16 v0, 0x4e20

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/kn;->d(I)V

    new-instance v0, Lcom/flurry/sdk/lc;

    invoke-direct {v0}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    new-instance v0, Lcom/flurry/sdk/dq$2;

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/dq$2;-><init>(Lcom/flurry/sdk/dq;Ljava/lang/String;Lcom/flurry/sdk/fm;ILcom/flurry/sdk/au;)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "preRender"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorCode"

    if-nez p2, :cond_0

    sget-object p2, Lcom/flurry/sdk/ba;->y:Lcom/flurry/sdk/ba;

    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-interface {v2}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/au;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-render: HTTP get for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->d(I)V

    new-instance v1, Lcom/flurry/sdk/lc;

    invoke-direct {v1}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    new-instance v1, Lcom/flurry/sdk/dq$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/flurry/sdk/dq$4;-><init>(Lcom/flurry/sdk/dq;Ljava/lang/String;Lcom/flurry/sdk/au;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/dq$a;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding fetch listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->s:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AssetStatusEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dq;->t:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AdResponseEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dq;->u:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing fetch listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->s:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->t:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->u:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;Ljava/lang/String;Lcom/flurry/sdk/al;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Lcom/flurry/sdk/al;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/dq;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/al;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/au;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected asset status change for asset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$11;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->d:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flurry/sdk/co;->t:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->o()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cj;

    iget v1, v1, Lcom/flurry/sdk/cj;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->o()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/co;->u:Ljava/util/Map;

    if-eqz v2, :cond_6

    const-string v3, "GROUP_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "GROUP_ID"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_6
    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->k:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iput-object v2, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dq;->k:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/co;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/co;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->u:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dq;->k:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/co;->u:Ljava/util/Map;

    iput-object v2, v1, Lcom/flurry/sdk/co;->u:Ljava/util/Map;

    :cond_7
    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    :goto_1
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$9;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->h()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->i()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->j()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->k()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dr;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->h:Lcom/flurry/sdk/dr;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->b:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    :cond_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$8;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->g()V

    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dr;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->c:Lcom/flurry/sdk/dr;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dq;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dq;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/ba;->u:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dq;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dq;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->m()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 6

    const-wide/16 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dq;->p:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dq;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->l:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/dq;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dq;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dq$a;->f:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$10;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->n()V

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic j(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->p()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dq;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dq;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->n:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/flurry/sdk/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->q()V

    return-void
.end method

.method static synthetic l(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/s;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->c:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    if-nez v0, :cond_1

    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "An auction is required, but there is no ad unit!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/ba;->c:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/dq$a;->d:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/sdk/co;->o:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting CSRTB auction timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->n:J

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dq;->k:Lcom/flurry/sdk/au;

    iget-object v0, p0, Lcom/flurry/sdk/dq;->c:Lcom/flurry/sdk/dr;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized m()V
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-interface {v0}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/ba;->d:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/lr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/ba;->w:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-object v3, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget v0, v0, Lcom/flurry/sdk/cj;->a:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/co;->t:Z

    sget-object v0, Lcom/flurry/sdk/dq$a;->c:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->l()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->d(I)Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->p:J

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->o()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_a
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/au;)Lcom/flurry/sdk/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget v1, v1, Lcom/flurry/sdk/co;->p:I

    int-to-long v4, v1

    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pre-caching required for ad, AdUnitCachedStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skip time limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    cmp-long v1, v4, v8

    if-lez v1, :cond_b

    iget-wide v6, p0, Lcom/flurry/sdk/dq;->o:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_b

    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting skip timer for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/flurry/sdk/dq;->o:J

    :cond_b
    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Pre-caching completed, ad may proceed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    if-nez v0, :cond_19

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/ba;->u:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    iget-wide v2, v2, Lcom/flurry/sdk/co;->o:J

    cmp-long v4, v2, v8

    if-lez v4, :cond_e

    iget-wide v4, p0, Lcom/flurry/sdk/dq;->p:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_e

    const/4 v4, 0x3

    sget-object v5, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting VAST resolve timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/dq;->p:J

    :cond_e
    iget-object v2, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-direct {p0, v2, v1, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;ILcom/flurry/sdk/fm;)V

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/flurry/sdk/ag;->b:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    cmp-long v0, v4, v8

    if-nez v0, :cond_10

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->n()V

    goto/16 :goto_1

    :cond_10
    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/flurry/sdk/dq;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_11

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "Skip timer expired"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->n()V

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Waiting for skip timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    cmp-long v0, v4, v8

    if-nez v0, :cond_13

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/dq;->n()V

    goto/16 :goto_1

    :cond_13
    iget v0, p0, Lcom/flurry/sdk/dq;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dq;->l:I

    if-le v0, v10, :cond_16

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Too many precaching attempts, precaching failed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->g:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Too many precaching attempts, precaching failed. Trying streaming now."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Do nothing. State change request tick must have started prepare."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/au;)I

    move-result v0

    if-lez v0, :cond_17

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " asset(s), attempt #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/flurry/sdk/dq;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "No assets to cache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Pre-caching not required for ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_19
    sget-object v0, Lcom/flurry/sdk/dq$a;->f:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$12;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$12;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized n()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/co;->g:Ljava/lang/String;

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching required for incomplete ad unit, skipping ad group -- adspace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    iget-object v0, p0, Lcom/flurry/sdk/dq;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdGroupSkipped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/dq;->l:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dq$a;->c:Lcom/flurry/sdk/dq$a;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/dq$a;->d:Lcom/flurry/sdk/dq$a;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/cj;

    move-object v7, v0

    new-instance v1, Lcom/flurry/sdk/b;

    sget-object v2, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)V

    invoke-static {v7, v1}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/cj;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    sget-object v3, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v7, v8

    :goto_1
    sget-object v1, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-interface {v3}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v5, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    if-ne v7, v9, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v2, Lcom/flurry/sdk/ba;->m:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move v7, v9

    goto :goto_1
.end method

.method private declared-synchronized p()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lt;->a()V

    sget-object v1, Lcom/flurry/sdk/dq$a;->f:Lcom/flurry/sdk/dq$a;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "Preparing ad"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-interface {v1}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v2, Lcom/flurry/sdk/ba;->d:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-interface {v3}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v5, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    iget-object v1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-interface {v1, v2}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/au;)V

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/cj;

    move-object v7, v0

    new-instance v1, Lcom/flurry/sdk/b;

    sget-object v2, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)V

    invoke-static {v7, v1}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/cj;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v9

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    sget-object v4, Lcom/flurry/sdk/az;->i:Lcom/flurry/sdk/az;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/az;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/flurry/sdk/az;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v8

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    sget-object v1, Lcom/flurry/sdk/dq$a;->g:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private declared-synchronized q()V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dq$a;->h:Lcom/flurry/sdk/dq$a;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "Pre-rendering ad"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v6, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->d(I)Lcom/flurry/sdk/fm;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/flurry/sdk/fm;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/flurry/sdk/fm;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->f:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "Precaching required for ad, copying assets"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/au;)Lcom/flurry/sdk/ag;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetsAvailable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Could not copy required ad assets"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetCopyFailed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->h:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Ad assets incomplete"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetsIncomplete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/ba;->i:Lcom/flurry/sdk/ba;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)Z

    :cond_6
    sget-object v0, Lcom/flurry/sdk/bb;->O:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-interface {v2}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v4, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget v1, v0, Lcom/flurry/sdk/cj;->a:I

    if-ne v1, v7, :cond_8

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v3, "Binding is HTML_URL, pre-render required"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-wide v2, v1, Lcom/flurry/sdk/co;->o:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    const/4 v1, 0x3

    sget-object v4, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting pre-render timeout for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/dq;->q:J

    :cond_7
    iget-object v1, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    iget-object v0, v0, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/au;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-static {v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->c:Lcom/flurry/sdk/dr;

    invoke-virtual {v0}, Lcom/flurry/sdk/dr;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchAd: adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dq$a;->g:Lcom/flurry/sdk/dq$a;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->f:Lcom/flurry/sdk/dq$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iput-object p3, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    iput-object p2, p0, Lcom/flurry/sdk/dq;->h:Lcom/flurry/sdk/dr;

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not fetch)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/ba;->b:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/flurry/sdk/dq$a;->b:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting ad request timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->m:J

    :cond_5
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    const-string v2, "AdCacheState: Cache empty. Fetching new ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->h:Lcom/flurry/sdk/dr;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    iget-object v2, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdCacheState: Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v3}, Lcom/flurry/sdk/y;->b()I

    move-result v3

    iget-object v4, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ads in cache. Using 1 now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    sget-object v0, Lcom/flurry/sdk/dq$a;->e:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$7;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dq;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dq;->h:Lcom/flurry/sdk/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dq;->h:Lcom/flurry/sdk/dr;

    invoke-virtual {v0}, Lcom/flurry/sdk/dr;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch finished for adObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->c:Lcom/flurry/sdk/dr;

    invoke-virtual {v0}, Lcom/flurry/sdk/dr;->b()V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dq$a;->a:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    iget-object v1, p0, Lcom/flurry/sdk/dq;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Ljava/util/Collection;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dq;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->h:Lcom/flurry/sdk/dr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->i:Lcom/flurry/sdk/y;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->j:Lcom/flurry/sdk/au;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->k:Lcom/flurry/sdk/au;

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/dq;->l:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->n:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->o:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->p:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dq;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dq$a;->h:Lcom/flurry/sdk/dq$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$3;-><init>(Lcom/flurry/sdk/dq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
