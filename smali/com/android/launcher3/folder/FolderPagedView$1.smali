.class Lcom/android/launcher3/folder/FolderPagedView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderPagedView;->realTimeReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderPagedView;

.field final synthetic val$newRank:I

.field final synthetic val$oldTranslateX:F

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderPagedView;Landroid/view/View;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->this$0:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$oldTranslateX:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$newRank:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->this$0:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$oldTranslateX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->this$0:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget p0, p0, Lcom/android/launcher3/folder/FolderPagedView$1;->val$newRank:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    return-void
.end method
