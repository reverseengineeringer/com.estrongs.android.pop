.class public Lcom/estrongs/io/archive/a/a;
.super Lcom/estrongs/io/archive/compressor/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/io/archive/compressor/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/io/archive/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
