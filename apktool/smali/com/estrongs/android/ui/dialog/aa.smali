.class Lcom/estrongs/android/ui/dialog/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/z;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/aa;->b:Lcom/estrongs/android/ui/dialog/z;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/aa;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aa;->b:Lcom/estrongs/android/ui/dialog/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/z;->a:Lcom/estrongs/android/ui/dialog/y;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aa;->b:Lcom/estrongs/android/ui/dialog/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/z;->a:Lcom/estrongs/android/ui/dialog/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/y;->d:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/aa;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ab;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aa;->b:Lcom/estrongs/android/ui/dialog/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/z;->a:Lcom/estrongs/android/ui/dialog/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/y;->d:Lcom/estrongs/android/ui/dialog/ab;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ab;->notifyDataSetChanged()V

    return-void
.end method
