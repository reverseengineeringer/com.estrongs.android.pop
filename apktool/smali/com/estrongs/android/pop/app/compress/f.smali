.class Lcom/estrongs/android/pop/app/compress/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v3, Lcom/estrongs/android/pop/app/compress/g;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/compress/g;-><init>(Lcom/estrongs/android/pop/app/compress/f;Z)V

    new-instance v0, Lcom/estrongs/android/widget/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080724

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/f;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/h;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/compress/h;-><init>(Lcom/estrongs/android/pop/app/compress/f;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->j()V

    return-void
.end method
