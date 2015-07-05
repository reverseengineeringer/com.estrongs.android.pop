.class public abstract Lcom/estrongs/io/archive/compressor/a;
.super Lcom/estrongs/io/archive/h;


# instance fields
.field private h:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/io/archive/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/io/archive/compressor/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->h:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/compressor/a;->l()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->h:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->h:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method protected i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/io/archive/compressor/b;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/compressor/b;-><init>(Lcom/estrongs/io/archive/compressor/a;)V

    return-object v0
.end method

.method protected abstract l()Ljava/io/InputStream;
.end method
