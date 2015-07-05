.class public Lcom/estrongs/fs/util/i;
.super Lcom/estrongs/fs/util/g;


# instance fields
.field private q:J


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/util/h;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/util/g;-><init>(Lcom/estrongs/fs/util/h;)V

    iput-wide p2, p0, Lcom/estrongs/fs/util/i;->q:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/util/g;-><init>(Ljava/io/File;)V

    iput-wide p2, p0, Lcom/estrongs/fs/util/i;->q:J

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/File;)J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/estrongs/fs/util/i;->q:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/fs/util/i;->q:J

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/estrongs/fs/util/i;->q:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/estrongs/fs/util/i;->q:J

    mul-long/2addr v0, v2

    goto :goto_0
.end method
