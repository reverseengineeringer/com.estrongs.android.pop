.class public Lcom/estrongs/android/ui/e/cb;
.super Lcom/estrongs/android/ui/e/ck;


# instance fields
.field private h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/os/Handler;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/ck;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/cb;->h()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cb;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;II)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private h()V
    .locals 4

    const v3, 0x7f0d0159

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->h:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cb;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v2, 0x7f02046e

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->t:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v2, 0x7f020434

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->u:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v2, 0x7f020433

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->v:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0e01f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->i:Landroid/view/View;

    const v2, 0x7f0e01f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->i:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/cc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/cc;-><init>(Lcom/estrongs/android/ui/e/cb;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->k:Landroid/view/View;

    const v2, 0x7f0e01f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->k:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/cd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/cd;-><init>(Lcom/estrongs/android/ui/e/cb;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->m:Landroid/view/View;

    const v2, 0x7f0e01fa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->n:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cb;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->m:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/ce;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/ce;-><init>(Lcom/estrongs/android/ui/e/cb;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->o:Landroid/view/View;

    const v2, 0x7f0e01fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cb;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->o:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/cf;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/cf;-><init>(Lcom/estrongs/android/ui/e/cb;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->q:Landroid/view/View;

    const v1, 0x7f0e01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cb;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cb;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->q:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/e/cg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/cg;-><init>(Lcom/estrongs/android/ui/e/cb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BottomMenu_AudioPlaying is used for PopAudioPlayer only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(I)V
    .locals 3

    const v2, 0x7f02043b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->l:Landroid/widget/ImageView;

    const v1, 0x7f0d00f8

    invoke-direct {p0, v0, v2, v1}, Lcom/estrongs/android/ui/e/cb;->a(Landroid/widget/ImageView;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->l:Landroid/widget/ImageView;

    const v1, 0x7f0d0159

    invoke-direct {p0, v0, v2, v1}, Lcom/estrongs/android/ui/e/cb;->a(Landroid/widget/ImageView;II)V

    goto :goto_0
.end method

.method public d(I)V
    .locals 4

    const v3, 0x7f0d00f8

    const v2, 0x7f020422

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->j:Landroid/widget/ImageView;

    const v1, 0x7f02044f

    invoke-direct {p0, v0, v1, v3}, Lcom/estrongs/android/ui/e/cb;->a(Landroid/widget/ImageView;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/ui/e/cb;->a(Landroid/widget/ImageView;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->j:Landroid/widget/ImageView;

    const v1, 0x7f0d0159

    invoke-direct {p0, v0, v2, v1}, Lcom/estrongs/android/ui/e/cb;->a(Landroid/widget/ImageView;II)V

    goto :goto_0
.end method
