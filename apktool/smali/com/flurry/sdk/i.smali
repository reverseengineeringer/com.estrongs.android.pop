.class public Lcom/flurry/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kj;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/jv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/dp;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/o;

.field private e:Lcom/flurry/sdk/z;

.field private f:Lcom/flurry/sdk/q;

.field private g:Lcom/flurry/sdk/w;

.field private h:Lcom/flurry/sdk/k;

.field private i:Lcom/flurry/sdk/dl;

.field private j:Lcom/flurry/sdk/dk;

.field private k:Lcom/flurry/sdk/m;

.field private l:Lcom/flurry/sdk/bf;

.field private m:Lcom/flurry/sdk/ab;

.field private n:Ljava/io/File;

.field private o:Ljava/io/File;

.field private p:Lcom/flurry/sdk/jz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/be;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Lcom/flurry/sdk/jz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/af;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Lcom/flurry/sdk/cs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/i$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/i$1;-><init>(Lcom/flurry/sdk/i;)V

    iput-object v0, p0, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/i$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/i$2;-><init>(Lcom/flurry/sdk/i;)V

    iput-object v0, p0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/kb;

    return-void
.end method

.method private declared-synchronized A()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Loading FreqCap data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->p:Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    iget-object v2, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/bf;->a(Lcom/flurry/sdk/be;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/i;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Legacy FreqCap data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/l;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/be;

    iget-object v2, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/bf;->a(Lcom/flurry/sdk/be;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/i;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/flurry/sdk/i;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized B()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Loading CachedAsset data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->q:Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/af;

    iget-object v2, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/af;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/i;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Legacy CachedAsset data found, deleting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/i;Lcom/flurry/sdk/cs;)Lcom/flurry/sdk/cs;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/i;->r:Lcom/flurry/sdk/cs;

    return-object p1
.end method

.method private a(Lcom/flurry/sdk/lf;)Lcom/flurry/sdk/dx;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/dx;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lf;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dx;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/i;
    .locals 3

    const-class v1, Lcom/flurry/sdk/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/i;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kj;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/q;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/q;

    return-object v0
.end method

.method private declared-synchronized a(JJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Precaching: initing from FlurryAdModule"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/ab;->a(JJ)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->e()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/i$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/i$6;-><init>(Lcom/flurry/sdk/i;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/i;JJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/i;->a(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->g:Lcom/flurry/sdk/w;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v1, "com.flurry.android.FlurryFullscreenTakeoverActivity must be declared in manifest."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/cs;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->r:Lcom/flurry/sdk/cs;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/k;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/k;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/i;->A()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/i;->B()V

    return-void
.end method

.method private v()Lcom/flurry/sdk/dx;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/lh;->a()Lcom/flurry/sdk/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lh;->e()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/lf;)Lcom/flurry/sdk/dx;

    move-result-object v0

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryfreqcap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurrycachedasset."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private y()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".yflurryfreqcap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/lt;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".yflurrycachedasset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/lt;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/ay;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;)Lcom/flurry/sdk/ay;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/flurry/sdk/dx;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/flurry/sdk/o;

    invoke-direct {v0}, Lcom/flurry/sdk/o;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/o;

    new-instance v0, Lcom/flurry/sdk/z;

    invoke-direct {v0}, Lcom/flurry/sdk/z;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->e:Lcom/flurry/sdk/z;

    new-instance v0, Lcom/flurry/sdk/q;

    invoke-direct {v0}, Lcom/flurry/sdk/q;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/q;

    new-instance v0, Lcom/flurry/sdk/w;

    invoke-direct {v0}, Lcom/flurry/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->g:Lcom/flurry/sdk/w;

    new-instance v0, Lcom/flurry/sdk/k;

    invoke-direct {v0}, Lcom/flurry/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/k;

    new-instance v0, Lcom/flurry/sdk/dl;

    invoke-direct {v0}, Lcom/flurry/sdk/dl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/dl;

    new-instance v0, Lcom/flurry/sdk/dk;

    invoke-direct {v0}, Lcom/flurry/sdk/dk;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->j:Lcom/flurry/sdk/dk;

    new-instance v0, Lcom/flurry/sdk/m;

    invoke-direct {v0}, Lcom/flurry/sdk/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->k:Lcom/flurry/sdk/m;

    new-instance v0, Lcom/flurry/sdk/bf;

    invoke-direct {v0}, Lcom/flurry/sdk/bf;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    new-instance v0, Lcom/flurry/sdk/ab;

    invoke-direct {v0}, Lcom/flurry/sdk/ab;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/i;->r:Lcom/flurry/sdk/cs;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AdConfigurationEvent"

    iget-object v2, p0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-direct {p0}, Lcom/flurry/sdk/i;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/i;->n:Ljava/io/File;

    invoke-direct {p0}, Lcom/flurry/sdk/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/i;->o:Ljava/io/File;

    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-direct {p0}, Lcom/flurry/sdk/i;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryfreqcap."

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/i$3;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/i$3;-><init>(Lcom/flurry/sdk/i;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    iput-object v0, p0, Lcom/flurry/sdk/i;->p:Lcom/flurry/sdk/jz;

    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-direct {p0}, Lcom/flurry/sdk/i;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurrycachedasset"

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/i$4;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/i$4;-><init>(Lcom/flurry/sdk/i;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    iput-object v0, p0, Lcom/flurry/sdk/i;->q:Lcom/flurry/sdk/jz;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/i$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/i$5;-><init>(Lcom/flurry/sdk/i;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/i;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bb;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->e:Lcom/flurry/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/i;->e:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->a()V

    iput-object v2, p0, Lcom/flurry/sdk/i;->e:Lcom/flurry/sdk/z;

    :cond_0
    iput-object v2, p0, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/q;

    iput-object v2, p0, Lcom/flurry/sdk/i;->g:Lcom/flurry/sdk/w;

    iput-object v2, p0, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/k;

    iput-object v2, p0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/dl;

    iget-object v0, p0, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/o;

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->a()V

    iput-object v2, p0, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/o;

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/i;->j:Lcom/flurry/sdk/dk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/i;->j:Lcom/flurry/sdk/dk;

    invoke-virtual {v0}, Lcom/flurry/sdk/dk;->c()V

    iput-object v2, p0, Lcom/flurry/sdk/i;->j:Lcom/flurry/sdk/dk;

    :cond_2
    iput-object v2, p0, Lcom/flurry/sdk/i;->k:Lcom/flurry/sdk/m;

    iput-object v2, p0, Lcom/flurry/sdk/i;->r:Lcom/flurry/sdk/cs;

    const-class v0, Lcom/flurry/sdk/dx;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public c()Lcom/flurry/sdk/z;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->e:Lcom/flurry/sdk/z;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/q;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/q;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/w;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->g:Lcom/flurry/sdk/w;

    return-object v0
.end method

.method public f()Lcom/flurry/sdk/k;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/k;

    return-object v0
.end method

.method public g()Lcom/flurry/sdk/dl;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/dl;

    return-object v0
.end method

.method public h()Lcom/flurry/sdk/o;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/o;

    return-object v0
.end method

.method public i()Lcom/flurry/sdk/dk;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->j:Lcom/flurry/sdk/dk;

    return-object v0
.end method

.method public j()Lcom/flurry/sdk/m;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->k:Lcom/flurry/sdk/m;

    return-object v0
.end method

.method public k()Lcom/flurry/sdk/bf;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    return-object v0
.end method

.method public l()Lcom/flurry/sdk/ab;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    return-object v0
.end method

.method public m()Lcom/flurry/sdk/cs;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/i;->r:Lcom/flurry/sdk/cs;

    return-object v0
.end method

.method public n()Lcom/flurry/sdk/bh;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dx;->b()Lcom/flurry/sdk/bh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lcom/flurry/sdk/g;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dx;->c()Lcom/flurry/sdk/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lcom/flurry/sdk/gw;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dx;->d()Lcom/flurry/sdk/gw;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/flurry/sdk/hg;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dx;->e()Lcom/flurry/sdk/hg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dx;->h()V

    :cond_0
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/i;->v()Lcom/flurry/sdk/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dx;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized t()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Saving FreqCap data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/i;->p:Lcom/flurry/sdk/jz;

    iget-object v1, p0, Lcom/flurry/sdk/i;->l:Lcom/flurry/sdk/bf;

    invoke-virtual {v1}, Lcom/flurry/sdk/bf;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/i;->a:Ljava/lang/String;

    const-string v2, "Saving CachedAsset data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/i;->q:Lcom/flurry/sdk/jz;

    iget-object v1, p0, Lcom/flurry/sdk/i;->m:Lcom/flurry/sdk/ab;

    invoke-virtual {v1}, Lcom/flurry/sdk/ab;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
