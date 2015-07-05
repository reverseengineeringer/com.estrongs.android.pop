.class public Lcom/estrongs/fs/impl/usb/fs/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Object;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:Lcom/estrongs/fs/impl/usb/driver/a;

.field private e:[J

.field private f:[I

.field private g:Lcom/estrongs/fs/impl/usb/fs/a/i;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/i;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    iput-object p3, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->h()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v0

    iput-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->f:[I

    iget-boolean v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fat is not mirrored, fat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is valid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->j()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->h:J

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->f:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    :goto_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->f:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a(I)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->c()I

    move-result v2

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->f:[I

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->f:[I

    aput v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fat is mirrored, fat count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(JLjava/nio/ByteBuffer;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->h:J

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    invoke-interface {v1, v2, v3, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->b(JLjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a(J)[Ljava/lang/Long;
    .locals 13

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/driver/a;->b()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v0, -0x1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v8, 0x4

    mul-long/2addr v8, p1

    add-long/2addr v2, v8

    int-to-long v8, v5

    div-long/2addr v2, v8

    int-to-long v8, v5

    mul-long/2addr v2, v8

    iget-object v7, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    const-wide/16 v10, 0x4

    mul-long/2addr v10, p1

    add-long/2addr v8, v10

    int-to-long v10, v5

    rem-long/2addr v8, v10

    cmp-long v7, v0, v2

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v0, v2, v3, v6}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    move-wide v0, v2

    :cond_1
    long-to-int v2, v8

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    cmp-long v3, v8, p1

    if-nez v3, :cond_2

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    return-object v0

    :cond_2
    int-to-long p1, v2

    const-wide/32 v2, 0xffffff8

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    goto :goto_0
.end method

.method a([Ljava/lang/Long;I)[Ljava/lang/Long;
    .locals 20

    sget-object v10, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v2, v0

    add-int v2, v2, p2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v2}, Lcom/estrongs/fs/impl/usb/driver/a;->b()I

    move-result v2

    mul-int/lit8 v12, v2, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v8, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/i;->b()J

    move-result-wide v2

    sget v4, Lcom/estrongs/fs/impl/usb/fs/a/i;->a:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x2

    :cond_0
    const-wide/16 v6, -0x1

    :goto_1
    if-lez p2, :cond_3

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v14, 0x4

    mul-long/2addr v14, v4

    add-long/2addr v2, v14

    int-to-long v14, v12

    div-long/2addr v2, v14

    int-to-long v14, v12

    mul-long/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    const-wide/16 v16, 0x4

    mul-long v16, v16, v4

    add-long v14, v14, v16

    int-to-long v0, v12

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    cmp-long v16, v6, v2

    if-eqz v16, :cond_1

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v6, v2, v3, v13}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    move-wide v6, v2

    :cond_1
    long-to-int v2, v14

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    move-wide v2, v4

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    move-wide v8, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    array-length v2, v0

    move v4, v2

    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_5

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v16, 0x4

    mul-long v16, v16, v14

    add-long v2, v2, v16

    int-to-long v0, v12

    move-wide/from16 v16, v0

    div-long v2, v2, v16

    int-to-long v0, v12

    move-wide/from16 v16, v0

    mul-long v2, v2, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/16 v16, 0x0

    aget-wide v16, v5, v16

    const-wide/16 v18, 0x4

    mul-long v14, v14, v18

    add-long v14, v14, v16

    int-to-long v0, v12

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    cmp-long v5, v6, v2

    if-eqz v5, :cond_4

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v5, v2, v3, v13}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    move-wide v6, v2

    :cond_4
    long-to-int v3, v14

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-int v2, v14

    invoke-virtual {v13, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x4

    mul-long/2addr v4, v14

    add-long/2addr v2, v4

    int-to-long v4, v12

    div-long/2addr v2, v4

    int-to-long v4, v12

    mul-long/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v16, 0x4

    mul-long v16, v16, v14

    add-long v2, v2, v16

    int-to-long v0, v12

    move-wide/from16 v16, v0

    rem-long v16, v2, v16

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v2, v4, v5, v13}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    move-wide v2, v4

    :goto_3
    move-wide/from16 v0, v16

    long-to-int v6, v0

    const v7, 0xfffffff

    invoke-virtual {v13, v6, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    const-wide/16 v4, -0x1

    cmp-long v4, v8, v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x4

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v12

    div-long/2addr v4, v6

    int-to-long v6, v12

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v16, 0x4

    mul-long v8, v8, v16

    add-long/2addr v6, v8

    int-to-long v8, v12

    rem-long/2addr v6, v8

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v2, v4, v5, v13}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    :cond_6
    long-to-int v3, v6

    move-object/from16 v0, p1

    array-length v2, v0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v13, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {v2, v14, v15}, Lcom/estrongs/fs/impl/usb/fs/a/i;->b(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    move/from16 v0, p2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/a/i;->c(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/i;->c()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    const-string v3, "allocating clusters finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    monitor-exit v10

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_9
    move-wide v2, v6

    goto/16 :goto_3

    :cond_a
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method b([Ljava/lang/Long;I)[Ljava/lang/Long;
    .locals 18

    sget-object v8, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v7, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v2}, Lcom/estrongs/fs/impl/usb/driver/a;->b()I

    move-result v2

    mul-int/lit8 v9, v2, 0x2

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-gez v7, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "trying to remove more clusters in chain than currently exist!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const-wide/16 v2, -0x1

    if-lez v7, :cond_1

    add-int/lit8 v2, v7, -0x1

    :try_start_1
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v12, 0x4

    mul-long/2addr v12, v4

    add-long/2addr v2, v12

    int-to-long v12, v9

    div-long/2addr v2, v12

    int-to-long v12, v9

    mul-long/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v11, 0x0

    aget-wide v12, v6, v11

    const-wide/16 v14, 0x4

    mul-long/2addr v4, v14

    add-long/2addr v4, v12

    int-to-long v12, v9

    rem-long/2addr v4, v12

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v6, v2, v3, v10}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    long-to-int v4, v4

    const v5, 0xfffffff

    invoke-virtual {v10, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v10}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    const-string v5, "freed set end EOF "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v7

    move-wide v4, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v6, v2, :cond_3

    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v14, 0x4

    mul-long/2addr v14, v12

    add-long/2addr v2, v14

    int-to-long v14, v9

    div-long/2addr v2, v14

    int-to-long v14, v9

    mul-long/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->e:[J

    const/4 v14, 0x0

    aget-wide v14, v11, v14

    const-wide/16 v16, 0x4

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    int-to-long v14, v9

    rem-long/2addr v12, v14

    cmp-long v11, v4, v2

    if-eqz v11, :cond_6

    const-wide/16 v14, -0x1

    cmp-long v11, v4, v14

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    :cond_2
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v4, v2, v3, v10}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    :goto_1
    long-to-int v4, v12

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    const-string v3, "freed all cluster"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a(JLjava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->c:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/a/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clusters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    move/from16 v0, p2

    neg-int v3, v0

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/a/i;->c(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/b;->g:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/i;->c()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_6
    move-wide v2, v4

    goto :goto_1
.end method
