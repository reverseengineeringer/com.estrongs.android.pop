.class Lcom/estrongs/android/ui/e/hv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/ak;

.field final synthetic b:Lcom/estrongs/android/ui/e/hu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hu;Lcom/estrongs/android/pop/app/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hv;->b:Lcom/estrongs/android/ui/e/hu;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/hv;->a:Lcom/estrongs/android/pop/app/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/hv;->b:Lcom/estrongs/android/ui/e/hu;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/hu;->a:Lcom/estrongs/android/ui/e/hl;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hv;->a:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
