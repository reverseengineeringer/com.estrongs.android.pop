.class Lcom/estrongs/android/pop/app/messagebox/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/aq;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/aq;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->a(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/aq;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->a(Lcom/estrongs/android/pop/app/messagebox/WebActivity;J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/aq;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->b(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
