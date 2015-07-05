.class public Lcom/estrongs/android/pop/app/imageviewer/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field private final b:[Lcom/estrongs/android/pop/app/imageviewer/b;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    new-array v0, p2, [Lcom/estrongs/android/pop/app/imageviewer/b;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:[Lcom/estrongs/android/pop/app/imageviewer/b;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:[Lcom/estrongs/android/pop/app/imageviewer/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:[Lcom/estrongs/android/pop/app/imageviewer/b;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-direct {v2}, Lcom/estrongs/android/pop/app/imageviewer/b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/b;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:[Lcom/estrongs/android/pop/app/imageviewer/b;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget-object v5, v1, Lcom/estrongs/android/pop/app/imageviewer/b;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    if-ne p1, v5, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/b;->c()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/an;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/a;->c(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/b;->a()Lcom/estrongs/android/pop/app/imageviewer/an;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:[Lcom/estrongs/android/pop/app/imageviewer/b;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/imageviewer/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Ljava/lang/ref/SoftReference;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/an;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/a;->c(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v5

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->b:[Lcom/estrongs/android/pop/app/imageviewer/b;

    array-length v7, v6

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v2, v6, v4

    iget-object v0, v2, Lcom/estrongs/android/pop/app/imageviewer/b;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    if-nez v0, :cond_1

    :goto_2
    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/b;->c()V

    iput-object p1, v2, Lcom/estrongs/android/pop/app/imageviewer/b;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iput-object p2, v2, Lcom/estrongs/android/pop/app/imageviewer/b;->b:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/a;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v8, v2, Lcom/estrongs/android/pop/app/imageviewer/b;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v0, v8}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-le v0, v1, :cond_2

    move-object v1, v2

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v2, v3

    goto :goto_2
.end method

.method public declared-synchronized b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/a;->c(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
