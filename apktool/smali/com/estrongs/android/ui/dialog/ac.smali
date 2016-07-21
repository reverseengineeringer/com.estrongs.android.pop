.class Lcom/estrongs/android/ui/dialog/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ab;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ac;->b:Lcom/estrongs/android/ui/dialog/ab;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ac;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ac;->b:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    const v1, 0x7f0e019f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/aa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ac;->b:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aa;->d:Lcom/estrongs/android/ui/dialog/ad;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ac;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ad;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ac;->b:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aa;->d:Lcom/estrongs/android/ui/dialog/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ad;->notifyDataSetChanged()V

    return-void
.end method
