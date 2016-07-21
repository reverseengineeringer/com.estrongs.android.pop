.class Lcom/estrongs/android/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-static {v0}, Lcom/estrongs/android/d/a;->b(Lcom/estrongs/android/d/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-static {v0}, Lcom/estrongs/android/d/a;->a(Lcom/estrongs/android/d/a;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    iget-object v0, v0, Lcom/estrongs/android/d/a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    iget-object v1, v1, Lcom/estrongs/android/d/a;->d:Landroid/app/Activity;

    const v2, 0x7f080715

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-static {v0}, Lcom/estrongs/android/d/a;->b(Lcom/estrongs/android/d/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-static {v0}, Lcom/estrongs/android/d/a;->c(Lcom/estrongs/android/d/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    iget-object v5, v1, Lcom/estrongs/android/d/a;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v2, v7, v0}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-static {v3}, Lcom/estrongs/android/d/a;->d(Lcom/estrongs/android/d/a;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->Q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->Q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v5}, Lcom/estrongs/fs/impl/adb/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/adb/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/estrongs/fs/impl/adb/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v6, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    iget-object v6, v6, Lcom/estrongs/android/d/a;->d:Landroid/app/Activity;

    invoke-static {v6}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v8, v4}, Lcom/estrongs/android/pop/ad;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8, v3, v6}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    iget-object v1, v1, Lcom/estrongs/android/d/a;->f:Lcom/estrongs/android/d/d;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    iget-object v1, v1, Lcom/estrongs/android/d/a;->f:Lcom/estrongs/android/d/d;

    invoke-interface {v1, v7, v0, v5}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/d/a;->dismiss()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/d/c;->a:Lcom/estrongs/android/d/a;

    invoke-static {v1}, Lcom/estrongs/android/d/a;->d(Lcom/estrongs/android/d/a;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8, v3, v6}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v8, v2, v6}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v3, v1

    move-object v4, v5

    goto :goto_3

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    move-object v7, v1

    goto/16 :goto_1
.end method
