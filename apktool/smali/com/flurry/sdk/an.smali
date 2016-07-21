.class public Lcom/flurry/sdk/an;
.super Lcom/flurry/sdk/am;


# instance fields
.field private final a:Ljava/io/File;

.field private b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/an;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected f()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Ljava/io/OutputStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->a:Ljava/io/File;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No file specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/an;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/flurry/sdk/an;->b:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/an;->b:Ljava/io/OutputStream;

    return-void
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/an;->a:Ljava/io/File;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
