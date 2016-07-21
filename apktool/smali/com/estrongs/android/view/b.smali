.class public Lcom/estrongs/android/view/b;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/b;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/b;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/b;->c(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/b;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/view/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/recycler/a;

    iget-object v0, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/recycler/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    new-instance v1, Lcom/estrongs/android/view/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/e;-><init>(Lcom/estrongs/android/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/estrongs/android/view/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/f;-><init>(Lcom/estrongs/android/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/view/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/b;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/al;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/b;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/estrongs/fs/b/al;->i:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08070a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->f(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/b;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->f(I)V

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    const/4 v1, 0x7

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/b;->P()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/b;->a(I)V

    :cond_0
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/b;->P()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->a(I)V

    :cond_3
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ak(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->al(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a_(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a_(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/b;->e()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->e()V

    return-void
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    return-void
.end method

.method public m()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/b;->aA()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0080

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const v0, 0x7f0e069a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e069b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/b;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0e069c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    const v2, 0x7f0e0201

    invoke-virtual {p0, v2}, Lcom/estrongs/android/view/b;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/estrongs/android/view/b;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/view/b;->d:Landroid/widget/ImageView;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v2, v4}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const v0, 0x7f0200aa

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Lcom/estrongs/android/view/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/c;-><init>(Lcom/estrongs/android/view/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0454

    invoke-static {v3, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/view/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/d;-><init>(Lcom/estrongs/android/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/b;->C:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/b;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/b;->ag:Landroid/app/Activity;

    const v4, 0x7f080127

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
