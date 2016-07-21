.class public Lcom/dianxinos/lockscreen/ui/RealTimeView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/dianxinos/lockscreen/a/c;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/lockscreen/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:Lcom/nineoldandroids/a/ac;

.field private m:F

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/dianxinos/lockscreen/ui/m;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/m;-><init>(Lcom/dianxinos/lockscreen/ui/RealTimeView;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/RealTimeView;F)F
    .locals 0

    iput p1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->m:F

    return p1
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/RealTimeView;I)I
    .locals 0

    iput p1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h:I

    return p1
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/RealTimeView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/RealTimeView;Lcom/nineoldandroids/a/ac;)Lcom/nineoldandroids/a/ac;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/dianxinos/lockscreen/ad;->lock_screen_realtime_layout:I

    invoke-static {p1, v0, p0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/dianxinos/lockscreen/ac;->ls_realtime_content:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->b:Landroid/view/View;

    sget v0, Lcom/dianxinos/lockscreen/ac;->ls_realtime_icon:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->c:Landroid/widget/ImageView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->ls_realtime_des:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->ls_realtime_time:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->e:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->ls_realtime_title:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/dianxinos/lockscreen/ui/p;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/p;-><init>(Lcom/dianxinos/lockscreen/ui/RealTimeView;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->c()V

    return-void
.end method

.method private a(Lcom/dianxinos/lockscreen/a/d;)V
    .locals 6

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->c:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->d()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/dianxinos/lockscreen/a/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->b()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x1c

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "real time view refresh item, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - des: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - timeDes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    invoke-interface {p1}, Lcom/dianxinos/lockscreen/a/d;->d()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/dianxinos/lockscreen/a/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/RealTimeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/RealTimeView;Lcom/dianxinos/lockscreen/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/a/d;)V

    return-void
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/ui/RealTimeView;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->k:I

    return v0
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->e()Lcom/dianxinos/lockscreen/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/a/c;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayCard"

    const-string v1, "Real time refresh items is empty! error occurs"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "DisplayCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "real time title is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    invoke-interface {v2}, Lcom/dianxinos/lockscreen/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - item size is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/a/d;

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/a/d;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/nineoldandroids/a/ac;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/dianxinos/lockscreen/ui/RealTimeView;)F
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->m:F

    return v0
.end method

.method static synthetic g(Lcom/dianxinos/lockscreen/ui/RealTimeView;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h:I

    return v0
.end method

.method static synthetic h(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/dianxinos/lockscreen/ui/RealTimeView;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h:I

    return v0
.end method

.method static synthetic j(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/dianxinos/lockscreen/a/c;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->c()V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v0, v2, v3}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->n:Z

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->n:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->m()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->f()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->b()V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->l:Lcom/nineoldandroids/a/ac;

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d()V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g:Lcom/dianxinos/lockscreen/a/c;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->m:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/dianxinos/lockscreen/ui/RealTimeView;->k:I

    return-void
.end method
