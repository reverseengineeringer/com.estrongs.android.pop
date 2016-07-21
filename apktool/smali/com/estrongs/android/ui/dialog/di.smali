.class Lcom/estrongs/android/ui/dialog/di;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/Dialog;

.field c:Landroid/widget/EditText;

.field d:Z

.field e:Lcom/estrongs/android/ui/dialog/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/di;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->e:Lcom/estrongs/android/ui/dialog/i;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/di;->b:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    const v1, 0x7f02031b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08037a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/dj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/dj;-><init>(Lcom/estrongs/android/ui/dialog/di;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Lcom/estrongs/android/ui/dialog/dk;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/dialog/dk;-><init>(Lcom/estrongs/android/ui/dialog/di;I)V

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/di;->e:Lcom/estrongs/android/ui/dialog/i;

    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    const v3, 0x7f08040b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    const v3, 0x7f08040a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/estrongs/android/ui/dialog/di;->d:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/di;->a:Landroid/app/Activity;

    const v3, 0x7f080409

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/di;->e:Lcom/estrongs/android/ui/dialog/i;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/di;->e:Lcom/estrongs/android/ui/dialog/i;

    invoke-interface {v1, v0}, Lcom/estrongs/android/ui/dialog/i;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    move v0, v2

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/di;->c:Landroid/widget/EditText;

    return-object v0
.end method
