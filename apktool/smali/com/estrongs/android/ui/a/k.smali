.class public Lcom/estrongs/android/ui/a/k;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/pop/app/diskusage/e;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/estrongs/android/ui/theme/al;

.field private g:Lcom/estrongs/android/appinfo/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/k;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/k;->e:Z

    new-instance v0, Lcom/estrongs/android/ui/a/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/l;-><init>(Lcom/estrongs/android/ui/a/k;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/k;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/ui/a/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/m;-><init>(Lcom/estrongs/android/ui/a/k;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/k;->g:Lcom/estrongs/android/appinfo/o;

    iput-object p1, p0, Lcom/estrongs/android/ui/a/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/k;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/k;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->c()[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/a/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/n;-><init>(Lcom/estrongs/android/ui/a/k;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a([Ljava/io/File;Lcom/estrongs/android/appinfo/q;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/a/k;->d:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/a/k;->e:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->c(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030088

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/p;

    if-nez v0, :cond_5

    new-instance v1, Lcom/estrongs/android/ui/a/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/p;-><init>(Lcom/estrongs/android/ui/a/k;)V

    const v0, 0x7f0a028e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/UsageImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/widget/UsageImageView;

    const v0, 0x7f0a0290

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0291

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->d:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0292

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->e:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->f:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a00a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/p;->g:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->b(I)V

    iget-object v2, v1, Lcom/estrongs/android/ui/a/p;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/widget/UsageImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/UsageImageView;->a(F)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/a/k;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/estrongs/android/ui/a/k;->g:Lcom/estrongs/android/appinfo/o;

    invoke-virtual {v2, v3, v0, v4}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Ljava/io/File;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/estrongs/android/ui/a/p;->a:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget-boolean v5, p0, Lcom/estrongs/android/ui/a/k;->e:Z

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/estrongs/android/ui/a/p;->g:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/estrongs/android/ui/a/k;->d:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/ui/a/k;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    iget-object v1, v1, Lcom/estrongs/android/ui/a/p;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v5, :cond_3

    const v1, 0x7f02012e

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2, v0, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcom/estrongs/android/ui/a/p;->g:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method
