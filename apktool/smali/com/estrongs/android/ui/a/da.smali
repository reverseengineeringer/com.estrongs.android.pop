.class public Lcom/estrongs/android/ui/a/da;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Lcom/estrongs/android/ui/theme/al;

.field b:Lcom/estrongs/android/pop/app/fz;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/al;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/a/da;->c:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/da;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/da;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/da;->a:Lcom/estrongs/android/ui/theme/al;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/da;->b:Lcom/estrongs/android/pop/app/fz;

    return-void
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/a/da;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/da;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/da;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/da;->d:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x7f0201d6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/da;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a0297

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/da;->a:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0202c9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/da;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/a/al;

    if-nez v1, :cond_1

    :goto_0
    return-object p2

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/ao;->b()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/a/da;->a:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202ca

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const v0, 0x7f0a0298

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0299

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/al;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/al;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/a/da;->a:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202c2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f02003a

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/da;->d:Ljava/util/List;

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/estrongs/android/ui/a/da;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/al;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/da;->b:Lcom/estrongs/android/pop/app/fz;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/fz;->a(Lcom/estrongs/android/pop/app/a/al;)V

    :cond_0
    return-void
.end method
