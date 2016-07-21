.class public Lcom/estrongs/android/ui/controller/aj;
.super Lcom/estrongs/android/ui/controller/a;


# instance fields
.field private A:Landroid/view/View;

.field public o:Z

.field public p:Lcom/estrongs/android/ui/view/ck;

.field public q:Lcom/estrongs/android/ui/e/ch;

.field private r:Landroid/widget/ProgressBar;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ProgressBar;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/Button;

.field private y:Landroid/text/TextWatcher;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->z:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    iput-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    return-void
.end method

.method private A()V
    .locals 5

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-instance v1, Lcom/estrongs/android/ui/controller/av;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/av;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnAddressBarClickListener(Lcom/estrongs/android/ui/addressbar/f;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-instance v1, Lcom/estrongs/android/ui/controller/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/be;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnAddressBarLongClickListener(Lcom/estrongs/android/ui/addressbar/g;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e048e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/aj;->e:Lcom/estrongs/android/ui/theme/at;

    const v4, 0x7f0d013e

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/controller/bf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/bf;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/controller/bg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/bg;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method private B()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e0491

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/aj;->e:Lcom/estrongs/android/ui/theme/at;

    const v4, 0x7f0d013e

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/controller/bh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/bh;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/controller/bi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/bi;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method private C()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e048d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/ui/controller/bj;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/bj;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    new-instance v3, Lcom/estrongs/android/ui/controller/bk;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/bk;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    iget-boolean v4, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-eqz v4, :cond_0

    const v4, 0x7f02026d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_0
    const v4, 0x7f02026e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/controller/aj;->e:Lcom/estrongs/android/ui/theme/at;

    const v6, 0x7f0d013e

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e0492

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/controller/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/al;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    new-instance v2, Lcom/estrongs/android/ui/controller/am;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/am;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method private E()V
    .locals 5

    const v4, 0x7f020401

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e05b9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e0246

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/controller/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/an;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0203fd

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/controller/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/ao;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/controller/ap;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/ap;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/controller/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/aq;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0203ff

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e0446

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/controller/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/ar;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Lcom/estrongs/android/view/cq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Lcom/estrongs/android/view/cq;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/cq;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private F()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e048c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private G()Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->y:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/controller/ba;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/ba;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->y:Landroid/text/TextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->y:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private H()Landroid/view/View$OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->m:Landroid/view/View$OnKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/controller/bb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/bb;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->m:Landroid/view/View$OnKeyListener;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->m:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method private I()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/controller/bd;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/controller/bd;-><init>(Lcom/estrongs/android/ui/controller/aj;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->n:Lcom/estrongs/android/ui/d/a;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->r:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(II)V
    .locals 7

    const/16 v6, 0xff

    const/16 v5, 0x78

    const/16 v2, 0x8

    const v4, 0x7f0e0446

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e05c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->L()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e05bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-lez p1, :cond_3

    const/4 v1, 0x3

    if-gt p1, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const v1, 0x7f0e05bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e(Z)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e048c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->t:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private f(Z)V
    .locals 13

    const/4 v12, 0x0

    const v11, 0x7f0d0159

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f080185

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0e0091

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0e0235

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->u:Landroid/widget/ProgressBar;

    if-nez v0, :cond_2

    const v0, 0x7f0e0237

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->u:Landroid/widget/ProgressBar;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const v0, 0x7f0e0236

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/ui/controller/as;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/as;-><init>(Lcom/estrongs/android/ui/controller/aj;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/estrongs/android/ui/controller/at;

    invoke-direct {v2, p0, v9}, Lcom/estrongs/android/ui/controller/at;-><init>(Lcom/estrongs/android/ui/controller/aj;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v8

    if-eqz v8, :cond_0

    const v0, 0x7f0e0232

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/FrameLayout;

    const v0, 0x7f0e0233

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Lcom/estrongs/android/view/cr;->f(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->G()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0239

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e023a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f020445

    invoke-virtual {v2, v3, v11}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, v8, Lcom/estrongs/android/ui/c/e;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    new-instance v1, Lcom/estrongs/android/ui/controller/au;

    invoke-direct {v1, p0, v8}, Lcom/estrongs/android/ui/controller/au;-><init>(Lcom/estrongs/android/ui/controller/aj;Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->G()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0e023c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e023d

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f02046e

    invoke-virtual {v2, v3, v11}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/estrongs/android/ui/controller/aw;

    invoke-direct {v1, p0, v8}, Lcom/estrongs/android/ui/controller/aw;-><init>(Lcom/estrongs/android/ui/controller/aj;Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->H()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    if-nez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/controller/ax;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v8}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, v9

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/controller/ax;-><init>(Lcom/estrongs/android/ui/controller/aj;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v8}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/f/l;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/controller/ay;

    invoke-direct {v0, p0, v8, p1}, Lcom/estrongs/android/ui/controller/ay;-><init>(Lcom/estrongs/android/ui/controller/aj;Lcom/estrongs/android/view/cr;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->d:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/aj;->c()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f030156

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae()Lcom/estrongs/android/ui/navigation/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setTabletSideBar(Landroid/view/View;)V

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->e:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e0241

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->A:Landroid/view/View;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e05c8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e0244

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->z:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/estrongs/android/ui/e/ch;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v2, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    invoke-direct {v0, v1, v2, v4}, Lcom/estrongs/android/ui/e/ch;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/e/ch;->d(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->l()Lcom/estrongs/android/ui/view/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->n()V

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e048f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f03005d

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae()Lcom/estrongs/android/ui/navigation/m;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public a(IIF)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a()Z

    move-result v2

    if-nez v2, :cond_2

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/aj;->z()Lcom/estrongs/android/ui/d/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/estrongs/android/ui/d/h;->d()Ljava/util/ArrayList;

    move-result-object v2

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/aj;->z()Lcom/estrongs/android/ui/d/i;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/estrongs/android/ui/d/h;->d()Ljava/util/ArrayList;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v7, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v8, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v8, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(I)Lcom/estrongs/android/view/cr;

    move-result-object v8

    invoke-virtual {v6}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/cr;Lcom/estrongs/android/ui/d/h;Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v7, v3, v5

    aget-object v8, v3, v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Lcom/estrongs/android/ui/d/h;->a(Ljava/util/ArrayList;)V

    :cond_5
    iget-object v6, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    move v0, v4

    :goto_3
    invoke-virtual {v6, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsScreenSwitching(Z)V

    cmpl-float v0, p3, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v2, v3, p3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Ljava/util/List;Ljava/util/List;F)V

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v3, v2, p3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Ljava/util/List;Ljava/util/List;F)V

    goto :goto_1

    :cond_8
    move-object v2, v3

    goto :goto_2
.end method

.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/controller/a;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/controller/a;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/ui/e/ch;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/aj;->j:I

    iput p2, p0, Lcom/estrongs/android/ui/controller/aj;->k:I

    iget v0, p0, Lcom/estrongs/android/ui/controller/aj;->j:I

    invoke-direct {p0, v0, p2}, Lcom/estrongs/android/ui/controller/aj;->a(II)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/controller/ak;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/controller/ak;-><init>(Lcom/estrongs/android/ui/controller/aj;Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/aj;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->r:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->A()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->C()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->D()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->E()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->I()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->B()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "paste_mode"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/e/a;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/e/a;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    :cond_1
    :goto_0
    const-string v0, "paste_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "paste_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 10

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/l;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0e0091

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/estrongs/android/ui/controller/az;

    invoke-direct {v1, p0, v9}, Lcom/estrongs/android/ui/controller/az;-><init>(Lcom/estrongs/android/ui/controller/aj;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    :goto_1
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->G()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aa()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    const v0, 0x7f0e0235

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/ch;->b(Z)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030159

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->c(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/estrongs/android/ui/controller/a;->g()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->u:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ck;->b()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/ch;->f(I)V

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/a;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->n:Lcom/estrongs/android/ui/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Z)V

    goto :goto_0
.end method

.method public h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->A:Landroid/view/View;

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->A:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bw(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->by(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/aj;->F()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/controller/aj;->e(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/aj;->b(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/aj;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/controller/aj;->f(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Z)V

    goto :goto_0
.end method

.method public p()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aj;->u:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->u:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/aj;->o:Z

    return v0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->j()V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->a(Z)V

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->m()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "normal_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    return-void
.end method

.method public v()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ck;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae()Lcom/estrongs/android/ui/navigation/m;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->p:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aj;->q:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->k()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method
