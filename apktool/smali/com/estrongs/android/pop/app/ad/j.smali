.class public Lcom/estrongs/android/pop/app/ad/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/duapps/ad/f;

.field private b:Landroid/view/View;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/duapps/ad/f;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/ad/j;->a(Landroid/content/Context;)Landroid/view/View;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->k()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ad/j;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ad/j;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 6

    const v5, 0x7f0e00ca

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030023

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e00cb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setHeadlineView(Landroid/view/View;)V

    const v0, 0x7f0e00cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setImageView(Landroid/view/View;)V

    const v0, 0x7f0e00ce

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setBodyView(Landroid/view/View;)V

    const v0, 0x7f0e00cc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setIconView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&nbsp;"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v3}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v3}, Lcom/duapps/ad/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    const v3, 0x7f0200f8

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    const v3, 0x7f0200f7

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/c;->l()Lcom/duapps/ad/entity/a/c;

    move-result-object v0

    instance-of v2, v0, Lcom/duapps/ad/a/f;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/duapps/ad/a/f;

    invoke-virtual {v0}, Lcom/duapps/ad/a/f;->a()Lcom/duapps/ad/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/duapps/ad/a/e;->b:Lcom/google/android/gms/ads/formats/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    :cond_0
    return-object v1

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const v0, 0x7f0e00ca

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    const v3, 0x7f0200f8

    invoke-direct {p0, v0, v1, v3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const v0, 0x7f0e00cb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v1}, Lcom/duapps/ad/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e00ce

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v1}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v1}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v1}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0e00cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e00cc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v3}, Lcom/duapps/ad/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    const v3, 0x7f0200f7

    invoke-direct {p0, v0, v1, v3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_2
    move-object v0, v2

    :goto_3
    return-object v0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    const v3, 0x7f080094

    :try_start_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4
.end method

.method private d()Landroid/view/View;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030023

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e00cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setHeadlineView(Landroid/view/View;)V

    const v2, 0x7f0e00cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setImageView(Landroid/view/View;)V

    const v2, 0x7f0e00ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setBodyView(Landroid/view/View;)V

    const v2, 0x7f0e00cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    const v2, 0x7f0e00ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setLogoView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "&nbsp;"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v2}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v2}, Lcom/duapps/ad/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    const v3, 0x7f0200f7

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getLogoView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    const v3, 0x7f0200f8

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getLogoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/c;->l()Lcom/duapps/ad/entity/a/c;

    move-result-object v0

    instance-of v2, v0, Lcom/duapps/ad/a/f;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/duapps/ad/a/f;

    invoke-virtual {v0}, Lcom/duapps/ad/a/f;->a()Lcom/duapps/ad/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/duapps/ad/a/e;->a:Lcom/google/android/gms/ads/formats/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getLogoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/j;->c()Landroid/view/View;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/j;->d()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    const v1, 0x7f0e00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    const v2, 0x7f0e00cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/j;->d:Ljava/lang/String;

    const v3, 0x7f0200f8

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/ad/j;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->e:Ljava/lang/String;

    const v2, 0x7f0200f7

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/pop/app/ad/j;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/f;->a(Landroid/view/View;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "express"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/j;->a:Lcom/duapps/ad/f;

    invoke-virtual {v3}, Lcom/duapps/ad/f;->k()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mobula"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ad/j;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/ad/j;->c:J

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/j;->b:Landroid/view/View;

    return-object v0
.end method

.method public b()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ad/j;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
