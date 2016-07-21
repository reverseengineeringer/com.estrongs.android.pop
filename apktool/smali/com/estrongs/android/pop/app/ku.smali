.class Lcom/estrongs/android/pop/app/ku;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ku;->a:Lcom/estrongs/android/pop/app/PrivacyActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
