.class public final Lde/innosystec/unrar/unpack/b;
.super Lde/innosystec/unrar/unpack/d;


# static fields
.field public static a:[I


# instance fields
.field private aA:Z

.field private aB:I

.field private aC:I

.field private final an:Lde/innosystec/unrar/unpack/ppm/b;

.field private ao:I

.field private ap:Lde/innosystec/unrar/unpack/vm/b;

.field private aq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/e;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/e;",
            ">;"
        }
    .end annotation
.end field

.field private as:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private at:I

.field private au:Z

.field private av:[B

.field private aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

.field private ax:Z

.field private ay:J

.field private az:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/innosystec/unrar/unpack/b;->a:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0xe
        0x0
        0xc
    .end array-data
.end method

.method public constructor <init>(Lde/innosystec/unrar/unpack/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/d;-><init>()V

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/b;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/b;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/b;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/b;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    iput-object p1, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->ax:Z

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->c:Z

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->d:Z

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->f:Z

    return-void
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/g;)V
    .locals 6

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v0

    const/4 v1, 0x6

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    long-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x24

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    long-to-int v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x28

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/g;)V

    :cond_0
    return-void
.end method

.method private a([BII)V
    .locals 4

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->h:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int v0, v0

    :goto_1
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v1, p1, p2, v0}, Lde/innosystec/unrar/unpack/a;->b([BII)V

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    goto :goto_0

    :cond_1
    move v0, p3

    goto :goto_1
.end method

.method private a(ILjava/util/List;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    new-instance v5, Lde/innosystec/unrar/unpack/vm/a;

    invoke-direct {v5}, Lde/innosystec/unrar/unpack/vm/a;-><init>()V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->l()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const v0, 0x8000

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->o()[B

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/b;->a()V

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_3

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->r()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v1, v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->at:I

    move v1, v0

    goto :goto_1

    :cond_4
    iput v1, p0, Lde/innosystec/unrar/unpack/b;->at:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    move v2, v0

    :goto_3
    new-instance v6, Lde/innosystec/unrar/unpack/e;

    invoke-direct {v6}, Lde/innosystec/unrar/unpack/e;-><init>()V

    if-eqz v2, :cond_8

    const/16 v0, 0x400

    if-le v1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3

    :cond_6
    new-instance v0, Lde/innosystec/unrar/unpack/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/e;-><init>()V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/e;->d(I)V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->c(I)V

    move-object v3, v0

    :goto_4
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->c(I)V

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1b

    add-int/lit16 v0, v0, 0x102

    move v4, v0

    :goto_5
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/2addr v0, v4

    const v7, 0x3fffff

    and-int/2addr v0, v7

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->b(I)V

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_9

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->a(I)V

    :goto_6
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v7, p0, Lde/innosystec/unrar/unpack/b;->k:I

    if-eq v0, v7, :cond_b

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v7, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v7

    const v7, 0x3fffff

    and-int/2addr v0, v7

    if-gt v0, v4, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->a(Z)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v0

    const/4 v1, 0x3

    const v4, 0x3c000

    aput v4, v0, v1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v4

    aput v4, v0, v1

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x9

    const/4 v0, 0x7

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    const/4 v0, 0x0

    :goto_8
    const/4 v4, 0x7

    if-ge v0, v4, :cond_c

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v4, v1

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v4

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v7

    aput v7, v4, v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    invoke-virtual {v6, v1}, Lde/innosystec/unrar/unpack/e;->d(I)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->c(I)V

    move-object v3, v0

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_9
    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->a(I)V

    goto/16 :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_c
    if-eqz v2, :cond_11

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v1

    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_d

    if-nez v1, :cond_e

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_e
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_10

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lde/innosystec/unrar/unpack/vm/b;->a([BILde/innosystec/unrar/unpack/vm/g;)V

    :cond_11
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/g;->a(Ljava/util/List;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/g;->a(I)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_12

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->h()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/g;->a(Ljava/util/Vector;)V

    :cond_12
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_13

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_13
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x7

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->g()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v2, v1, v3, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x1c

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x2c

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    const/4 v0, 0x0

    :goto_c
    const/16 v2, 0x10

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, v0, 0x30

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/vm/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_16
    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v1

    const/16 v0, 0x1fc0

    if-le v1, v0, :cond_17

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_17
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x40

    if-ge v0, v2, :cond_18

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v3, v1, 0x40

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_18
    const/16 v2, 0x40

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1a

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_19
    add-int v4, v2, v0

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v6

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_1b
    move v4, v0

    goto/16 :goto_5
.end method

.method private c(II)V
    .locals 4

    const/4 v3, 0x1

    if-eq p2, p1, :cond_0

    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/b;->f:Z

    :cond_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    neg-int v1, p1

    const v2, 0x3fffff

    and-int/2addr v1, v2

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/b;->a([BII)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lde/innosystec/unrar/unpack/b;->a([BII)V

    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/b;->d:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    sub-int v1, p2, p1

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/b;->a([BII)V

    goto :goto_0
.end method

.method private d(II)V
    .locals 0

    iput p2, p0, Lde/innosystec/unrar/unpack/b;->M:I

    iput p1, p0, Lde/innosystec/unrar/unpack/b;->N:I

    return-void
.end method

.method private e(II)V
    .locals 7

    const v6, 0x3fffff

    const v2, 0x3ffefc

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v2, v3

    move v0, v1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v2, v3

    move v0, v1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    add-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v6

    aget-byte v0, v5, v0

    aput-byte v0, v3, v4

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v6

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    move v0, v1

    move p1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private f(Z)V
    .locals 11

    const/16 v0, 0x3c

    new-array v5, v0, [I

    const/16 v0, 0x3c

    new-array v6, v0, [B

    const/4 v0, 0x1

    aget v0, v5, v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lde/innosystec/unrar/unpack/b;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    sget-object v4, Lde/innosystec/unrar/unpack/b;->a:[I

    aget v7, v4, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    aput v3, v5, v1

    int-to-byte v8, v2

    aput-byte v8, v6, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x1

    shl-int/2addr v8, v2

    add-int/2addr v3, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->az:Z

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->c:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/b;->a(Z)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    if-nez v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->aA:Z

    if-nez v0, :cond_2

    :cond_6
    :goto_3
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    const v1, 0x3fffff

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->b:I

    if-le v0, v1, :cond_8

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_4
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->q()V

    goto :goto_2

    :cond_8
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v1

    const v1, 0x3fffff

    and-int/2addr v0, v1

    const/16 v1, 0x104

    if-ge v0, v1, :cond_9

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->q()V

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->c:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->az:Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    sget-object v1, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->aA:Z

    goto :goto_4

    :cond_a
    iget v1, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    if-ne v0, v1, :cond_11

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->t()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_b
    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->v()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_c
    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v10

    :goto_5
    const/4 v4, 0x4

    if-ge v3, v4, :cond_f

    if-nez v0, :cond_f

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_d

    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v7, 0x3

    if-ne v3, v7, :cond_e

    and-int/lit16 v1, v4, 0xff

    goto :goto_6

    :cond_e
    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    goto :goto_6

    :cond_f
    if-nez v0, :cond_7

    add-int/lit8 v0, v1, 0x20

    add-int/lit8 v1, v2, 0x2

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_3

    :cond_10
    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_3

    :cond_11
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->Z:Lde/innosystec/unrar/unpack/decode/e;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto/16 :goto_3

    :cond_13
    const/16 v1, 0x10f

    if-lt v0, v1, :cond_1b

    sget-object v1, Lde/innosystec/unrar/unpack/b;->ae:[I

    add-int/lit16 v2, v0, -0x10f

    aget v0, v1, v2

    add-int/lit8 v0, v0, 0x3

    sget-object v1, Lde/innosystec/unrar/unpack/b;->af:[B

    aget-byte v1, v1, v2

    if-lez v1, :cond_14

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v2

    rsub-int/lit8 v3, v1, 0x10

    ushr-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_14
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->aa:Lde/innosystec/unrar/unpack/decode/d;

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v2

    aget v1, v5, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v6, v2

    if-lez v3, :cond_16

    const/16 v4, 0x9

    if-le v2, v4, :cond_1a

    const/4 v2, 0x4

    if-le v3, v2, :cond_15

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v2

    rsub-int/lit8 v4, v3, 0x14

    ushr-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, -0x4

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_15
    iget v2, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    if-lez v2, :cond_18

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    add-int/2addr v1, v2

    :cond_16
    :goto_7
    const/16 v2, 0x2000

    if-lt v1, v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v1

    const-wide/32 v8, 0x40000

    cmp-long v2, v2, v8

    if-ltz v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/b;->g(I)V

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->d(II)V

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_3

    :cond_18
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->ab:Lde/innosystec/unrar/unpack/decode/f;

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_19

    const/16 v2, 0xf

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    add-int/2addr v1, v2

    goto :goto_7

    :cond_19
    add-int/2addr v1, v2

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    goto :goto_7

    :cond_1a
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v2

    rsub-int/lit8 v4, v3, 0x10

    ushr-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/b;->c(I)V

    goto :goto_7

    :cond_1b
    const/16 v1, 0x100

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->s()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    :cond_1c
    const/16 v1, 0x101

    if-ne v0, v1, :cond_1d

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->u()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    :cond_1d
    const/16 v1, 0x102

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->N:I

    if-eqz v0, :cond_6

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->N:I

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->M:I

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_3

    :cond_1e
    const/16 v1, 0x107

    if-ge v0, v1, :cond_21

    add-int/lit16 v0, v0, -0x103

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v1, v1, v0

    :goto_8
    if-lez v0, :cond_1f

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ac:Lde/innosystec/unrar/unpack/decode/h;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v2

    sget-object v0, Lde/innosystec/unrar/unpack/b;->ae:[I

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x2

    sget-object v3, Lde/innosystec/unrar/unpack/b;->af:[B

    aget-byte v2, v3, v2

    if-lez v2, :cond_20

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v3

    rsub-int/lit8 v4, v2, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_20
    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->d(II)V

    invoke-direct {p0, v0, v1}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_3

    :cond_21
    const/16 v1, 0x110

    if-ge v0, v1, :cond_6

    sget-object v1, Lde/innosystec/unrar/unpack/b;->ai:[I

    add-int/lit16 v2, v0, -0x107

    aget v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lde/innosystec/unrar/unpack/b;->aj:[I

    aget v1, v1, v2

    if-lez v1, :cond_22

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v2

    rsub-int/lit8 v3, v1, 0x10

    ushr-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_22
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/b;->g(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lde/innosystec/unrar/unpack/b;->d(II)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_3
.end method

.method private f(I)[B
    .locals 1

    :try_start_0
    new-array v0, p1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    div-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/b;->f(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private g(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v2, v2, v5

    aput v2, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v1, v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aput p1, v0, v3

    return-void
.end method

.method private p()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    :cond_0
    :goto_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    array-length v2, v1

    int-to-long v2, v2

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/b;->h:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v6, v2}, Lde/innosystec/unrar/unpack/a;->a([BII)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    int-to-long v2, v0

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/b;->h:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v2, v1, v6, v0}, Lde/innosystec/unrar/unpack/a;->b([BII)V

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    long-to-int v0, v2

    goto :goto_1
.end method

.method private q()V
    .locals 14

    const/4 v13, 0x0

    const/16 v12, 0x40

    const v11, 0x3fffff

    const/4 v3, 0x0

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v1

    and-int/2addr v0, v11

    move v2, v3

    move v4, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_14

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    if-nez v0, :cond_0

    move v5, v2

    move v2, v4

    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->a(Z)V

    move v5, v2

    move v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->b()I

    move-result v7

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v5

    sub-int v6, v7, v4

    and-int/2addr v6, v11

    if-ge v6, v1, :cond_15

    if-eq v4, v7, :cond_2

    invoke-direct {p0, v4, v7}, Lde/innosystec/unrar/unpack/b;->c(II)V

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v1, v7

    and-int/2addr v1, v11

    move v4, v7

    :cond_2
    if-gt v5, v1, :cond_11

    add-int v1, v7, v5

    and-int v6, v1, v11

    if-lt v7, v6, :cond_3

    if-nez v6, :cond_4

    :cond_3
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    invoke-virtual {v1, v3, v4, v7, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    :goto_2
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->e()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/innosystec/unrar/unpack/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v4

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->setSize(I)V

    move v0, v3

    :goto_3
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x40

    if-ge v0, v5, :cond_5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    add-int/lit8 v8, v0, 0x40

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/high16 v1, 0x400000

    sub-int/2addr v1, v7

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    invoke-virtual {v4, v3, v5, v7, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    invoke-virtual {v4, v1, v5, v3, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/vm/g;)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_7

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->setSize(I)V

    :cond_6
    move v0, v3

    :goto_4
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x40

    if-ge v0, v5, :cond_8

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v5

    add-int/lit8 v8, v0, 0x40

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_8
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->d()I

    move-result v5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/g;->e()I

    move-result v1

    new-array v0, v1, [B

    move v4, v3

    :goto_5
    if-ge v4, v1, :cond_9

    iget-object v8, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/b;->b()[B

    move-result-object v8

    add-int v9, v5, v4

    aget-byte v8, v8, v9

    aput-byte v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v4, v2, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    move v5, v2

    move-object v2, v0

    :goto_6
    add-int/lit8 v0, v5, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    add-int/lit8 v1, v5, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/innosystec/unrar/unpack/e;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->b()I

    move-result v0

    if-ne v0, v7, :cond_a

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0, v2, v3, v4}, Lde/innosystec/unrar/unpack/a;->b([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->f:Z

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    int-to-long v8, v4

    add-long/2addr v0, v8

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v6

    and-int v1, v0, v11

    move v2, v6

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v0, v3, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/g;

    move-result-object v8

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_c

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    move v0, v3

    :goto_7
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    if-ge v0, v1, :cond_c

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    add-int/lit8 v4, v0, 0x40

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    invoke-direct {p0, v8}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/vm/g;)V

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_e

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_d
    move v0, v3

    :goto_8
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    if-ge v0, v1, :cond_f

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v1

    add-int/lit8 v4, v0, 0x40

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_f
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->d()I

    move-result v9

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->e()I

    move-result v2

    new-array v1, v2, [B

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_10

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/g;->f()Ljava/util/Vector;

    move-result-object v0

    add-int v10, v9, v4

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v1, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v5, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v4, v0, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    move v5, v0

    move-object v2, v1

    goto/16 :goto_6

    :cond_11
    :goto_a
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->a(Z)V

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    iput v4, p0, Lde/innosystec/unrar/unpack/b;->l:I

    :goto_b
    return-void

    :cond_14
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    invoke-direct {p0, v4, v0}, Lde/innosystec/unrar/unpack/b;->c(II)V

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    goto :goto_b

    :cond_15
    move v5, v2

    move v2, v4

    goto/16 :goto_1
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->at:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private s()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->c(I)V

    move v3, v2

    move v4, v1

    :goto_0
    if-nez v4, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    if-nez v3, :cond_4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_2
    return v1

    :cond_1
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/b;->c(I)V

    move v3, v1

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private t()Z
    .locals 11

    const/16 v0, 0x14

    new-array v3, v0, [B

    const/16 v0, 0x194

    new-array v4, v0, [B

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->g:I

    add-int/lit8 v1, v1, -0x19

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->al:I

    rsub-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/32 v6, 0x8000

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    invoke-virtual {v0, p0, v1}, Lde/innosystec/unrar/unpack/ppm/b;->a(Lde/innosystec/unrar/unpack/b;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v2, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iput-object v2, p0, Lde/innosystec/unrar/unpack/b;->aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    const/4 v2, 0x0

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    const/4 v2, 0x0

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    const-wide/16 v6, 0x4000

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->d(I)V

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xc

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->d(I)V

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xc

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->d(I)V

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aput-byte v1, v3, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x2

    move v2, v0

    move v0, v1

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_4

    array-length v0, v3

    if-ge v2, v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    const/4 v5, 0x0

    aput-byte v5, v3, v2

    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v2, -0x1

    goto :goto_2

    :cond_5
    int-to-byte v1, v1

    aput-byte v1, v3, v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ad:Lde/innosystec/unrar/unpack/decode/b;

    const/16 v2, 0x14

    invoke-virtual {p0, v3, v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v3, 0x194

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_d

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->g:I

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_7

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ad:Lde/innosystec/unrar/unpack/decode/b;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    :cond_8
    move v1, v0

    goto :goto_4

    :cond_9
    const/16 v2, 0x12

    if-ge v0, v2, :cond_b

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_5
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_8

    if-ge v0, v3, :cond_8

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v4, v1

    aput-byte v1, v4, v0

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    move v1, v2

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0xb

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_5

    :cond_b
    const/16 v2, 0x12

    if-ne v0, v2, :cond_c

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_6
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_8

    if-ge v0, v3, :cond_8

    add-int/lit8 v1, v0, 0x1

    const/4 v5, 0x0

    aput-byte v5, v4, v0

    move v0, v1

    move v1, v2

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0xb

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_6

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->g:I

    if-le v0, v1, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->Z:Lde/innosystec/unrar/unpack/decode/e;

    const/16 v2, 0x12b

    invoke-virtual {p0, v4, v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x12b

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->aa:Lde/innosystec/unrar/unpack/decode/d;

    const/16 v2, 0x3c

    invoke-virtual {p0, v4, v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x167

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ab:Lde/innosystec/unrar/unpack/decode/f;

    const/16 v2, 0x11

    invoke-virtual {p0, v4, v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x178

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ac:Lde/innosystec/unrar/unpack/decode/h;

    const/16 v2, 0x1c

    invoke-virtual {p0, v4, v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    array-length v1, v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    aget-byte v2, v4, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private u()Z
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x8

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/b;->c(I)V

    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget v5, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v6, p0, Lde/innosystec/unrar/unpack/b;->g:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_2

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_2

    move v0, v1

    :goto_2
    return v0

    :cond_1
    if-ne v0, v7, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->c(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/b;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v4, v0}, Lde/innosystec/unrar/unpack/b;->a(ILjava/util/List;I)Z

    move-result v0

    goto :goto_2
.end method

.method private v()Z
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v3

    if-ne v3, v6, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    :cond_2
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_7

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v5

    if-ne v5, v6, :cond_6

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    if-ne v0, v6, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v2

    if-ne v2, v6, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v2

    goto :goto_1

    :cond_6
    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0, v3, v4, v0}, Lde/innosystec/unrar/unpack/b;->a(ILjava/util/List;I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->am:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    return-void
.end method

.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->p()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->p()V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/b;->b(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/b;->d(Z)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/b;->f(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lde/innosystec/unrar/unpack/b;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->az:Z

    return-void
.end method

.method protected a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->m:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->M:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->N:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->r()V

    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->l()V

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/b;->aA:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->g:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->b:I

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/b;->e(Z)V

    return-void
.end method

.method public a([B)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/b;->f(I)[B

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    :goto_0
    iput v1, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->a(Z)V

    return-void

    :cond_0
    iput-object p1, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->ax:Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->c()V

    :cond_0
    return-void
.end method
