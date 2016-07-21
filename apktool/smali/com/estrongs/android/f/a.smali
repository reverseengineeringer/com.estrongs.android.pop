.class public abstract Lcom/estrongs/android/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/estrongs/android/f/b;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/f/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/f/a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/f/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/f/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/estrongs/android/f/a;Landroid/graphics/Bitmap;)V
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/f/a;->c:Z

    return v0
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/f/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/f/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/f/b;-><init>(Lcom/estrongs/android/f/a;)V

    iput-object v0, p0, Lcom/estrongs/android/f/a;->b:Lcom/estrongs/android/f/b;

    iget-object v0, p0, Lcom/estrongs/android/f/a;->b:Lcom/estrongs/android/f/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/f/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/f/a;->c:Z
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

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/f/a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/f/a;->b:Lcom/estrongs/android/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/f/a;->b:Lcom/estrongs/android/f/b;

    invoke-virtual {v0}, Lcom/estrongs/android/f/b;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/f/a;->c:Z
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
