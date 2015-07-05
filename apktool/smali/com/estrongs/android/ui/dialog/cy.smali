.class public Lcom/estrongs/android/ui/dialog/cy;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/a/g;

.field private b:Lcom/estrongs/android/ui/dialog/cg;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/dialog/cy;->a(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/cy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/NaviListView;

    new-instance v2, Lcom/estrongs/android/ui/dialog/cz;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/cz;-><init>(Lcom/estrongs/android/ui/dialog/cy;Lcom/estrongs/android/ui/view/NaviListView;)V

    new-instance v3, Lcom/estrongs/android/ui/a/g;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/estrongs/android/ui/a/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/android/ui/a/g;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setItemsCanFocus(Z)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/da;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/da;-><init>(Lcom/estrongs/android/ui/dialog/cy;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b0464

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->M()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    const v3, 0x7f0b0350

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    const v3, 0x7f0b0466

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->f(Ljava/util/List;)V

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
