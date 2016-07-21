.class public Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/dianxinos/lockscreen/ui/k;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/k;-><init>(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->h:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a()V

    return-void
.end method

.method private a(II)I
    .locals 0

    if-le p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->j:I

    return v0
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;I)I
    .locals 0

    iput p1, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->j:I

    return p1
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a(II)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ad;->digital_time_display:I

    invoke-static {v0, v1, p0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private b(II)I
    .locals 2

    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a(II)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, p2, :cond_2

    add-int/lit8 p1, p1, -0x7

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->f:I

    return v0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;I)I
    .locals 0

    iput p1, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->i:I

    return p1
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b(II)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->j:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->j:I

    :goto_0
    iget v2, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->i:I

    if-lez v2, :cond_0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->i:I

    :cond_0
    const-string v2, ""

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->i:I

    return v0
.end method

.method static synthetic d(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->g:I

    return v0
.end method

.method static synthetic e(Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0, p0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->digital_time_text_hours:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->digital_time_text_hours_lable:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->digital_time_text_minutes:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->digital_time_text_minutes_lable:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->setFocusable(Z)V

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->setDescendantFocusability(I)V

    return-void
.end method

.method public setOnDigitalClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DxDigitalTimeDisplay;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
