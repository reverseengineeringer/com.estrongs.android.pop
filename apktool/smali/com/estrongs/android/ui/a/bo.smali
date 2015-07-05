.class Lcom/estrongs/android/ui/a/bo;
.super Lcom/estrongs/android/ui/a/a;


# instance fields
.field final synthetic j:Lcom/estrongs/android/ui/a/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bo;->j:Lcom/estrongs/android/ui/a/aa;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bo;->j:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->j()Z

    move-result v0

    return v0
.end method
