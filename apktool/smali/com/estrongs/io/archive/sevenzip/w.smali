.class Lcom/estrongs/io/archive/sevenzip/w;
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
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/estrongs/io/archive/sevenzip/r;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/r;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/w;->b:Lcom/estrongs/io/archive/sevenzip/r;

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/w;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 3

    new-instance v1, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/w;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/d;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/w;->b:Lcom/estrongs/io/archive/sevenzip/r;

    invoke-static {v2}, Lcom/estrongs/io/archive/sevenzip/r;->a(Lcom/estrongs/io/archive/sevenzip/r;)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;-><init>(Lcom/estrongs/io/archive/sevenzip/d;Z)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/w;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/w;->a()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
