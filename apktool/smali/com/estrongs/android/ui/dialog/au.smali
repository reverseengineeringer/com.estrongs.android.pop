.class Lcom/estrongs/android/ui/dialog/au;
.super Lcom/estrongs/android/view/ea;


# instance fields
.field a:Landroid/widget/RadioButton;

.field b:Landroid/widget/RadioButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field final synthetic g:Lcom/estrongs/android/ui/dialog/ap;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/ap;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/au;->g:Lcom/estrongs/android/ui/dialog/ap;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->a:Landroid/widget/RadioButton;

    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->b:Landroid/widget/RadioButton;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->f:Landroid/widget/EditText;

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/av;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/av;-><init>(Lcom/estrongs/android/ui/dialog/au;Lcom/estrongs/android/ui/dialog/ap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/aw;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/aw;-><init>(Lcom/estrongs/android/ui/dialog/au;Lcom/estrongs/android/ui/dialog/ap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->a:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ax;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ax;-><init>(Lcom/estrongs/android/ui/dialog/au;Lcom/estrongs/android/ui/dialog/ap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->b:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ay;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ay;-><init>(Lcom/estrongs/android/ui/dialog/au;Lcom/estrongs/android/ui/dialog/ap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/au;->k(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/au;->ad:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030016

    return v0
.end method
