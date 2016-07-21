.class public Lcom/estrongs/android/cleaner/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/estrongs/android/cleaner/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/util/concurrent/atomic/AtomicLong;

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Object;

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    return-void
.end method

.method public constructor <init>(IILcom/estrongs/android/cleaner/h;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/cleaner/h;->a:I

    iput p2, p0, Lcom/estrongs/android/cleaner/h;->g:I

    iput-object p3, p0, Lcom/estrongs/android/cleaner/h;->b:Lcom/estrongs/android/cleaner/h;

    iput v1, p0, Lcom/estrongs/android/cleaner/h;->r:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/h;->j:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/h;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    iput-wide v2, p0, Lcom/estrongs/android/cleaner/h;->n:J

    iput-wide v2, p0, Lcom/estrongs/android/cleaner/h;->m:J

    iput-boolean v1, p0, Lcom/estrongs/android/cleaner/h;->i:Z

    if-eqz p3, :cond_0

    invoke-direct {p3, p0}, Lcom/estrongs/android/cleaner/h;->a(Lcom/estrongs/android/cleaner/h;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    iget-object v2, v0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/estrongs/android/cleaner/h;->a(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/android/cleaner/h;->i:Z

    iput v2, v0, Lcom/estrongs/android/cleaner/h;->r:I

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/cleaner/h;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    iget-object v2, v0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/estrongs/android/cleaner/h;->b(Ljava/util/List;)V

    iput-boolean v3, v0, Lcom/estrongs/android/cleaner/h;->i:Z

    iput v3, v0, Lcom/estrongs/android/cleaner/h;->r:I

    goto :goto_0
.end method

.method private e(Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->b:Lcom/estrongs/android/cleaner/h;

    move v3, v1

    move-object v4, v0

    move v0, v2

    :goto_0
    if-eqz v4, :cond_1

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    invoke-direct {v4}, Lcom/estrongs/android/cleaner/h;->t()I

    move v0, v1

    :cond_0
    iget-boolean v5, v4, Lcom/estrongs/android/cleaner/h;->i:Z

    if-eqz v5, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, v4, Lcom/estrongs/android/cleaner/h;->i:Z

    if-nez v3, :cond_3

    invoke-direct {v4}, Lcom/estrongs/android/cleaner/h;->t()I

    :cond_3
    invoke-direct {v4, p1}, Lcom/estrongs/android/cleaner/h;->e(Z)V

    move v3, v0

    move v0, v2

    :goto_1
    invoke-virtual {v4}, Lcom/estrongs/android/cleaner/h;->c()Lcom/estrongs/android/cleaner/h;

    move-result-object v4

    move v6, v0

    move v0, v3

    move v3, v6

    goto :goto_0

    :cond_4
    invoke-direct {v4}, Lcom/estrongs/android/cleaner/h;->u()I

    invoke-virtual {v4}, Lcom/estrongs/android/cleaner/h;->i()I

    move-result v5

    if-nez v5, :cond_1

    iput-boolean v2, v4, Lcom/estrongs/android/cleaner/h;->i:Z

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1
.end method

.method private t()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    return v0
.end method

.method private u()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    return v0
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private declared-synchronized w()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/cleaner/h;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v0, 0x5

    :try_start_1
    iput v0, p0, Lcom/estrongs/android/cleaner/h;->l:I

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized x()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/cleaner/h;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v0, 0x6

    :try_start_1
    iput v0, p0, Lcom/estrongs/android/cleaner/h;->l:I

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized y()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/cleaner/h;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v0, 0x7

    :try_start_1
    iput v0, p0, Lcom/estrongs/android/cleaner/h;->l:I

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/cleaner/h;->f:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->b:Lcom/estrongs/android/cleaner/h;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/cleaner/h;->b(J)V

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/h;->v()V

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->c()Lcom/estrongs/android/cleaner/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 4

    const v0, 0x7f020241

    iget v1, p0, Lcom/estrongs/android/cleaner/h;->f:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get file icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/cleaner/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/h;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->k:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->k:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    :cond_0
    const v0, 0x7f0201a4

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get app icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/cleaner/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/h;->t:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/cleaner/h;->t:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f020188

    invoke-static {v1, p1, v0}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get category icon:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/android/cleaner/h;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f02005c

    iget v2, p0, Lcom/estrongs/android/cleaner/h;->k:I

    packed-switch v2, :pswitch_data_1

    move v0, v1

    :goto_1
    :pswitch_4
    invoke-static {v0, p1}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;)V

    goto/16 :goto_0

    :pswitch_5
    const v0, 0x7f02023c

    goto :goto_1

    :pswitch_6
    const v0, 0x7f020230

    goto :goto_1

    :pswitch_7
    const v0, 0x7f02022c

    goto :goto_1

    :pswitch_8
    const v0, 0x7f020236

    goto :goto_1

    :pswitch_9
    const v0, 0x7f02022d

    goto :goto_1

    :pswitch_a
    const v0, 0x7f02023e

    goto :goto_1

    :pswitch_b
    const v0, 0x7f020242

    goto :goto_1

    :pswitch_c
    invoke-static {v0, p1}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/h;->t:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/h;->c:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/h;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/estrongs/android/cleaner/h;->i:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    :goto_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/cleaner/h;->e(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/cleaner/h;->b(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/cleaner/h;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/h;->i:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/cleaner/h;->k:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/h;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/cleaner/h;->p:Z

    return-void
.end method

.method public c()Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->b:Lcom/estrongs/android/cleaner/h;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/cleaner/h;->l:I

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/cleaner/h;->m:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/h;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/cleaner/h;->o:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/h;->w()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/h;->x()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/h;->y()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/cleaner/h;->n:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/h;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/cleaner/h;->u:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->v:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/h;->v:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/cleaner/h;->r:I

    return v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->s:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/cleaner/h;->m:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/cleaner/h;->n:J

    return-wide v0
.end method

.method public p()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/estrongs/android/cleaner/h;->l:I

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, p0, Lcom/estrongs/android/cleaner/h;->i:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/h;->x()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/h;->y()V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/h;->w()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public q()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/cleaner/h;->l:I

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, p0, Lcom/estrongs/android/cleaner/h;->i:Z

    if-eqz v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/h;->u:Z

    return v0
.end method

.method public declared-synchronized s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->v:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/h;->v:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/h;->v:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
