.class public Lcom/estrongs/android/d/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private static c:Z

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/u;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/d/u;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/u;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ProgressDialog;)Lcom/estrongs/android/ui/dialog/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    return-object p0
.end method

.method public static final a()V
    .locals 3

    sget-object v1, Lcom/estrongs/android/d/u;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/estrongs/android/d/u;->c:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/d/u;->a:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/d/w;

    invoke-direct {v2}, Lcom/estrongs/android/d/w;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final a(Landroid/content/Context;II)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/d/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v6, Lcom/estrongs/android/d/u;->d:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/estrongs/android/d/u;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/estrongs/android/d/u;->c:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/estrongs/android/d/v;

    invoke-direct {v5, p0}, Lcom/estrongs/android/d/v;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    sget-object v0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->show()V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/estrongs/android/d/u;->c:Z

    return p0
.end method

.method static synthetic b()Lcom/estrongs/android/ui/dialog/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/u;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    return-object v0
.end method
