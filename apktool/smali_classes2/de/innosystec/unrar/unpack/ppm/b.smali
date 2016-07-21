.class public Lde/innosystec/unrar/unpack/ppm/b;
.super Ljava/lang/Object;


# static fields
.field private static w:[I


# instance fields
.field private final A:Lde/innosystec/unrar/unpack/ppm/j;

.field private final B:Lde/innosystec/unrar/unpack/ppm/k;

.field private final C:Lde/innosystec/unrar/unpack/ppm/k;

.field private final D:Lde/innosystec/unrar/unpack/ppm/c;

.field private final E:Lde/innosystec/unrar/unpack/ppm/c;

.field private final F:Lde/innosystec/unrar/unpack/ppm/c;

.field private final G:Lde/innosystec/unrar/unpack/ppm/c;

.field private final H:[I

.field private a:[[Lde/innosystec/unrar/unpack/ppm/i;

.field private b:Lde/innosystec/unrar/unpack/ppm/i;

.field private c:Lde/innosystec/unrar/unpack/ppm/c;

.field private d:Lde/innosystec/unrar/unpack/ppm/c;

.field private e:Lde/innosystec/unrar/unpack/ppm/c;

.field private f:Lde/innosystec/unrar/unpack/ppm/j;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:I

.field private r:I

.field private s:I

.field private t:[[I

.field private u:Lde/innosystec/unrar/unpack/ppm/e;

.field private v:Lde/innosystec/unrar/unpack/ppm/l;

.field private final x:Lde/innosystec/unrar/unpack/ppm/j;

.field private final y:Lde/innosystec/unrar/unpack/ppm/j;

.field private final z:Lde/innosystec/unrar/unpack/ppm/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/b;->w:[I

    return-void

    :array_0
    .array-data 4
        0x3cdd
        0x1f3f
        0x59bf
        0x48f3
        0x64a1
        0x5abc
        0x6632
        0x6051
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x40

    const/16 v3, 0x100

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lde/innosystec/unrar/unpack/ppm/i;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lde/innosystec/unrar/unpack/ppm/i;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    const/16 v0, 0x80

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->t:[[I

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/e;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/l;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/l;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->x:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->y:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->z:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->A:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/k;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/k;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->B:Lde/innosystec/unrar/unpack/ppm/k;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/k;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/k;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->C:Lde/innosystec/unrar/unpack/ppm/k;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->D:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->E:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->F:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->G:Lde/innosystec/unrar/unpack/ppm/c;

    new-array v0, v4, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->d:Lde/innosystec/unrar/unpack/ppm/c;

    return-void
.end method

.method private a(ZLde/innosystec/unrar/unpack/ppm/j;)I
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/b;->C:Lde/innosystec/unrar/unpack/ppm/k;

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->x:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v5

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->D:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v6

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v2

    invoke-virtual {v6, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->E:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v7

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v2

    invoke-virtual {v7, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->y:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v8

    if-nez p1, :cond_10

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    aput v3, v2, v1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v2

    if-nez v2, :cond_f

    move v3, v0

    move v2, v0

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    move v3, v0

    :goto_1
    if-nez v3, :cond_1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    if-eq v3, v0, :cond_4

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v9

    if-eq v3, v9, :cond_1

    :cond_0
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v9

    if-ne v3, v9, :cond_0

    :cond_1
    :goto_2
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v3

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v9

    if-eq v3, v9, :cond_5

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    :cond_2
    :goto_3
    if-nez v2, :cond_6

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    :cond_3
    :goto_4
    return v1

    :cond_4
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v10

    aput v10, v9, v2

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v9

    aget-byte v3, v3, v9

    invoke-virtual {v4, v3}, Lde/innosystec/unrar/unpack/ppm/k;->a(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lde/innosystec/unrar/unpack/ppm/k;->d(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    if-eq v3, v0, :cond_c

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v7

    if-le v3, v7, :cond_3

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v7

    if-eq v3, v7, :cond_8

    :cond_7
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v7

    if-ne v3, v7, :cond_7

    :cond_8
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    mul-int/lit8 v8, v3, 0x2

    if-gt v8, v7, :cond_b

    mul-int/lit8 v3, v3, 0x5

    if-le v3, v7, :cond_a

    :goto_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/ppm/k;->b(I)V

    move v0, v2

    :cond_9
    :goto_6
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    invoke-virtual {v5, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6, p0, v5, v4}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/k;)I

    move-result v2

    invoke-virtual {v6, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_9

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    goto/16 :goto_4

    :cond_a
    move v0, v1

    goto :goto_5

    :cond_b
    mul-int/lit8 v0, v3, 0x2

    mul-int/lit8 v3, v7, 0x3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v3, v7, 0x2

    div-int/2addr v0, v3

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/ppm/k;->b(I)V

    move v0, v2

    goto :goto_6

    :cond_d
    move v2, v3

    move v3, v1

    goto/16 :goto_1

    :cond_e
    move v3, v1

    goto/16 :goto_1

    :cond_f
    move v3, v1

    move v2, v0

    goto/16 :goto_0

    :cond_10
    move v3, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method private i(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->t()V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    aput v3, v1, v3

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    move v1, v3

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x4

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    const/16 v2, 0xf5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    add-int/lit8 v4, v1, 0xb

    const/4 v5, 0x6

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    move v4, v1

    :goto_3
    const/16 v5, 0x100

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    aput v1, v5, v4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_4
    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_5
    const/16 v1, 0xc0

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    add-int/lit8 v2, v0, 0x40

    const/16 v3, 0x8

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->b:Lde/innosystec/unrar/unpack/ppm/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/i;->b(I)V

    return-void
.end method

.method private t()V
    .locals 9

    const/16 v5, 0x100

    const/16 v8, 0x80

    const/16 v0, 0xc

    const/4 v1, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->i()V

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    if-ge v2, v0, :cond_0

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->e()I

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->b(I)V

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/ppm/c;->a(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/unpack/ppm/a;->a(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v8}, Lde/innosystec/unrar/unpack/ppm/l;->b(I)I

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/a;->b_(I)V

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/j;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    mul-int/lit8 v4, v0, 0x6

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_4

    move v2, v1

    :goto_2
    const/16 v0, 0x8

    if-ge v2, v0, :cond_3

    move v0, v1

    :goto_3
    const/16 v4, 0x40

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/b;->t:[[I

    aget-object v4, v4, v3

    add-int v5, v2, v0

    sget-object v6, Lde/innosystec/unrar/unpack/ppm/b;->w:[I

    aget v6, v6, v2

    add-int/lit8 v7, v3, 0x2

    div-int/2addr v6, v7

    rsub-int v6, v6, 0x4000

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_4
    const/16 v0, 0x19

    if-ge v2, v0, :cond_6

    move v0, v1

    :goto_5
    const/16 v3, 0x10

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    mul-int/lit8 v4, v2, 0x5

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/i;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    return-void
.end method

.method private u()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private v()V
    .locals 1

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->t()V

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    return-void
.end method

.method private w()V
    .locals 14

    const/4 v13, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/b;->B:Lde/innosystec/unrar/unpack/ppm/k;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/k;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->z:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v6

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->A:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->F:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v7

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->G:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v8

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v3

    invoke-virtual {v7, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v3

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_2

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    if-eq v3, v1, :cond_4

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-static {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->d()Lde/innosystec/unrar/unpack/ppm/j;

    :cond_1
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v3, 0x73

    if-ge v0, v3, :cond_2

    invoke-virtual {v6, v9}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    :cond_2
    :goto_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {p0, v1, v6}, Lde/innosystec/unrar/unpack/ppm/b;->a(ZLde/innosystec/unrar/unpack/ppm/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    invoke-virtual {v6, v1}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v3

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->b()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v0

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/l;->f()I

    move-result v3

    if-lt v0, v3, :cond_6

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v3

    if-gt v0, v3, :cond_7

    invoke-direct {p0, v2, v6}, Lde/innosystec/unrar/unpack/ppm/b;->a(ZLde/innosystec/unrar/unpack/ppm/j;)I

    move-result v0

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/k;->d(I)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto :goto_1

    :cond_7
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    if-nez v0, :cond_8

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->d(I)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v9

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v10, v0, v3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    :goto_3
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    if-eq v0, v3, :cond_18

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v11

    if-eq v11, v1, :cond_e

    and-int/lit8 v0, v11, 0x1

    if-nez v0, :cond_a

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v4

    ushr-int/lit8 v12, v11, 0x1

    invoke-virtual {v3, v4, v12}, Lde/innosystec/unrar/unpack/ppm/l;->a(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/a;->b_(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/k;->a(Lde/innosystec/unrar/unpack/ppm/c;)V

    goto :goto_2

    :cond_a
    mul-int/lit8 v0, v11, 0x2

    if-ge v0, v9, :cond_b

    move v4, v1

    :goto_4
    mul-int/lit8 v0, v11, 0x4

    if-gt v0, v9, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v3

    mul-int/lit8 v12, v11, 0x8

    if-gt v3, v12, :cond_d

    move v3, v1

    :goto_6
    and-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    :goto_7
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    mul-int/2addr v3, v0

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v0

    add-int v4, v10, v0

    mul-int/lit8 v0, v4, 0x6

    if-ge v3, v0, :cond_14

    if-le v3, v4, :cond_12

    move v0, v1

    :goto_8
    add-int/lit8 v12, v0, 0x1

    mul-int/lit8 v0, v4, 0x4

    if-lt v3, v0, :cond_13

    move v0, v1

    :goto_9
    add-int/2addr v0, v12

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    :goto_a
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    mul-int/lit8 v4, v11, 0x6

    add-int/2addr v3, v4

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6, v8}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/c;)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a(I)V

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/c;->a(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v0

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    goto/16 :goto_3

    :cond_b
    move v4, v2

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_d
    move v3, v2

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->b(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lde/innosystec/unrar/unpack/ppm/a;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_10

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    :goto_b
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/b;->h:I

    add-int/2addr v4, v0

    if-le v9, v13, :cond_11

    move v0, v1

    :goto_c
    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/a;->a(I)V

    goto/16 :goto_7

    :cond_10
    const/16 v0, 0x78

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    goto :goto_b

    :cond_11
    move v0, v2

    goto :goto_c

    :cond_12
    move v0, v2

    goto/16 :goto_8

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    mul-int/lit8 v0, v4, 0x9

    if-lt v3, v0, :cond_15

    move v0, v1

    :goto_d
    add-int/lit8 v12, v0, 0x4

    mul-int/lit8 v0, v4, 0xc

    if-lt v3, v0, :cond_16

    move v0, v1

    :goto_e
    add-int/2addr v12, v0

    mul-int/lit8 v0, v4, 0xf

    if-lt v3, v0, :cond_17

    move v0, v1

    :goto_f
    add-int/2addr v0, v12

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    goto/16 :goto_a

    :cond_15
    move v0, v2

    goto :goto_d

    :cond_16
    move v0, v2

    goto :goto_e

    :cond_17
    move v0, v2

    goto :goto_f

    :cond_18
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()Lde/innosystec/unrar/unpack/ppm/l;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/b;I)Z
    .locals 8

    const/16 v7, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v2

    and-int/lit16 v5, v2, 0xff

    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_2

    move v4, v0

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v2

    move v3, v2

    :goto_1
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/b;->a(I)V

    :cond_0
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v2, p1}, Lde/innosystec/unrar/unpack/ppm/e;->a(Lde/innosystec/unrar/unpack/b;)V

    if-eqz v4, :cond_7

    and-int/lit8 v2, v5, 0x1f

    add-int/lit8 v2, v2, 0x1

    if-le v2, v7, :cond_9

    add-int/lit8 v2, v2, -0x10

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x10

    move v4, v2

    :goto_2
    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->c()V

    :cond_1
    :goto_3
    return v1

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->d()I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/l;->a(I)Z

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->d:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/i;

    invoke-direct {v2}, Lde/innosystec/unrar/unpack/ppm/i;-><init>()V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->b:Lde/innosystec/unrar/unpack/ppm/i;

    move v3, v1

    :goto_4
    const/16 v2, 0x19

    if-ge v3, v2, :cond_6

    move v2, v1

    :goto_5
    if-ge v2, v7, :cond_5

    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    aget-object v5, v5, v3

    new-instance v6, Lde/innosystec/unrar/unpack/ppm/i;

    invoke-direct {v6}, Lde/innosystec/unrar/unpack/ppm/i;-><init>()V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_6
    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/ppm/b;->i(I)V

    :cond_7
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v2

    if-eqz v2, :cond_8

    :goto_6
    move v1, v0

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v4, v2

    goto :goto_2
.end method

.method public b()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->g()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->g()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, p0}, Lde/innosystec/unrar/unpack/ppm/c;->d(Lde/innosystec/unrar/unpack/ppm/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->c()V

    :goto_2
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->d()V

    :cond_2
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->g()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v1

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, p0}, Lde/innosystec/unrar/unpack/ppm/c;->c(Lde/innosystec/unrar/unpack/ppm/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->c()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, p0}, Lde/innosystec/unrar/unpack/ppm/c;->b(Lde/innosystec/unrar/unpack/ppm/b;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v0

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->d()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->w()V

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    if-nez v1, :cond_5

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->u()V

    goto :goto_3
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/b;->a(I)V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    return-void
.end method

.method public c()[[Lde/innosystec/unrar/unpack/ppm/i;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    return-object v0
.end method

.method public d()Lde/innosystec/unrar/unpack/ppm/i;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->b:Lde/innosystec/unrar/unpack/ppm/i;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->h:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    return-void
.end method

.method public g(I)V
    .locals 1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->i()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/b;->f(I)V

    return-void
.end method

.method public g()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    return v0
.end method

.method public h(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->s:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->s:I

    return v0
.end method

.method public l()[[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->t:[[I

    return-object v0
.end method

.method public m()Lde/innosystec/unrar/unpack/ppm/e;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    return-object v0
.end method

.method public n()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    return-object v0
.end method

.method public o()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    return-object v0
.end method

.method public p()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    return-object v0
.end method

.method public q()Lde/innosystec/unrar/unpack/ppm/j;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    return-object v0
.end method

.method public r()[B
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelPPM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  numMasked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  initEsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  orderFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  maxOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  runLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  initRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  escCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  prevSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  foundState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  coder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  subAlloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
