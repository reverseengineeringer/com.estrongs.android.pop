.class Lcom/estrongs/android/widget/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gx;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gs;

.field final synthetic b:Lcom/estrongs/android/widget/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/z;Lcom/estrongs/android/ui/dialog/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/aa;->b:Lcom/estrongs/android/widget/z;

    iput-object p2, p0, Lcom/estrongs/android/widget/aa;->a:Lcom/estrongs/android/ui/dialog/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->b:Lcom/estrongs/android/widget/z;

    iget-object v0, v0, Lcom/estrongs/android/widget/z;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->d(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->a(I)V

    rem-int/lit8 v0, p1, 0x4

    div-int/lit8 v1, p1, 0x4

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/ac;->a(II)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Lcom/estrongs/android/widget/z;

    iget-object v1, v1, Lcom/estrongs/android/widget/z;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/fs/util/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->a:Lcom/estrongs/android/ui/dialog/gs;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gs;->dismiss()V

    return-void
.end method
