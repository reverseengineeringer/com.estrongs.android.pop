.class public final Lcom/flurry/sdk/ai$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ai;

.field private final b:Lcom/flurry/sdk/ai$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$b;)V
    .locals 1

    iput-object p1, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/flurry/sdk/ai$a;->b:Lcom/flurry/sdk/ai$b;

    invoke-static {p2}, Lcom/flurry/sdk/ai$b;->d(Lcom/flurry/sdk/ai$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/ai$a;->c:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/ai;->e(Lcom/flurry/sdk/ai;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$b;Lcom/flurry/sdk/ai$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ai$a;-><init>(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$b;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ai$a;)Lcom/flurry/sdk/ai$b;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->b:Lcom/flurry/sdk/ai$b;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ai$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/ai$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ai$a;)[Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v2, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->b:Lcom/flurry/sdk/ai$b;

    invoke-static {v0}, Lcom/flurry/sdk/ai$b;->a(Lcom/flurry/sdk/ai$b;)Lcom/flurry/sdk/ai$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->b:Lcom/flurry/sdk/ai$b;

    invoke-static {v0}, Lcom/flurry/sdk/ai$b;->d(Lcom/flurry/sdk/ai$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->b:Lcom/flurry/sdk/ai$b;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ai$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lcom/flurry/sdk/ai$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/flurry/sdk/ai$a$a;-><init>(Lcom/flurry/sdk/ai$a;Ljava/io/OutputStream;Lcom/flurry/sdk/ai$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    invoke-static {v0}, Lcom/flurry/sdk/ai;->f(Lcom/flurry/sdk/ai;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/flurry/sdk/ai;->b()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/flurry/sdk/ai$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$a;Z)V

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    iget-object v1, p0, Lcom/flurry/sdk/ai$a;->b:Lcom/flurry/sdk/ai$b;

    invoke-static {v1}, Lcom/flurry/sdk/ai$b;->c(Lcom/flurry/sdk/ai$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai;->c(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/flurry/sdk/ai$a;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    invoke-static {v0, p0, v2}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$a;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$a;Z)V

    return-void
.end method
