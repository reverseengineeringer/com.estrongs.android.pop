.class Lcom/estrongs/android/ui/pcs/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/estrongs/android/ui/pcs/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/w;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/x;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/x;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04e0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0509

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/pcs/w;->b(Lcom/estrongs/android/ui/pcs/w;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/w;->c(Lcom/estrongs/android/ui/pcs/w;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->b(Lcom/estrongs/android/ui/pcs/w;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "Press_UPInfo_Confirm"

    const-string v2, "Press_UPInfo_Confirm"

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPInfo_Confirm_UV"

    const-string v2, "UPInfo_Confirm_UV"

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Next_Phone_Get"

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/x;->c:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/w;->c(Lcom/estrongs/android/ui/pcs/w;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "Next_Phone_No"

    :cond_6
    invoke-virtual {v1, v0, v0}, Lcom/estrongs/android/util/a;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
