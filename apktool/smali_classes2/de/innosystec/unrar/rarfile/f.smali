.class public Lde/innosystec/unrar/rarfile/f;
.super Lde/innosystec/unrar/rarfile/b;


# instance fields
.field private g:I

.field private h:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/b;[B)V
    .locals 2

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/b;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/f;->g:I

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/f;->h:S

    :cond_1
    return-void
.end method
