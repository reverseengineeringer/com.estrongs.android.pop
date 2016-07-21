.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->b:Z

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->a(I)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 21

    const-wide/16 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->o()Ljava/util/List;

    move-result-object v18

    const-wide/16 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->l()I

    move-result v10

    shl-int v19, v5, v10

    move v10, v3

    move v11, v4

    move/from16 v5, p1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->d(I)I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;IJJ)V

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v11, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v11

    add-int/2addr v11, v10

    move/from16 v0, v19

    if-le v11, v0, :cond_8

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v11

    sub-int v10, v19, v10

    sub-int v13, v11, v10

    new-instance v10, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-wide/from16 v16, v6

    invoke-direct/range {v10 .. v17}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;-><init>(JIZIJ)V

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    add-int/2addr v10, v13

    move-object/from16 v0, p0

    iput v10, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    int-to-long v10, v13

    add-long/2addr v6, v10

    const/4 v10, 0x0

    move/from16 v20, v10

    move-wide v10, v6

    move v6, v4

    move/from16 v4, v20

    :goto_2
    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->a()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b()J

    move-result-wide v8

    :cond_0
    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->c()I

    move-result v3

    add-int/2addr v5, v3

    move/from16 v20, v6

    move-wide v6, v10

    move v10, v4

    move/from16 v11, v20

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v4

    move/from16 v0, v19

    if-lt v4, v0, :cond_4

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v4

    rem-int v4, v4, v19

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v10

    sub-int v13, v10, v4

    new-instance v10, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b()J

    move-result-wide v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v16, v6

    invoke-direct/range {v10 .. v17}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;-><init>(JIZIJ)V

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v10, v13

    add-long v16, v6, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    add-int/2addr v6, v13

    move-object/from16 v0, p0

    iput v6, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    new-instance v10, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->b()J

    move-result-wide v6

    int-to-long v12, v13

    add-long v11, v6, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v4

    invoke-direct/range {v10 .. v17}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;-><init>(JIZIJ)V

    new-instance v6, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;

    move/from16 v0, v19

    invoke-direct {v6, v10, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/e;I)V

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    add-int v6, v6, v19

    move-object/from16 v0, p0

    iput v6, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    move/from16 v0, v19

    int-to-long v6, v0

    add-long v6, v6, v16

    move v10, v4

    :goto_3
    move v4, v10

    move/from16 v20, v11

    move-wide v10, v6

    move/from16 v6, v20

    goto :goto_2

    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v12

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v4

    int-to-long v12, v4

    add-long/2addr v6, v12

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;

    move/from16 v0, v19

    invoke-direct {v4, v3, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/e;I)V

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    move/from16 v0, v19

    int-to-long v12, v0

    add-long/2addr v6, v12

    move v4, v10

    move/from16 v20, v11

    move-wide v10, v6

    move/from16 v6, v20

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v10

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/e;->d()I

    move-result v4

    int-to-long v10, v4

    add-long v12, v6, v10

    const/4 v10, 0x0

    const/4 v6, 0x0

    move v4, v10

    move-wide v10, v12

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->m()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    int-to-long v2, v2

    div-long v2, v4, v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->b:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VCN mismatch between data runs and allocated size, possibly a composite attribute. data run VCNs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allocated size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data run count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    move/from16 v20, v10

    move-wide v10, v6

    move v6, v4

    move/from16 v4, v20

    goto/16 :goto_2
.end method


# virtual methods
.method public a(J[BII)I
    .locals 13

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reading encrypted files is not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->b:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readVCN: wants start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", we have start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->p()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/impl/usb/fs/ntfs/f;

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v3 .. v10}, Lcom/estrongs/fs/impl/usb/fs/ntfs/f;->a(J[BIIILcom/estrongs/fs/impl/usb/fs/ntfs/ab;)I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v0, p5

    if-ne v2, v0, :cond_2

    :cond_3
    iget-boolean v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->b:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readVCN: read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2
.end method

.method public b()J
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->e(I)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->e(I)I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()J
    .locals 2

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->d:Ljava/util/List;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "[attribute (non-res) type=x%x name\'%s\' size=%d runs=%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
