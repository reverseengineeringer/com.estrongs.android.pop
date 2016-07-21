.class Lcom/estrongs/android/pop/app/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/w;->a:Lcom/estrongs/android/pop/app/BaseWebViewActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->d(Lcom/estrongs/android/pop/app/BaseWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/BaseWebViewActivity;->a(Lcom/estrongs/android/pop/app/BaseWebViewActivity;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0
.end method
