.class public Lcom/estrongs/android/ui/e/j;
.super Lcom/estrongs/android/ui/e/cj;


# instance fields
.field private g:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/cj;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/j;->k()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/j;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->g:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->g:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/j;->a(Landroid/view/View;)V

    const v0, 0x7f0a0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->h:Landroid/view/View;

    const v2, 0x7f0a0093

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->h:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/k;-><init>(Lcom/estrongs/android/ui/e/j;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0096

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->j:Landroid/view/View;

    const v2, 0x7f0a0097

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->j:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/l;-><init>(Lcom/estrongs/android/ui/e/j;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->l:Landroid/view/View;

    const v2, 0x7f0a009b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->l:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/m;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/m;-><init>(Lcom/estrongs/android/ui/e/j;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->n:Landroid/widget/ImageView;

    const v0, 0x7f0a0021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->o:Landroid/widget/TextView;

    const v0, 0x7f0a00a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/j;->p:Landroid/widget/TextView;

    const v0, 0x7f0a00a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/n;-><init>(Lcom/estrongs/android/ui/e/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BottomMenu_AudioPlayList is used for PopAudioPlayer only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->k:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->k:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/j;->k:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
