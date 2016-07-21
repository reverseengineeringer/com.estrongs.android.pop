.class public Lcom/estrongs/android/pop/app/network/EsNetworkActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;

# interfaces
.implements Lcom/estrongs/android/l/g;
.implements Lcom/estrongs/android/l/j;
.implements Lcom/estrongs/android/l/n;
.implements Lcom/estrongs/android/l/q;


# instance fields
.field a:Landroid/net/wifi/WifiConfiguration;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/estrongs/android/ui/dialog/le;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/estrongs/android/l/k;

.field private o:Lcom/estrongs/android/l/a;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ListView;

.field private t:Landroid/widget/BaseAdapter;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/estrongs/android/ui/theme/at;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->u:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->v:Z

    return-void
.end method

.method private a(Landroid/view/View;Lcom/estrongs/android/pop/app/network/i;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0301a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/estrongs/android/pop/app/network/i;->b:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/estrongs/android/pop/app/network/i;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->x:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e025a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/estrongs/android/pop/app/network/i;->c:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/estrongs/android/pop/app/network/i;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->x:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/estrongs/android/pop/app/network/i;->d:Landroid/widget/ImageView;

    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    return-object v1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;Landroid/view/View;Lcom/estrongs/android/pop/app/network/i;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/network/i;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->o:Lcom/estrongs/android/l/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;Lcom/estrongs/android/ui/dialog/le;)Lcom/estrongs/android/ui/dialog/le;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->d:Lcom/estrongs/android/ui/dialog/le;

    return-object p1
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/d/a;->n()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "play"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "files_selected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/d/a;->G()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->n:Lcom/estrongs/android/l/k;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/ui/dialog/le;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->d:Lcom/estrongs/android/ui/dialog/le;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v3, 0x0

    const v5, 0x7f020344

    const v4, 0x7f020342

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300af

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03003d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0e0179

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f0e017f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f0e017c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0e017a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0e0181

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0e0180

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0e017d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    new-instance v3, Lcom/estrongs/android/pop/app/network/a;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/network/a;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0182

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    new-instance v3, Lcom/estrongs/android/pop/app/network/b;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/network/b;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e017b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    new-instance v3, Lcom/estrongs/android/pop/app/network/c;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/network/c;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0178

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/estrongs/android/pop/app/network/d;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/network/d;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e017e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/estrongs/android/pop/app/network/e;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/network/e;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0e0128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->r:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/network/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/network/f;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->t:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->t:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->r:Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/pop/app/network/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/network/g;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    const v6, 0x7f080745

    const v5, 0x7f020178

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f080739

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0805c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->v:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->o:Lcom/estrongs/android/l/a;

    invoke-virtual {v0}, Lcom/estrongs/android/l/a;->d()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    :cond_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/l/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080737

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080738

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->finish()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08074f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08074f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f080744

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f080743

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0805c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f080734

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->v:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->u:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0802c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5

    const v4, 0x7f08073c

    const v2, 0x7f080750

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/l/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v1, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/l/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0802cb

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->finish()V

    :cond_1
    :goto_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080741

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f08073e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0805b5

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0805c9

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_a
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_b
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02044b

    const v2, 0x7f080381

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/network/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/network/h;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 6

    const v5, 0x7f08073e

    const v4, 0x7f02017b

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f08074c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f08074d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->u:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f080747

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f08073a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f08073b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->u:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->v:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f08073f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->q:Landroid/widget/ImageView;

    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->t:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080736

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080740

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->w:Z

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->x:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->w:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "files_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->c:Landroid/view/LayoutInflater;

    :try_start_0
    new-instance v0, Lcom/estrongs/android/l/k;

    invoke-direct {v0, p0, p0, p0, p0}, Lcom/estrongs/android/l/k;-><init>(Landroid/content/Context;Lcom/estrongs/android/l/n;Lcom/estrongs/android/l/j;Lcom/estrongs/android/l/q;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->n:Lcom/estrongs/android/l/k;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->n:Lcom/estrongs/android/l/k;

    invoke-virtual {v0}, Lcom/estrongs/android/l/k;->a()V

    new-instance v0, Lcom/estrongs/android/l/a;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/l/a;-><init>(Landroid/content/Context;Lcom/estrongs/android/l/g;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->o:Lcom/estrongs/android/l/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->o:Lcom/estrongs/android/l/a;

    invoke-virtual {v0}, Lcom/estrongs/android/l/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f0802cf

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->setTitle(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e()V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->w:Z

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/ArrayList;Z)V

    :goto_1
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f080748

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->n:Lcom/estrongs/android/l/k;

    invoke-virtual {v0}, Lcom/estrongs/android/l/k;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->o:Lcom/estrongs/android/l/a;

    invoke-virtual {v0}, Lcom/estrongs/android/l/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
