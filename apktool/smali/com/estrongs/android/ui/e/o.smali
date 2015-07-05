.class public Lcom/estrongs/android/ui/e/o;
.super Lcom/estrongs/android/ui/e/cj;


# instance fields
.field private g:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/cj;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/o;->k()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/o;)Lcom/estrongs/android/pop/app/PopAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->g:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-object v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->g:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/o;->a(Landroid/view/View;)V

    const v0, 0x7f0a0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->h:Landroid/view/View;

    const v2, 0x7f0a0093

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->h:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/p;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/p;-><init>(Lcom/estrongs/android/ui/e/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->j:Landroid/view/View;

    const v2, 0x7f0a0095

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->j:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/q;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/q;-><init>(Lcom/estrongs/android/ui/e/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0096

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->l:Landroid/view/View;

    const v2, 0x7f0a0097

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->l:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/r;-><init>(Lcom/estrongs/android/ui/e/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->n:Landroid/view/View;

    const v2, 0x7f0a0099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->n:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/s;-><init>(Lcom/estrongs/android/ui/e/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->p:Landroid/view/View;

    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/o;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->p:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/e/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/t;-><init>(Lcom/estrongs/android/ui/e/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BottomMenu_AudioPlaying is used for PopAudioPlayer only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->o:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->o:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->k:Landroid/widget/ImageView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->k:Landroid/widget/ImageView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->k:Landroid/widget/ImageView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->m:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->m:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/o;->m:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
