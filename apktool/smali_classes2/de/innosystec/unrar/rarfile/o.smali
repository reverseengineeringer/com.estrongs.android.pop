.class public Lde/innosystec/unrar/rarfile/o;
.super Lde/innosystec/unrar/rarfile/b;


# instance fields
.field private g:I

.field private h:S

.field private i:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/b;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/b;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    iput v0, p0, Lde/innosystec/unrar/rarfile/o;->g:I

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/o;->h:S

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/o;->i:S

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/o;->g:I

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/o;->h:S

    const/4 v0, 0x6

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/o;->i:S

    return-void
.end method
