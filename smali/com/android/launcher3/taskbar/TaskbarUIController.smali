.class public Lcom/android/launcher3/taskbar/TaskbarUIController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;


# instance fields
.field protected mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/view/View;Landroid/content/Intent;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarUIController;->lambda$triggerSecondAppForSplit$1(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/view/View;Landroid/content/Intent;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->lambda$startSplitSelection$0(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static synthetic lambda$startSplitSelection$0(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :goto_0
    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->animateCurrentTaskDismissal:Z

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    return-void
.end method

.method private static synthetic lambda$triggerSecondAppForSplit$1(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/view/View;Landroid/content/Intent;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 10

    if-eqz p4, :cond_0

    iget-object v1, p4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/TaskView;->getTaskAttributesById(I)Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/quickstep/views/RecentsView;->confirmSplitSelect(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    iget-object v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v2, p0

    move-object v3, v1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/views/RecentsView;->confirmSplitSelect(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    return-void
.end method


# virtual methods
.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%sTaskbarUIController: using an instance of %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findMatchingView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-eq v0, v2, :cond_1

    const/16 v2, -0x67

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getIconViews()[Landroid/view/View;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    aget-object v2, p0, v0

    if-eqz v2, :cond_2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v2, p1, :cond_2

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    return-object p0
.end method

.method getSplitMenuOptions()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/taskbar/z3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/z3;-><init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public hideOverlayWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->hideWindow()V

    :cond_1
    return-void
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public isEventOverAnyTaskbarItem(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHotseatIconOnTopWhenAligned()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isIconAlignedWithHotseat()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInOverview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTaskbarAllAppsOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isTaskbarStashed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result p0

    return p0
.end method

.method protected isTaskbarTouchable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public launchFocusedTask()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->launchFocusedTask()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->closeQuickSwitchView()V

    return v0
.end method

.method public launchSplitTasks(Landroid/view/View;Lcom/android/quickstep/util/GroupTask;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/quickstep/util/GroupTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public onExpandPip()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    :cond_0
    return-void
.end method

.method protected onIconLayoutBoundsChanged()V
    .locals 0

    return-void
.end method

.method protected onStashedInAppChanged()V
    .locals 0

    return-void
.end method

.method public onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    return-void
.end method

.method public openQuickSwitchView()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->openQuickSwitchView()V

    return-void
.end method

.method public refreshResumedState()V
    .locals 0

    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setSystemGestureInProgress(Z)V

    return-void
.end method

.method public startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/x3;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher3/taskbar/x3;-><init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->findLastActiveTaskAndRunCallback(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTranslationSpring()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTranslationSpring()V

    return-void
.end method

.method public supportsVisualStashing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public triggerSecondAppForSplit(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Intent;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/y3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/launcher3/taskbar/y3;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/view/View;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->findLastActiveTaskAndRunCallback(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateStateForSysuiFlags(I)V
    .locals 0

    return-void
.end method
