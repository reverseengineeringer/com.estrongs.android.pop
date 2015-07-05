.class Lcom/estrongs/io/archive/compressor/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/estrongs/io/model/ArchiveEntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/io/archive/compressor/a;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/compressor/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/io/archive/compressor/b;->b:Lcom/estrongs/io/archive/compressor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/io/archive/compressor/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 4

    iget v0, p0, Lcom/estrongs/io/archive/compressor/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/compressor/b;->a:I

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/b;->b:Lcom/estrongs/io/archive/compressor/a;

    invoke-static {v0}, Lcom/estrongs/io/archive/compressor/a;->a(Lcom/estrongs/io/archive/compressor/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;

    invoke-direct {v2, v0}, Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;->setSize(J)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/estrongs/io/archive/compressor/b;->a:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/compressor/b;->a()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
