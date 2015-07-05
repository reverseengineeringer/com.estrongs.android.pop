.class public Lcom/estrongs/android/pop/app/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final c:Ljava/lang/String;

.field private static i:Lcom/estrongs/android/pop/app/b/c;


# instance fields
.field protected a:Ljava/net/InetAddress;

.field protected b:Ljava/net/InetAddress;

.field private d:Z

.field private e:[I

.field private f:[I

.field private g:Lcom/estrongs/android/pop/app/b/m;

.field private h:Landroid/content/Context;

.field private j:Z

.field private k:Z

.field private l:Lcom/estrongs/fs/b/al;

.field private m:Lcom/estrongs/android/pop/zeroconf/w;

.field private n:Lcom/estrongs/android/pop/app/service/a;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Object;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/c;->d:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->e:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/c;->k:Z

    iput-object v3, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/b/c;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->r:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c;->h:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/b/c;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->i:Lcom/estrongs/android/pop/app/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/b/c;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/b/c;->i:Lcom/estrongs/android/pop/app/b/c;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->i:Lcom/estrongs/android/pop/app/b/c;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/c;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/b/f;)V
    .locals 5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->r:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    iget v1, p1, Lcom/estrongs/android/pop/app/b/f;->g:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    const-string v0, "smb://"

    move-object v1, v0

    goto :goto_1

    :pswitch_1
    const-string v0, "ftp://"

    move-object v1, v0

    goto :goto_1

    :pswitch_2
    const-string v0, "ftps://"

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    const-string v0, "sftp://"

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    const-string v0, "webdav://"

    move-object v1, v0

    goto :goto_1

    :pswitch_5
    const-string v0, "adb://"

    move-object v1, v0

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/net/InetAddress;Ljava/net/InetAddress;Z)V
    .locals 4

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/net/InetAddress;Z)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    array-length v0, v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c;->b:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private a(Ljava/net/InetAddress;Z)V
    .locals 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c;->a:Ljava/net/InetAddress;

    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->e:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->h:Landroid/content/Context;

    const v1, 0x7f0b0206

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private a(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/f;

    iget v0, v0, Lcom/estrongs/android/pop/app/b/f;->g:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->d:Z

    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "([1-9]|[1-9]\\d|1\\d{2}|2[0-1]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private h()I
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    xor-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    xor-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    xor-int/lit16 v3, v3, 0xff

    mul-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v3

    mul-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    mul-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private i()V
    .locals 4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/f;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/b/c;->a(Lcom/estrongs/android/pop/app/b/f;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/b/m;->deleteObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/m;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/estrongs/android/pop/app/service/a;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/app/service/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->c:Ljava/lang/String;

    const-string v1, "scanLan error: invalid bssid or scan type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "255.255.255.0"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    if-nez v2, :cond_3

    invoke-direct {p0, v0, v1, p4}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/net/InetAddress;Ljava/net/InetAddress;Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/m;-><init>(Lcom/estrongs/android/pop/app/b/c;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/b/m;->addObserver(Ljava/util/Observer;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/b/c;->a(Lcom/estrongs/android/pop/app/service/a;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->e()V

    new-instance v0, Lcom/estrongs/android/pop/app/b/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/m;-><init>(Lcom/estrongs/android/pop/app/b/c;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/b/m;->addObserver(Ljava/util/Observer;)V

    :cond_4
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    if-eqz v0, :cond_5

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->h:Landroid/content/Context;

    const v1, 0x7f0b0206

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->g()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/estrongs/android/pop/app/service/a;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    if-nez v0, :cond_7

    new-instance v0, Lcom/estrongs/android/pop/app/b/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/m;-><init>(Lcom/estrongs/android/pop/app/b/c;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/b/m;->addObserver(Ljava/util/Observer;)V

    :cond_7
    new-instance v0, Lcom/estrongs/fs/b/al;

    invoke-direct {v0}, Lcom/estrongs/fs/b/al;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->l:Lcom/estrongs/fs/b/al;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->l:Lcom/estrongs/fs/b/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->h:Landroid/content/Context;

    const v2, 0x7f0b0205

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/al;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->l:Lcom/estrongs/fs/b/al;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/al;->execute()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/b/f;

    iget v7, v0, Lcom/estrongs/android/pop/app/b/f;->g:I

    iget v1, v1, Lcom/estrongs/android/pop/app/b/f;->g:I

    if-ne v7, v1, :cond_2

    move v0, v3

    :goto_1
    if-nez v0, :cond_1

    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_3
    monitor-exit v4

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->r:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/c;->h()I

    move-result v3

    const/4 v0, 0x4

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/b/c;->e:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/estrongs/android/pop/app/b/c;->f:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_2

    const/4 v0, 0x3

    :try_start_0
    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v0, 0x3

    aget-byte v0, v4, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/b/c;->e:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    if-ne v0, v5, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public c()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/c;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/service/a;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/zeroconf/w;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    new-instance v2, Lcom/estrongs/android/pop/app/b/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b/d;-><init>(Lcom/estrongs/android/pop/app/b/c;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/v;)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/b/c;->d:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-----------start scan bonjour "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/app/bc;->a()Lcom/estrongs/android/pop/app/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/bc;->b()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/m;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/m;->run()V

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/b/c;->k:Z

    return-void

    :cond_5
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    :try_start_2
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/m;->a()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/c;->j()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->c:Ljava/lang/String;

    const-string v1, "To destroy zeroconfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->m:Lcom/estrongs/android/pop/zeroconf/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/c;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->n:Lcom/estrongs/android/pop/app/service/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/service/a;->a(Z)V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/app/bc;->a()Lcom/estrongs/android/pop/app/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/bc;->c()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->e()V

    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->r:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_b

    instance-of v0, p2, Lcom/estrongs/android/pop/app/b/o;

    if-eqz v0, :cond_b

    check-cast p2, Lcom/estrongs/android/pop/app/b/o;

    iget v0, p2, Lcom/estrongs/android/pop/app/b/o;->d:I

    if-nez v0, :cond_0

    iget v0, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->c:Ljava/lang/String;

    const-string v1, "get invalid scan status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Lcom/estrongs/android/pop/app/b/o;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;

    move-result-object v2

    array-length v5, v2

    if-lez v5, :cond_4

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_4
    :goto_1
    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->e:Lcom/estrongs/android/pop/app/b/f;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/f;->g:I

    if-ne v2, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webdav://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    const/16 v5, 0x50

    if-eq v2, v5, :cond_c

    move v2, v3

    :goto_2
    if-eqz v1, :cond_1

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v2, Lcom/estrongs/android/pop/app/b/c;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get host name by NbtAddress - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->e:Lcom/estrongs/android/pop/app/b/f;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/f;->g:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ftp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    const/16 v5, 0x15

    if-eq v2, v5, :cond_c

    move v2, v3

    goto :goto_2

    :cond_7
    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->e:Lcom/estrongs/android/pop/app/b/f;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/f;->g:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ftps://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    const/16 v5, 0x3de

    if-eq v2, v5, :cond_c

    move v2, v3

    goto/16 :goto_2

    :cond_8
    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->e:Lcom/estrongs/android/pop/app/b/f;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/f;->g:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sftp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    const/16 v5, 0x16

    if-eq v2, v5, :cond_c

    move v2, v3

    goto/16 :goto_2

    :cond_9
    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->e:Lcom/estrongs/android/pop/app/b/f;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/f;->g:I

    if-nez v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    const/16 v5, 0x1bd

    if-eq v2, v5, :cond_c

    move v2, v3

    goto/16 :goto_2

    :cond_a
    iget-object v2, p2, Lcom/estrongs/android/pop/app/b/o;->e:Lcom/estrongs/android/pop/app/b/f;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/f;->g:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adb://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Lcom/estrongs/android/pop/app/b/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_3
    iget v2, p2, Lcom/estrongs/android/pop/app/b/o;->c:I

    const/16 v5, 0x15b3

    if-eq v2, v5, :cond_c

    move v2, v3

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->e()V

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto/16 :goto_2

    :cond_d
    move-object v1, v2

    goto :goto_3
.end method
