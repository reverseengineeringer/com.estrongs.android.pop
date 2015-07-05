.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/f;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private final c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    iput p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->d:I

    return-void
.end method

.method private static a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/d;)I
    .locals 11

    const/16 v10, 0x1000

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)I

    move-result v0

    const/4 v7, 0x2

    and-int/lit16 v9, v0, 0xfff

    sget-boolean v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ntfs_uncompblock: block length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + 3, 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    add-int/lit8 v0, v9, 0x1

    if-eq v0, v10, :cond_2

    sget-boolean v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ntfs_uncompblock: len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instead of 0xfff"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x3

    add-int/lit8 v1, v9, 0x1

    invoke-static {p1, p0, v0, v2, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/d;III)V

    add-int/lit8 v0, v9, 0x1

    rsub-int v1, v9, 0xfff

    invoke-static {p1, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;II)V

    add-int/lit8 v0, v9, 0x3

    goto :goto_0

    :cond_3
    move v3, v8

    :goto_1
    add-int/lit8 v0, v9, 0x3

    if-ge v7, v0, :cond_6

    if-ge v3, v10, :cond_6

    add-int/lit8 v1, v7, 0x1

    invoke-static {p0, v7}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->c(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)B

    move-result v0

    move v5, v2

    move v6, v0

    move v7, v1

    move v8, v3

    :goto_2
    const/16 v0, 0x8

    if-ge v5, v0, :cond_3

    if-ge v8, v10, :cond_3

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_5

    add-int/lit8 v3, v8, -0x1

    const/16 v1, 0xfff

    const/16 v0, 0xc

    move v4, v3

    move v3, v1

    move v1, v0

    :goto_3
    const/16 v0, 0x10

    if-lt v4, v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    shr-int/lit8 v1, v3, 0x1

    shr-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-static {p0, v7}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)I

    move-result v4

    add-int/lit8 v0, v7, 0x2

    shr-int v1, v4, v1

    rsub-int/lit8 v1, v1, -0x1

    and-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    rsub-int v4, v8, 0x1000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v8

    invoke-static {p1, p1, v1, v8, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/d;III)V

    add-int v1, v8, v3

    :goto_4
    shr-int/lit8 v3, v6, 0x1

    int-to-byte v4, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v4

    move v7, v0

    move v8, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v0, v7, 0x1

    invoke-static {p0, v7}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->c(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)B

    move-result v3

    invoke-static {p1, v8, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;IB)V

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v9, 0x3

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto :goto_1
.end method

.method private static a([B[B)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;-><init>([BLcom/estrongs/fs/impl/usb/fs/ntfs/c;)V

    new-instance v3, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;

    invoke-direct {v3, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;-><init>([BLcom/estrongs/fs/impl/usb/fs/ntfs/c;)V

    move v0, v1

    :goto_0
    mul-int/lit16 v4, v0, 0x1000

    array-length v5, p1

    if-ge v4, v5, :cond_0

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/d;)I

    move-result v4

    if-nez v4, :cond_1

    array-length v0, p1

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v3, v1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v2, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)I

    const/16 v4, 0x1000

    invoke-static {v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->d:I

    return v0
.end method

.method public a(J[BIIILcom/estrongs/fs/impl/usb/fs/ntfs/ab;)I
    .locals 15

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c()J

    move-result-wide v2

    move/from16 v0, p5

    int-to-long v6, v0

    add-long v6, v6, p1

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    sget-boolean v8, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->b:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "me:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", req:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    cmp-long v8, p1, v2

    if-gtz v8, :cond_1

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    move-wide/from16 v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    long-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v8

    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->d:I

    if-ne v8, v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a(J[BIIILcom/estrongs/fs/impl/usb/fs/ntfs/ab;)I

    move-result v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->d:I

    int-to-long v6, v3

    rem-long v6, v12, v6

    long-to-int v11, v6

    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->d:I

    mul-int v3, v3, p6

    new-array v6, v3, [B

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    const/4 v7, 0x0

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a(J[BIIILcom/estrongs/fs/impl/usb/fs/ntfs/ab;)I

    move-result v3

    if-eq v3, v8, :cond_4

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Needed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " clusters but could "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "only read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->d:I

    mul-int v3, v3, p6

    new-array v3, v3, [B

    invoke-static {v6, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a([B[B)V

    mul-int v4, v11, p6

    sub-long v6, v12, p1

    long-to-int v5, v6

    mul-int v5, v5, p6

    add-int v5, v5, p4

    mul-int v6, v2, p6

    add-int v7, v5, v6

    move-object/from16 v0, p3

    array-length v8, v0

    if-le v7, v8, :cond_5

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "Copy dest %d length %d is too big for destination %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int v7, v4, v6

    array-length v8, v3

    if-le v7, v8, :cond_6

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "Copy source %d length %d is too big for source %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const/4 v4, 0x2

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, p3

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->a()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "[compressed-run vcn:%d-%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
