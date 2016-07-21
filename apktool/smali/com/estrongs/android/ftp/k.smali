.class public Lcom/estrongs/android/ftp/k;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/estrongs/android/ftp/k;


# instance fields
.field public a:Ljava/lang/Integer;

.field b:Z

.field private c:Lcom/estrongs/android/ftp/ESFtpService;

.field private e:Lcom/estrongs/android/ftp/m;

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ftp/k;->d:Lcom/estrongs/android/ftp/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/k;->b:Z

    iput-object v2, p0, Lcom/estrongs/android/ftp/k;->e:Lcom/estrongs/android/ftp/m;

    new-instance v0, Lcom/estrongs/android/ftp/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/l;-><init>(Lcom/estrongs/android/ftp/k;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/k;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/k;)Lcom/estrongs/android/ftp/ESFtpService;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/k;Lcom/estrongs/android/ftp/ESFtpService;)Lcom/estrongs/android/ftp/ESFtpService;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/ftp/k;
    .locals 2

    const-class v1, Lcom/estrongs/android/ftp/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ftp/k;->d:Lcom/estrongs/android/ftp/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ftp/k;

    invoke-direct {v0}, Lcom/estrongs/android/ftp/k;-><init>()V

    sput-object v0, Lcom/estrongs/android/ftp/k;->d:Lcom/estrongs/android/ftp/k;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ftp/k;->d:Lcom/estrongs/android/ftp/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/k;Lcom/estrongs/android/ftp/m;)Lcom/estrongs/android/ftp/m;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/k;->e:Lcom/estrongs/android/ftp/m;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "ESFtpServer"

    const-string v1, "Failed to closeFtpServer - context is null."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->b()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ftp/k;)Lcom/estrongs/android/ftp/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->e:Lcom/estrongs/android/ftp/m;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/ftp/ESFtpService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/k;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ftp/k;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-object p2, p0, Lcom/estrongs/android/ftp/k;->e:Lcom/estrongs/android/ftp/m;

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-interface {p2}, Lcom/estrongs/android/ftp/m;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ftp/ESFtpService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/estrongs/android/ftp/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/ESFtpService;->a()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/k;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/ESFtpService;->b()V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/ESFtpService;->c()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/ESFtpService;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/k;->c:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/ESFtpService;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/k;->b:Z

    return v0
.end method
