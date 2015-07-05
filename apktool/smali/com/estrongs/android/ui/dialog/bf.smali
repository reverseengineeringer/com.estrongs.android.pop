.class public Lcom/estrongs/android/ui/dialog/bf;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->c:Landroid/view/View;

    const v1, 0x7f0a0401

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/estrongs/android/ui/a/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/bg;-><init>(Lcom/estrongs/android/ui/dialog/bf;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bf;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/dialog/ct;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v7

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    const v1, 0x7f0b049e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    const v5, 0x7f0b049f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    new-instance v0, Lcom/estrongs/android/ui/a/di;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/a/di;-><init>(Landroid/content/Context;[Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;IZ)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/bh;

    invoke-direct {v0, p0, p1, p2, v7}, Lcom/estrongs/android/ui/dialog/bh;-><init>(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;Lcom/estrongs/android/ui/dialog/cg;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/bf;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bf;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/bf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/j/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fake"

    const-string v2, "/"

    invoke-static {p1, v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/estrongs/android/ui/dialog/bi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/bi;-><init>(Lcom/estrongs/android/ui/dialog/bf;)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/j;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/estrongs/android/ui/pcs/j;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v1, p1, p2}, Lcom/estrongs/android/ui/pcs/j;->a(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/pcs/j;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/bf;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/bf;->c()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/bf;->a(ILjava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nettype"

    const-string v3, "pcs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ostype"

    const-string v3, "qq"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "editServer"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x100101d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->a:Lcom/estrongs/android/ui/dialog/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bf;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method
