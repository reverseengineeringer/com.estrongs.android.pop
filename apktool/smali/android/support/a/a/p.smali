.class Landroid/support/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Matrix;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/graphics/Matrix;

.field private k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->b:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->a:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/a/a/p;->c:F

    iput v1, p0, Landroid/support/a/a/p;->d:F

    iput v1, p0, Landroid/support/a/a/p;->e:F

    iput v2, p0, Landroid/support/a/a/p;->f:F

    iput v2, p0, Landroid/support/a/a/p;->g:F

    iput v1, p0, Landroid/support/a/a/p;->h:F

    iput v1, p0, Landroid/support/a/a/p;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/a/a/p;Landroid/support/v4/e/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/a/a/p;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->b:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->a:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/a/a/p;->c:F

    iput v1, p0, Landroid/support/a/a/p;->d:F

    iput v1, p0, Landroid/support/a/a/p;->e:F

    iput v2, p0, Landroid/support/a/a/p;->f:F

    iput v2, p0, Landroid/support/a/a/p;->g:F

    iput v1, p0, Landroid/support/a/a/p;->h:F

    iput v1, p0, Landroid/support/a/a/p;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    iget v0, p1, Landroid/support/a/a/p;->c:F

    iput v0, p0, Landroid/support/a/a/p;->c:F

    iget v0, p1, Landroid/support/a/a/p;->d:F

    iput v0, p0, Landroid/support/a/a/p;->d:F

    iget v0, p1, Landroid/support/a/a/p;->e:F

    iput v0, p0, Landroid/support/a/a/p;->e:F

    iget v0, p1, Landroid/support/a/a/p;->f:F

    iput v0, p0, Landroid/support/a/a/p;->f:F

    iget v0, p1, Landroid/support/a/a/p;->g:F

    iput v0, p0, Landroid/support/a/a/p;->g:F

    iget v0, p1, Landroid/support/a/a/p;->h:F

    iput v0, p0, Landroid/support/a/a/p;->h:F

    iget v0, p1, Landroid/support/a/a/p;->i:F

    iput v0, p0, Landroid/support/a/a/p;->i:F

    iget-object v0, p1, Landroid/support/a/a/p;->l:[I

    iput-object v0, p0, Landroid/support/a/a/p;->l:[I

    iget-object v0, p1, Landroid/support/a/a/p;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    iget v0, p1, Landroid/support/a/a/p;->k:I

    iput v0, p0, Landroid/support/a/a/p;->k:I

    iget-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p1, Landroid/support/a/a/p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/support/a/a/p;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/support/a/a/p;

    iget-object v2, p0, Landroid/support/a/a/p;->a:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/a/a/p;

    invoke-direct {v4, v0, p2}, Landroid/support/a/a/p;-><init>(Landroid/support/a/a/p;Landroid/support/v4/e/a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Landroid/support/a/a/o;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/support/a/a/o;

    check-cast v0, Landroid/support/a/a/o;

    invoke-direct {v2, v0}, Landroid/support/a/a/o;-><init>(Landroid/support/a/a/o;)V

    move-object v0, v2

    :goto_2
    iget-object v2, p0, Landroid/support/a/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/support/a/a/q;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/a/a/q;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v2, v0, Landroid/support/a/a/n;

    if-eqz v2, :cond_4

    new-instance v2, Landroid/support/a/a/n;

    check-cast v0, Landroid/support/a/a/n;

    invoke-direct {v2, v0}, Landroid/support/a/a/n;-><init>(Landroid/support/a/a/n;)V

    move-object v0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method static synthetic a(Landroid/support/a/a/p;)I
    .locals 1

    iget v0, p0, Landroid/support/a/a/p;->k:I

    return v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/p;->l:[I

    const-string v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/a/a/p;->c:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->c:F

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/a/a/p;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->d:F

    const/4 v0, 0x2

    iget v1, p0, Landroid/support/a/a/p;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->e:F

    const-string v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/a/a/p;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->f:F

    const-string v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/a/a/p;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->g:F

    const-string v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/a/a/p;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->h:F

    const-string v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/a/a/p;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/p;->i:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Landroid/support/a/a/p;->b()V

    return-void
.end method

.method static synthetic b(Landroid/support/a/a/p;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/p;->b:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/a/a/p;->d:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/a/a/p;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/a/a/p;->f:F

    iget v2, p0, Landroid/support/a/a/p;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/a/a/p;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/a/a/p;->h:F

    iget v2, p0, Landroid/support/a/a/p;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/a/a/p;->i:F

    iget v3, p0, Landroid/support/a/a/p;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static synthetic c(Landroid/support/a/a/p;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/p;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Landroid/support/a/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/a/a/k;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Landroid/support/a/a/p;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
