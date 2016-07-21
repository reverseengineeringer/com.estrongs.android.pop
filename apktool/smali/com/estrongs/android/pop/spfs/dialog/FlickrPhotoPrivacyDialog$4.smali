.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

.field final synthetic val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

.field final synthetic val$scan_progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Landroid/widget/ProgressBar;Lcom/estrongs/android/pop/spfs/SPFileObject;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->val$scan_progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->val$scan_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->tags:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "tags"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "sets"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "sets_delete"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v1

    const-string v2, "albums_selected"

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioOnlyYou:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "is_public"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "is_friend"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$800(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "is_family"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$900(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->dismiss(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto/16 :goto_1

    :cond_b
    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v1

    const-string v2, "albums_new"

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v1

    const-string v2, "albums_selected"

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "is_public"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "is_friend"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v0

    const-string v1, "is_family"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto/16 :goto_3
.end method
