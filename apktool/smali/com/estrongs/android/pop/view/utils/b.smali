.class final Lcom/estrongs/android/pop/view/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/utils/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/utils/u;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/b;->a:Landroid/app/Activity;

    const v1, 0x7f0b0288

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    return-void
.end method
