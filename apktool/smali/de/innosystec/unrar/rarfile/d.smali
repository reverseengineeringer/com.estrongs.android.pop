.class public Lde/innosystec/unrar/rarfile/d;
.super Lde/innosystec/unrar/rarfile/b;


# instance fields
.field private g:S

.field private h:B

.field private i:B

.field private j:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/b;[B)V
    .locals 2

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/b;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/d;->g:S

    const/4 v0, 0x2

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/d;->h:B

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/d;->h:B

    const/4 v0, 0x3

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/d;->i:B

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/d;->i:B

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/d;->j:S

    return-void
.end method
