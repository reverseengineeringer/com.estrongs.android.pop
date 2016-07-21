.class public Lcom/estrongs/android/pop/app/analysis/viewholders/ac;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/n;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/n;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/ac;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/ad;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/ad;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/ac;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
