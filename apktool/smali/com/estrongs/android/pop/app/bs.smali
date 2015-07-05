.class Lcom/estrongs/android/pop/app/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    const v1, 0x7f0b03a3

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    const v1, 0x7f0b00b4

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    const v1, 0x7f0b03a4

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/ad;->G(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->H(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->l(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
