.class Lcom/estrongs/android/pop/app/analysis/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/c;->b:Lcom/estrongs/android/pop/app/analysis/b/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/b/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/c;->b:Lcom/estrongs/android/pop/app/analysis/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
