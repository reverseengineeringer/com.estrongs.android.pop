.class public Lcom/estrongs/io/model/MountPointFile;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private delegated:Lcom/estrongs/io/model/ArchiveEntryFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .locals 1

    invoke-virtual {p2}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/estrongs/io/model/MountPointFile;->delegated:Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p2, p0}, Lcom/estrongs/io/model/ArchiveEntryFile;->setParent(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getMountedFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/model/MountPointFile;->delegated:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/model/MountPointFile;->delegated:Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/model/MountPointFile;->delegated:Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isFile()Z

    move-result v0

    return v0
.end method

.method public listFiles()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/model/MountPointFile;->delegated:Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
