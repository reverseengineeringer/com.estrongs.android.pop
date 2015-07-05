.class final Lcom/estrongs/io/archive/aeszip/f;
.super Ljava/util/zip/InflaterInputStream;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-static {}, Lcom/estrongs/io/archive/aeszip/a;->e()Ljava/util/zip/Inflater;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/f;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/f;->a:Z

    :try_start_0
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/f;->inf:Ljava/util/zip/Inflater;

    invoke-static {v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/util/zip/Inflater;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/f;->inf:Ljava/util/zip/Inflater;

    invoke-static {v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/util/zip/Inflater;)V

    throw v0
.end method
