.class public Lde/innosystec/unrar/rarfile/n;
.super Lde/innosystec/unrar/rarfile/c;


# instance fields
.field private g:B

.field private h:S

.field private i:I

.field private j:B


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/c;[B)V
    .locals 3

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/c;)V

    const/4 v0, 0x0

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/n;->g:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/n;->g:B

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/n;->h:S

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/n;->i:I

    const/4 v0, 0x6

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/n;->j:B

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/n;->j:B

    return-void
.end method
