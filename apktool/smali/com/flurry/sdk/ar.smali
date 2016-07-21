.class public Lcom/flurry/sdk/ar;
.super Lcom/flurry/sdk/am;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/flurry/sdk/aq;

.field protected final b:Ljava/lang/String;

.field protected c:Lcom/flurry/sdk/aq$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ar;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/aq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/aq;

    iput-object p2, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected f()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq$c;->a()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/aq;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cache specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cache key specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/aq;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->b(Ljava/lang/String;)Lcom/flurry/sdk/aq$c;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    iget-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open writer for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq$c;->a()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/aq$c;

    return-void
.end method

.method protected h()V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/aq;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/aq;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ar;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error removing result for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
