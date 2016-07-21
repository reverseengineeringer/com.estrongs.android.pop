.class final Lcom/estrongs/android/pop/view/utils/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ci;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/m;->a:Lcom/estrongs/android/ui/dialog/ci;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/utils/m;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/m;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/bm;->a(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/m;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/m;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/m;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->b(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/m;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/m;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->c(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
