.class public Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;
.super Lcom/estrongs/io/model/ArchiveEntryFile;


# static fields
.field private static final serialVersionUID:J = 0x32780266f54df572L


# instance fields
.field private size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;->size:J

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;->size:J

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/io/archive/compressor/CompressorArchiveEntryFile;->size:J

    return-void
.end method
