.class public Lcom/estrongs/android/pop/app/DocumentExtModifyList;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/ap;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)Lcom/estrongs/android/pop/app/ap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a:Lcom/estrongs/android/pop/app/ap;

    return-object v0
.end method

.method private a()V
    .locals 2

    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->d:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->g(Ljava/util/List;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ap;

    invoke-direct {v1, p0, p0, v0}, Lcom/estrongs/android/pop/app/ap;-><init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a:Lcom/estrongs/android/pop/app/ap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->d:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ap;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->g(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ap;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/dialog/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/f;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/estrongs/android/pop/app/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/an;-><init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/f;->a(Lcom/estrongs/android/ui/dialog/i;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ao;-><init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/f;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/f;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->setContentView(I)V

    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->setTheme(I)V

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0472

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->c:Landroid/widget/TextView;

    const v1, 0x7f0b0473

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0470

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->setTitle(I)V

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/al;-><init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/am;-><init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
