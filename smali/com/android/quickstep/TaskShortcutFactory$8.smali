.class Lcom/android/quickstep/TaskShortcutFactory$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcuts(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getScreenshotShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/quickstep/TaskShortcutFactory;->createSingletonShortcutList(Lcom/android/launcher3/popup/SystemShortcut;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
