.class public Lcom/estrongs/android/view/music/MusicPlayerView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/view/music/MusicProgressView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Lcom/estrongs/android/view/music/m;

.field private j:Lcom/estrongs/android/pop/app/c/i;

.field private k:Lcom/estrongs/android/ui/theme/at;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/view/music/MusicPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/view/music/MusicPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const v2, 0x7f0d00fe

    iput-object p1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->getLayout()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->k:Lcom/estrongs/android/ui/theme/at;

    const v0, 0x7f0e024e

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/music/MusicProgressView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    const v0, 0x7f0e0254

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0255

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0250

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->e:Landroid/widget/ImageView;

    const v0, 0x7f0e0251

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    const v0, 0x7f0e0252

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->g:Landroid/widget/ImageView;

    const v0, 0x7f0e0253

    invoke-static {p0, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/music/MusicProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->k:Lcom/estrongs/android/ui/theme/at;

    const v1, 0x7f0202ec

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->l:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->k:Lcom/estrongs/android/ui/theme/at;

    const v1, 0x7f0202eb

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->k:Lcom/estrongs/android/ui/theme/at;

    const v1, 0x7f0202ea

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->g:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    invoke-interface {v0}, Lcom/estrongs/android/view/music/m;->s()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    invoke-interface {v0}, Lcom/estrongs/android/view/music/m;->t()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    invoke-interface {v0}, Lcom/estrongs/android/view/music/m;->u()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->a:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isFromMusicGridViewPlayerView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getLayout()I
    .locals 1

    const v0, 0x7f03005f

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/view/music/MusicPlayerView;->a(JJ)V

    const v0, 0x7f020195

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    invoke-static {v0, v1}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;)V

    return-void
.end method

.method public a(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/view/music/MusicProgressView;->a(JJ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->h:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    if-ne p1, v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->e()V

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMusicPath(Ljava/lang/String;)V
    .locals 3

    const v2, 0x7f020195

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->k:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/music/MusicProgressView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/n/a;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/n/a;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNextIvClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setOnPlayerViewListener(Lcom/estrongs/android/view/music/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->i:Lcom/estrongs/android/view/music/m;

    return-void
.end method

.method public setPlayItem(Lcom/estrongs/android/pop/app/c/i;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->j:Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/app/c/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/fs/impl/n/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/n/a;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->b:Lcom/estrongs/android/view/music/MusicProgressView;

    const v2, 0x7f020195

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setPreIvClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicPlayerView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method
