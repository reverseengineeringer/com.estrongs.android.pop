.class Lcom/estrongs/android/pop/app/analysis/viewholders/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/viewholders/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/ac;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/ad;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/ac;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/ad;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/ad;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/ad;->a:Landroid/content/Context;

    const-string v2, "pname"

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
