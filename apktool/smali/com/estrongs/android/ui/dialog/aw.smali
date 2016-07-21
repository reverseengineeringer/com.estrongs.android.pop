.class Lcom/estrongs/android/ui/dialog/aw;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field a:Landroid/widget/RadioButton;

.field b:Landroid/widget/RadioButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field final synthetic g:Lcom/estrongs/android/ui/dialog/ar;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/ar;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/aw;->g:Lcom/estrongs/android/ui/dialog/ar;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f0e021e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->a:Landroid/widget/RadioButton;

    const v0, 0x7f0e0226

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->b:Landroid/widget/RadioButton;

    const v0, 0x7f0e021b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    const v0, 0x7f0e0223

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    const v0, 0x7f0e0228

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->f:Landroid/widget/EditText;

    const v0, 0x7f0e021a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ax;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ax;-><init>(Lcom/estrongs/android/ui/dialog/aw;Lcom/estrongs/android/ui/dialog/ar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0222

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ay;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ay;-><init>(Lcom/estrongs/android/ui/dialog/aw;Lcom/estrongs/android/ui/dialog/ar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->a:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/ui/dialog/az;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/az;-><init>(Lcom/estrongs/android/ui/dialog/aw;Lcom/estrongs/android/ui/dialog/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->b:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ba;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ba;-><init>(Lcom/estrongs/android/ui/dialog/aw;Lcom/estrongs/android/ui/dialog/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/aw;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aw;->ag:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030056

    return v0
.end method
