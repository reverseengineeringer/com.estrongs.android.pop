.class Lcom/estrongs/android/pop/utils/ck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    array-length v4, v2

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    monitor-exit v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    monitor-exit v3

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ck;->a:[Ljava/lang/Object;

    aput-object p1, v2, v0

    :cond_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
