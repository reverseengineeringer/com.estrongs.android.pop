.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlbum(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$002(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;
    invoke-static {v0, p2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$102(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;
    invoke-static {v0, p3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$202(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$002(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/spfs/Album;

    invoke-direct {v1, v2, p5, v2, v2}, Lcom/estrongs/android/pop/spfs/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/spfs/Album;

    invoke-direct {v0, v2, p5, v2, v2}, Lcom/estrongs/android/pop/spfs/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # invokes: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->displayPicName(Ljava/util/List;)V
    invoke-static {v0, p3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)V

    return-void
.end method
