.class Lcom/estrongs/android/ui/adapter/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/adapter/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/y;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/aa;->b:Lcom/estrongs/android/ui/adapter/y;

    iput p2, p0, Lcom/estrongs/android/ui/adapter/aa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/aa;->b:Lcom/estrongs/android/ui/adapter/y;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/aa;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/y;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/fi;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/aa;->b:Lcom/estrongs/android/ui/adapter/y;

    invoke-static {v2}, Lcom/estrongs/android/ui/adapter/y;->a(Lcom/estrongs/android/ui/adapter/y;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/fi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/ab;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/ab;-><init>(Lcom/estrongs/android/ui/adapter/aa;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/fi;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/fi;->a()V

    return-void
.end method
