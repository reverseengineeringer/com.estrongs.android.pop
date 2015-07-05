.class public final Lcom/estrongs/android/pop/app/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f;->d:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/estrongs/android/pop/app/h;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/app/h;-><init>(Lcom/estrongs/android/pop/app/c;)V

    const v0, 0x7f0a003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/h;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/h;->b:Landroid/widget/TextView;

    const v0, 0x7f0a003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/h;->c:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/estrongs/android/pop/app/h;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020217

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/estrongs/android/pop/app/h;->c:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, v2, Lcom/estrongs/android/pop/app/h;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/pop/app/g;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/g;-><init>(Lcom/estrongs/android/pop/app/f;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->b(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iget-object v3, v2, Lcom/estrongs/android/pop/app/h;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v2, Lcom/estrongs/android/pop/app/h;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f;->d:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f;->d:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/h;

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
