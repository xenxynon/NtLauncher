.class public Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskbarDragLayerCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskbarBackgroundHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$100(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$100(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/DimensionUtils;->getTaskbarPhoneDimensions(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Z)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    :cond_0
    return p0

    :cond_1
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    return p0
.end method

.method public getTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$100(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTouchController()Lcom/android/launcher3/util/TouchController;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$200(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method public onDragLayerViewRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$100(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDragEndOrViewRemoved()V

    return-void
.end method

.method public updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method
