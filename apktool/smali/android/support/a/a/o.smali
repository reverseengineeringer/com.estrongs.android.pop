.class Landroid/support/a/a/o;
.super Landroid/support/a/a/q;


# instance fields
.field a:I

.field b:F

.field c:I

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/a/a/q;-><init>()V

    iput v2, p0, Landroid/support/a/a/o;->a:I

    iput v0, p0, Landroid/support/a/a/o;->b:F

    iput v2, p0, Landroid/support/a/a/o;->c:I

    iput v1, p0, Landroid/support/a/a/o;->d:F

    iput v1, p0, Landroid/support/a/a/o;->f:F

    iput v0, p0, Landroid/support/a/a/o;->g:F

    iput v1, p0, Landroid/support/a/a/o;->h:F

    iput v0, p0, Landroid/support/a/a/o;->i:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/a/a/o;->j:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/a/a/o;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/a/a/o;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/support/a/a/o;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/a/a/q;-><init>(Landroid/support/a/a/q;)V

    iput v2, p0, Landroid/support/a/a/o;->a:I

    iput v0, p0, Landroid/support/a/a/o;->b:F

    iput v2, p0, Landroid/support/a/a/o;->c:I

    iput v1, p0, Landroid/support/a/a/o;->d:F

    iput v1, p0, Landroid/support/a/a/o;->f:F

    iput v0, p0, Landroid/support/a/a/o;->g:F

    iput v1, p0, Landroid/support/a/a/o;->h:F

    iput v0, p0, Landroid/support/a/a/o;->i:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/a/a/o;->j:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/a/a/o;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/a/a/o;->l:F

    iget-object v0, p1, Landroid/support/a/a/o;->p:[I

    iput-object v0, p0, Landroid/support/a/a/o;->p:[I

    iget v0, p1, Landroid/support/a/a/o;->a:I

    iput v0, p0, Landroid/support/a/a/o;->a:I

    iget v0, p1, Landroid/support/a/a/o;->b:F

    iput v0, p0, Landroid/support/a/a/o;->b:F

    iget v0, p1, Landroid/support/a/a/o;->d:F

    iput v0, p0, Landroid/support/a/a/o;->d:F

    iget v0, p1, Landroid/support/a/a/o;->c:I

    iput v0, p0, Landroid/support/a/a/o;->c:I

    iget v0, p1, Landroid/support/a/a/o;->e:I

    iput v0, p0, Landroid/support/a/a/o;->e:I

    iget v0, p1, Landroid/support/a/a/o;->f:F

    iput v0, p0, Landroid/support/a/a/o;->f:F

    iget v0, p1, Landroid/support/a/a/o;->g:F

    iput v0, p0, Landroid/support/a/a/o;->g:F

    iget v0, p1, Landroid/support/a/a/o;->h:F

    iput v0, p0, Landroid/support/a/a/o;->h:F

    iget v0, p1, Landroid/support/a/a/o;->i:F

    iput v0, p0, Landroid/support/a/a/o;->i:F

    iget-object v0, p1, Landroid/support/a/a/o;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/a/a/o;->j:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Landroid/support/a/a/o;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/a/a/o;->k:Landroid/graphics/Paint$Join;

    iget v0, p1, Landroid/support/a/a/o;->l:F

    iput v0, p0, Landroid/support/a/a/o;->l:F

    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/o;->p:[I

    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/a/a/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroid/support/a/a/o;->n:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/support/a/a/f;->a(Ljava/lang/String;)[Landroid/support/a/a/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/o;->m:[Landroid/support/a/a/i;

    :cond_2
    const-string v0, "fillColor"

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/a/a/o;->c:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->c:I

    const-string v0, "fillAlpha"

    const/16 v1, 0xc

    iget v2, p0, Landroid/support/a/a/o;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->f:F

    const-string v0, "strokeLineCap"

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/o;->j:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/o;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/o;->j:Landroid/graphics/Paint$Cap;

    const-string v0, "strokeLineJoin"

    const/16 v1, 0x9

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/o;->k:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/o;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/o;->k:Landroid/graphics/Paint$Join;

    const-string v0, "strokeMiterLimit"

    const/16 v1, 0xa

    iget v2, p0, Landroid/support/a/a/o;->l:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->l:F

    const-string v0, "strokeColor"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/a/a/o;->a:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->a:I

    const-string v0, "strokeAlpha"

    const/16 v1, 0xb

    iget v2, p0, Landroid/support/a/a/o;->d:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->d:F

    const-string v0, "strokeWidth"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/a/a/o;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->b:F

    const-string v0, "trimPathEnd"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/a/a/o;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->h:F

    const-string v0, "trimPathOffset"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/a/a/o;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->i:F

    const-string v0, "trimPathStart"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/a/a/o;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/a/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->g:F

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Landroid/support/a/a/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/a/a/k;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Landroid/support/a/a/o;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
