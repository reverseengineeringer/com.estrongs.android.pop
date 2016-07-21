.class public Lcom/estrongs/android/pop/app/cleaner/a/a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public d:Lcom/estrongs/android/ui/view/TripleStateCheckBox;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e047c

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->a:Landroid/widget/TextView;

    const v0, 0x7f0e047b

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0e047d

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->c:Landroid/view/View;

    const v0, 0x7f0e047e

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->d:Lcom/estrongs/android/ui/view/TripleStateCheckBox;

    const v0, 0x7f0e02c0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->e:Landroid/view/View;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0201f8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const v0, 0x7f02021c

    goto :goto_0
.end method
