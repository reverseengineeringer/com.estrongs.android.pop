.class Lcom/estrongs/io/archive/rar/c;
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
.field a:Lde/innosystec/unrar/rarfile/g;

.field final synthetic b:Lcom/estrongs/io/archive/rar/a;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/rar/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/io/archive/rar/c;->b:Lcom/estrongs/io/archive/rar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/c;->a:Lde/innosystec/unrar/rarfile/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 2

    new-instance v0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    iget-object v1, p0, Lcom/estrongs/io/archive/rar/c;->a:Lde/innosystec/unrar/rarfile/g;

    invoke-direct {v0, v1}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;-><init>(Lde/innosystec/unrar/rarfile/g;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/c;->b:Lcom/estrongs/io/archive/rar/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/c;->a:Lde/innosystec/unrar/rarfile/g;

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/c;->a:Lde/innosystec/unrar/rarfile/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/c;->a()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
