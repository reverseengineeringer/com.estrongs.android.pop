.class public Lcom/estrongs/fs/impl/usb/fs/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/estrongs/fs/impl/usb/driver/a;

.field private d:Lcom/estrongs/fs/impl/usb/fs/a/b;

.field private e:[Ljava/lang/Long;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(JLcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->b:Z

    iput-object p4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->d:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iput-object p3, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-virtual {p4, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(J)[Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    invoke-virtual {p5}, Lcom/estrongs/fs/impl/usb/fs/a/c;->i()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    invoke-virtual {p5}, Lcom/estrongs/fs/impl/usb/fs/a/c;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->g:J

    return-void
.end method

.method private a(JI)J
    .locals 7

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->g:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    array-length v0, v0

    return v0
.end method

.method a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-le p1, v0, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/a;->a:Ljava/lang/String;

    const-string v2, "grow chain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->d:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    sub-int v0, p1, v0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a([Ljava/lang/Long;I)[Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->b:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/a;->a:Ljava/lang/String;

    const-string v2, "shrink chain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->d:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/fs/impl/usb/fs/a/b;->b([Ljava/lang/Long;I)[Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    goto :goto_0
.end method

.method a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(I)V

    return-void
.end method

.method a(JLjava/nio/ByteBuffer;)V
    .locals 9

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    rem-long v2, p1, v2

    long-to-int v2, v2

    iget-wide v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v2}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(JI)J

    move-result-wide v6

    invoke-interface {v4, v6, v7, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v3

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(JI)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method b()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method b(JLjava/nio/ByteBuffer;)V
    .locals 9

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    rem-long v2, p1, v2

    long-to-int v2, v2

    iget-wide v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v2}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(JI)J

    move-result-wide v6

    invoke-interface {v4, v6, v7, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->b(JLjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v3

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->f:J

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->c:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/a;->e:[Ljava/lang/Long;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(JI)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->b(JLjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method
