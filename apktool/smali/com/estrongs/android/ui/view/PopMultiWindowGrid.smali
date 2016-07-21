.class public Lcom/estrongs/android/ui/view/PopMultiWindowGrid;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/os/Handler;

.field private f:Landroid/widget/ImageView;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->addView(Landroid/view/View;)V

    const v0, 0x7f0e03fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    const v0, 0x7f0e03fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->c:Landroid/widget/TextView;

    const v0, 0x7f0e03fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const v0, 0x7f0e03fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/view/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/bz;-><init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private a(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->g:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->g:I

    if-lt v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->g:I

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->g:I

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/d/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->g:I

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/ui/view/ca;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/view/ca;-><init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/ui/view/cb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/view/cb;-><init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/view/cc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/cc;-><init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->e:Landroid/os/Handler;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->g:I

    return-void
.end method
