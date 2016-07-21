.class Lcom/estrongs/android/pop/app/analysis/viewholders/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/aj;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/viewholders/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/v;Lcom/estrongs/android/pop/app/analysis/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/w;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/v;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/w;->a:Lcom/estrongs/android/pop/app/analysis/b/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/w;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/v;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/w;->a:Lcom/estrongs/android/pop/app/analysis/b/aj;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a(Lcom/estrongs/android/pop/app/analysis/viewholders/v;Lcom/estrongs/android/pop/app/analysis/b/aj;)V

    return-void
.end method
