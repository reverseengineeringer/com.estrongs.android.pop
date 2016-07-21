.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/f;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private final c:J

.field private final d:I

.field private e:Z

.field private final f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JIZIJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e:Z

    iput-wide p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->c:J

    iput p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    iput-boolean p4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e:Z

    iput p5, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->f:I

    iput-wide p6, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->g:J

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;IJJ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e:Z

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;

    invoke-direct {v1, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->d(I)I

    move-result v2

    and-int/lit8 v3, v2, 0xf

    ushr-int/lit8 v2, v2, 0x4

    add-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->f:I

    iput-wide p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->g:J

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    :goto_0
    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cluster length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v1, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->d(I)I

    move-result v4

    iput v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->e(I)I

    move-result v4

    iput v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->f(I)I

    move-result v4

    iput v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->h(I)I

    move-result v4

    iput v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    goto :goto_0

    :pswitch_5
    iput-boolean v5, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e:Z

    :goto_1
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->c:J

    return-void

    :pswitch_6
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->j(I)I

    move-result v0

    goto :goto_1

    :pswitch_7
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->k(I)I

    move-result v0

    goto :goto_1

    :pswitch_8
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->l(I)I

    move-result v0

    goto :goto_1

    :pswitch_9
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->m(I)I

    move-result v0

    goto :goto_1

    :cond_0
    int-to-long v0, v0

    add-long/2addr v0, p5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public a(J[BIIILcom/estrongs/fs/impl/usb/fs/ntfs/ab;)I
    .locals 13

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->f()J

    move-result-wide v6

    move/from16 v0, p5

    int-to-long v8, v0

    add-long/2addr v8, p1

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iget-boolean v5, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "me:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", req:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    cmp-long v5, p1, v6

    if-gtz v5, :cond_1

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    :cond_1
    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_2
    cmp-long v5, p1, v2

    if-gez v5, :cond_5

    sub-long/2addr v2, p1

    long-to-int v2, v2

    sub-int v3, p5, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v2, v2, p6

    add-int v7, p4, v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b()J

    move-result-wide v4

    :goto_1
    iget-boolean v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cluster="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->c:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", length="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", dstOffset="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cnt="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", actclu="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", actdstoff="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    mul-int v2, v8, p6

    add-int/2addr v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v7, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    goto/16 :goto_0

    :cond_5
    sub-long v2, p1, v2

    long-to-int v2, v2

    sub-int v3, v4, v2

    move/from16 v0, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b()J

    move-result-wide v4

    int-to-long v2, v2

    add-long/2addr v4, v2

    move/from16 v7, p4

    goto/16 :goto_1

    :cond_6
    move-object/from16 v3, p7

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a(J[BII)V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e:Z

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->c:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d:I

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->g:J

    return-wide v0
.end method

.method public f()J
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v1, "[%s-run vcn:%d-%d]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sparse"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "data"

    goto :goto_0
.end method
