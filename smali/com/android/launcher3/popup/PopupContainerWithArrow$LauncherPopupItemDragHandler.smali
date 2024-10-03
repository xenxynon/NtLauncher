.class public Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/PopupContainerWithArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherPopupItemDragHandler"
.end annotation


# instance fields
.field private final mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field protected final mIconLastTouchPos:Landroid/graphics/Point;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->lambda$onLongClick$0()V

    return-void
.end method

.method private synthetic lambda$onLongClick$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setWillDrawIcon(Z)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v8

    const/16 v3, -0x6b

    iput v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    new-instance v9, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v9, v0, v2}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    new-instance v10, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v10}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    iget v3, v2, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    new-instance v0, Lcom/android/launcher3/popup/i;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/i;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
