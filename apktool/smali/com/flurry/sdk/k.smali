.class public Lcom/flurry/sdk/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/jk;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/flurry/sdk/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/k$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/k$1;-><init>(Lcom/flurry/sdk/k;)V

    iput-object v0, p0, Lcom/flurry/sdk/k;->b:Lcom/flurry/sdk/kb;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/k;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".flurryads.mediaassets"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/k;->c:Ljava/io/File;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".flurryads.mediaassets.tmp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/k;->d:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/k;Lcom/flurry/sdk/am;)Lcom/flurry/sdk/am;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/k;->e()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/k;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/k;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/k;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/k;->c:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/k;)I
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/k;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flurry/sdk/k;->f:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 6

    const/4 v3, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/k;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "flurry_last_media_asset_url"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/k;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Media player assets: download not necessary"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/flurry/sdk/k;->f:I

    if-ge v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/sdk/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "android.zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    invoke-virtual {v2}, Lcom/flurry/sdk/am;->e()V

    :cond_2
    iget-object v2, p0, Lcom/flurry/sdk/k;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/k;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player assets: attempting download from url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/sdk/an;

    iget-object v3, p0, Lcom/flurry/sdk/k;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/flurry/sdk/an;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    iget-object v2, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/am;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/am;->a(I)V

    iget-object v2, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    new-instance v3, Lcom/flurry/sdk/k$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/flurry/sdk/k$3;-><init>(Lcom/flurry/sdk/k;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am$a;)V

    iget-object v0, p0, Lcom/flurry/sdk/k;->g:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->d()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "https://cdn.flurry.com/vast/videocontrols/v2/android.zip"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/k;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/k;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/k;->c:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/k;->f:I

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/k$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/k$2;-><init>(Lcom/flurry/sdk/k;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method
