.class Lcom/estrongs/android/ui/dialog/ek;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/Dialog;

.field c:Landroid/widget/EditText;

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/estrongs/android/ui/dialog/er;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/ek;->d:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/ek;->e:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ek;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->g:Lcom/estrongs/android/ui/dialog/er;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ek;->b:Landroid/app/Dialog;

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/dialog/ek;->a(Z)V

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ek;->h:Ljava/lang/String;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/el;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/el;-><init>(Lcom/estrongs/android/ui/dialog/ek;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Lcom/estrongs/android/ui/dialog/em;

    const/16 v2, 0xff

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/dialog/em;-><init>(Lcom/estrongs/android/ui/dialog/ek;I)V

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/en;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/en;-><init>(Lcom/estrongs/android/ui/dialog/ek;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ek;->g:Lcom/estrongs/android/ui/dialog/er;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ek;->e:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ek;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ek;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0xff

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    const v3, 0x7f0b024f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    const v3, 0x7f0b0222

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ek;->f:Z

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/estrongs/fs/util/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    const v3, 0x7f0b0223

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ek;->d:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "AUX"

    aput-object v0, v4, v1

    const-string v0, "CLOCK$"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v5, "CON"

    aput-object v5, v4, v0

    const-string v0, "NUL"

    aput-object v0, v4, v6

    const-string v0, "PRN"

    aput-object v0, v4, v7

    const/4 v0, 0x5

    const-string v5, "Thumbs.db"

    aput-object v5, v4, v0

    move v0, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_9

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_4

    const-string v4, "COM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/estrongs/fs/util/j;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v1

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    const v3, 0x7f0b0272

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->g:Lcom/estrongs/android/ui/dialog/er;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->g:Lcom/estrongs/android/ui/dialog/er;

    invoke-interface {v0, v3}, Lcom/estrongs/android/ui/dialog/er;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v1, v2

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    move v1, v2

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ek;->d:Z

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ek;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->h:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ek;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ek;->h:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
