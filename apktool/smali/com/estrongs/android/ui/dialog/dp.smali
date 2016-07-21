.class public Lcom/estrongs/android/ui/dialog/dp;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/EditText;

.field private e:Z

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/estrongs/android/ui/dialog/dp;->e:Z

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0e01ae

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->a:Landroid/widget/EditText;

    const v0, 0x7f0e034c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    if-eqz p2, :cond_0

    const v1, 0x7f0e034e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->d:Landroid/widget/EditText;

    :cond_0
    const v1, 0x7f0e0355

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f0e0356

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/dp;->b:Landroid/widget/CheckBox;

    const v2, 0x7f0e0357

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v3, 0x7f0e0358

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/estrongs/android/ui/dialog/dp;->c:Landroid/widget/CheckBox;

    const v3, 0x7f0e0351

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    if-eqz p2, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const v0, 0x7f0e01af

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/dq;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/dialog/dq;-><init>(Lcom/estrongs/android/ui/dialog/dp;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/dialog/dp;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/dr;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/dr;-><init>(Lcom/estrongs/android/ui/dialog/dp;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/ui/dialog/dp;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/ds;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ds;-><init>(Lcom/estrongs/android/ui/dialog/dp;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/ui/dialog/dp;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/dt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/dt;-><init>(Lcom/estrongs/android/ui/dialog/dp;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/dp;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->button_ok:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->button_ok:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/du;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/du;-><init>(Lcom/estrongs/android/ui/dialog/dp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/dv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/dv;-><init>(Lcom/estrongs/android/ui/dialog/dp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    const v0, 0x7f0e0350

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->g:Landroid/widget/CheckBox;

    const v0, 0x7f0e0353

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/ui/dialog/dw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/dw;-><init>(Lcom/estrongs/android/ui/dialog/dp;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f080394

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/dp;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/dp;->requestInputMethod()V

    return-void

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    const v0, 0x7f0e034f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/dp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/dp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/dp;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/dp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/dp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/dp;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/dp;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/dp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/dp;->h()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dp;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
