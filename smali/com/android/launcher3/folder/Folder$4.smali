.class Lcom/android/launcher3/folder/Folder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/Folder;->access$000(Lcom/android/launcher3/folder/Folder;I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->access$300(Lcom/android/launcher3/folder/Folder;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendFolderOpenedEventToTest(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->access$400(Lcom/android/launcher3/folder/Folder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/Folder;->access$402(Lcom/android/launcher3/folder/Folder;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFocusOnFirstChild()V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setIconVisible(Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/launcher3/LauncherState;->FOLDER_STATE:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/LauncherState;->FOLDER_SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->access$200(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method
