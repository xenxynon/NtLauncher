.class Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getTaskAt(I)Lcom/android/quickstep/util/GroupTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$100(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$100(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/GroupTask;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method getTaskCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$000(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$100(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method onCloseComplete()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$302(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    return-void
.end method

.method updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$200(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    return-void
.end method

.method updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->access$200(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    return-void
.end method
