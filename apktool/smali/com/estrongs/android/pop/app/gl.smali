.class Lcom/estrongs/android/pop/app/gl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const-string v0, "com.estrongs.android.pop"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gl;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const-string v2, "pname"

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
