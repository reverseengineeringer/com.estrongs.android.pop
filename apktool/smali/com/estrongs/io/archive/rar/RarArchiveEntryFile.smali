.class public Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;
.super Lcom/estrongs/io/model/ArchiveEntryFile;


# static fields
.field private static final serialVersionUID:J = 0x32780266f54df572L


# instance fields
.field private archiveEntry:Lde/innosystec/unrar/rarfile/g;


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/g;)V
    .locals 3

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->archiveEntry:Lde/innosystec/unrar/rarfile/g;

    return-void
.end method


# virtual methods
.method public getArchiveEntry()Lde/innosystec/unrar/rarfile/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->archiveEntry:Lde/innosystec/unrar/rarfile/g;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->archiveEntry:Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->archiveEntry:Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->C()Z

    move-result v0

    return v0
.end method
