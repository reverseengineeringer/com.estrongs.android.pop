.class public Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;
.super Lcom/estrongs/io/model/ArchiveEntryFile;


# instance fields
.field private encrypted:Z

.field private info:Lcom/estrongs/io/archive/sevenzip/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/io/archive/sevenzip/d;Z)V
    .locals 1

    iget-object v0, p1, Lcom/estrongs/io/archive/sevenzip/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;->info:Lcom/estrongs/io/archive/sevenzip/d;

    iput-boolean p2, p0, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;->encrypted:Z

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;->info:Lcom/estrongs/io/archive/sevenzip/d;

    iget-wide v0, v0, Lcom/estrongs/io/archive/sevenzip/d;->c:J

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;->info:Lcom/estrongs/io/archive/sevenzip/d;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/SevenZipArchiveEntryFile;->encrypted:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
