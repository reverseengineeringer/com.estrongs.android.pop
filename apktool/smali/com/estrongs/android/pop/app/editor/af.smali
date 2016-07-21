.class public Lcom/estrongs/android/pop/app/editor/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/editor/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/editor/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/editor/af;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2800

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/af;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lcom/estrongs/android/pop/app/editor/ag;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    if-lez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget v3, v0, Lcom/estrongs/android/pop/app/editor/ag;->a:I

    if-le v3, p1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Lcom/estrongs/android/pop/app/editor/ag;
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/editor/ag;->b:J

    cmp-long v3, v4, p1

    if-lez v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IJ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/editor/ag;-><init>(Lcom/estrongs/android/pop/app/editor/af;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget v0, v0, Lcom/estrongs/android/pop/app/editor/ag;->a:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/editor/ag;->b:J

    sub-long/2addr v0, p2

    iget v2, p0, Lcom/estrongs/android/pop/app/editor/af;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/estrongs/android/pop/app/editor/ag;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/editor/ag;-><init>(Lcom/estrongs/android/pop/app/editor/af;IJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget v0, v0, Lcom/estrongs/android/pop/app/editor/ag;->a:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/editor/ag;->b:J

    sub-long v0, p2, v0

    iget v2, p0, Lcom/estrongs/android/pop/app/editor/af;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/editor/ag;-><init>(Lcom/estrongs/android/pop/app/editor/af;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/editor/ag;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ag;

    iget-wide v2, v0, Lcom/estrongs/android/pop/app/editor/ag;->b:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
