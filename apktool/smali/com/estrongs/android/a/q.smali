.class public Lcom/estrongs/android/a/q;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field a:Lcom/estrongs/fs/h;

.field b:Lcom/estrongs/android/a/t;

.field c:I

.field d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/a/t;)V
    .locals 6

    const v5, 0x7f0b0563

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/estrongs/android/a/q;->c:I

    iput-object p2, p0, Lcom/estrongs/android/a/q;->a:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/a/q;->b:Lcom/estrongs/android/a/t;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/a/q;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a01b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b03b5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Ljava/lang/String;)V

    const v0, 0x7f0a01bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b03b6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Ljava/lang/String;)V

    const v0, 0x7f0a01b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/a/q;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0b001e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/a/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/a/r;-><init>(Lcom/estrongs/android/a/q;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/a/q;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b02aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/a/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/a/s;-><init>(Lcom/estrongs/android/a/q;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/a/q;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b0432

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/a/q;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0439

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Lcom/estrongs/fs/h;)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/a/q;->setCancelable(Z)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/a/q;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/estrongs/fs/h;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/a/q;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->E()Ljava/text/DateFormat;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a01b7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0a01b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0a01bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/a/q;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/a/q;->b:Lcom/estrongs/android/a/t;

    iget v1, p0, Lcom/estrongs/android/a/q;->c:I

    iget-object v2, p0, Lcom/estrongs/android/a/q;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/a/t;->a(IZ)V

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
