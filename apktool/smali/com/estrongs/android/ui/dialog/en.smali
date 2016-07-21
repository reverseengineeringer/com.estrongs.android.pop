.class Lcom/estrongs/android/ui/dialog/en;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/Dialog;

.field c:Landroid/widget/EditText;

.field d:Z

.field e:Z

.field f:Lcom/estrongs/android/ui/dialog/eu;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/en;->d:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/en;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->f:Lcom/estrongs/android/ui/dialog/eu;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/en;->b:Landroid/app/Dialog;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/dialog/en;->a(Z)V

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/en;->g:Ljava/lang/String;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    const v1, 0x7f02031b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v4, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/eo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/eo;-><init>(Lcom/estrongs/android/ui/dialog/en;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ep;

    const/16 v2, 0xff

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/dialog/ep;-><init>(Lcom/estrongs/android/ui/dialog/en;I)V

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/eq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/eq;-><init>(Lcom/estrongs/android/ui/dialog/en;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/en;->f:Lcom/estrongs/android/ui/dialog/eu;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/en;->d:Z

    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    const v3, 0x7f080416

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    const v3, 0x7f080415

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/estrongs/android/ui/dialog/en;->e:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    const v3, 0x7f080414

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->f:Lcom/estrongs/android/ui/dialog/eu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->f:Lcom/estrongs/android/ui/dialog/eu;

    invoke-interface {v0, v2}, Lcom/estrongs/android/ui/dialog/eu;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    move v0, v1

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->g:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/en;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/en;->g:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
