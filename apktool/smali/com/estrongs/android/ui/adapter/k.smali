.class public Lcom/estrongs/android/ui/adapter/k;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/estrongs/android/ui/adapter/r;",
        ">;"
    }
.end annotation


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

.field private f:Lcom/estrongs/android/ui/theme/at;

.field private g:Lcom/estrongs/android/view/co;

.field private h:Lcom/estrongs/android/view/cp;

.field private i:Lcom/estrongs/android/appinfo/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/adapter/k;->e:Z

    new-instance v0, Lcom/estrongs/android/ui/adapter/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/l;-><init>(Lcom/estrongs/android/ui/adapter/k;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/ui/adapter/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/m;-><init>(Lcom/estrongs/android/ui/adapter/k;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->i:Lcom/estrongs/android/appinfo/p;

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/k;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/k;)Lcom/estrongs/android/view/co;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->g:Lcom/estrongs/android/view/co;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->c()[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/adapter/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/n;-><init>(Lcom/estrongs/android/ui/adapter/k;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a([Ljava/io/File;Lcom/estrongs/android/appinfo/r;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/adapter/k;)Lcom/estrongs/android/view/cp;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->h:Lcom/estrongs/android/view/cp;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/ui/adapter/r;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/adapter/r;

    invoke-direct {v2, v1}, Lcom/estrongs/android/ui/adapter/r;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e046b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e046c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/UsageImageView;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->b:Lcom/estrongs/android/widget/UsageImageView;

    const v0, 0x7f0e046d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->c:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/k;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e046e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->d:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/k;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e046f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->e:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/k;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0470

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->f:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/k;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/r;->g:Landroid/widget/CheckBox;

    return-object v2
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->c(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/adapter/r;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/diskusage/e;->b(I)V

    iget-object v1, p1, Lcom/estrongs/android/ui/adapter/r;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/ui/adapter/r;->b:Lcom/estrongs/android/widget/UsageImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/UsageImageView;->setRate(F)V

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/diskusage/e;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/k;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/k;->i:Lcom/estrongs/android/appinfo/p;

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Ljava/io/File;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->a:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget-object v2, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-boolean v4, p0, Lcom/estrongs/android/ui/adapter/k;->e:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->g:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/k;->d:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/k;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p1, Lcom/estrongs/android/ui/adapter/r;->g:Landroid/widget/CheckBox;

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    const v5, 0x7f02027f

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/adapter/p;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/adapter/p;-><init>(Lcom/estrongs/android/ui/adapter/k;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->h:Lcom/estrongs/android/view/cp;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/adapter/q;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/adapter/q;-><init>(Lcom/estrongs/android/ui/adapter/k;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_1
    return-void

    :cond_2
    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->g:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/r;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/view/co;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/k;->g:Lcom/estrongs/android/view/co;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/k;->h:Lcom/estrongs/android/view/cp;

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

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/k;->d:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/adapter/k;->e:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/k;->c:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/ui/adapter/r;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/ui/adapter/r;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/k;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/ui/adapter/r;

    move-result-object v0

    return-object v0
.end method
