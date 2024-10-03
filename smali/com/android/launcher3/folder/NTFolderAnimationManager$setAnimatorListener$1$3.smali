.class public final Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/NTFolderAnimationManager;->setAnimatorListener(Landroid/animation/AnimatorSet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic $cellLayoutClipChildren:Z

.field final synthetic $cellLayoutClipPadding:Z

.field final synthetic $contentClipChildren:Z

.field final synthetic $contentClipToPadding:Z

.field final synthetic $folderClipChildren:Z

.field final synthetic $folderClipToPadding:Z

.field final synthetic this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;Ljava/util/List;ZZZZLcom/android/launcher3/CellLayout;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/NTFolderAnimationManager;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;ZZZZ",
            "Lcom/android/launcher3/CellLayout;",
            "ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$appList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$folderClipToPadding:Z

    iput-boolean p4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$folderClipChildren:Z

    iput-boolean p5, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$contentClipToPadding:Z

    iput-boolean p6, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$contentClipChildren:Z

    iput-object p7, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean p8, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayoutClipPadding:Z

    iput-boolean p9, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayoutClipChildren:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$appList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$resetFolder(Lcom/android/launcher3/folder/NTFolderAnimationManager;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    const-string v0, "folder.content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$folderClipToPadding:Z

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$folderClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$contentClipToPadding:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$contentClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayoutClipPadding:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayoutClipChildren:Z

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$appList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$resetFolder(Lcom/android/launcher3/folder/NTFolderAnimationManager;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    const-string v0, "folder.content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$folderClipToPadding:Z

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$folderClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$contentClipToPadding:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$contentClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayoutClipPadding:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;->$cellLayoutClipChildren:Z

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method
