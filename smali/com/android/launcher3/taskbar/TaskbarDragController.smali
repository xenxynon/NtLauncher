.class public Lcom/android/launcher3/taskbar/TaskbarDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
        ">;",
        "Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;"
    }
.end annotation


# instance fields
.field mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDisallowGlobalDrag:Z

.field private mDisallowLongClick:Z

.field private final mDragIconSize:I

.field private mIsSystemDragInProgress:Z

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mReturnAnimator:Landroid/animation/ValueAnimator;

.field private final mTempXY:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070548

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    return-void
.end method

.method private animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->findTaskbarTargetForIconView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetY()F

    move-result p2

    sub-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v4, Lcom/android/launcher3/taskbar/r1;

    invoke-direct {v4, v1, v0}, Lcom/android/launcher3/taskbar/r1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setupReturnDragAnimator(FFLandroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarDragController$4;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/ViewRootImpl;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic b(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startDrag$2(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startInternalDrag$1(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startDragOnLongClick$0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$onSystemDragStarted$3(Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher3/dragndrop/DragView;FFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$endDrag$4(Lcom/android/launcher3/dragndrop/DragView;FFFF)V

    return-void
.end method

.method private findTaskbarTargetForIconView(Landroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    instance-of v2, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x68

    if-eq v2, v3, :cond_2

    const/16 v3, -0x66

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    aput v0, p0, p1

    invoke-static {p0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne p0, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowGlobalDrag:Z

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getAllAppsButtonView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static synthetic g(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$animateGlobalDragViewToOriginalPosition$5(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFF)V

    return-void
.end method

.method private static synthetic lambda$animateGlobalDragViewToOriginalPosition$5(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, p4, p4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$endDrag$4(Lcom/android/launcher3/dragndrop/DragView;FFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onSystemDragStarted$3(Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    invoke-virtual {p3}, Landroid/view/DragEvent;->getResult()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_2
    return v0
.end method

.method private static synthetic lambda$startDrag$2(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$startDragOnLongClick$0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object p2

    if-eqz p3, :cond_0

    iget v0, p3, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    neg-int p3, p3

    invoke-virtual {p2, v0, p3}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setIconDisabled(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    return-void
.end method

.method private static synthetic lambda$startInternalDrag$1(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method private maybeOnDragEnd()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setIconDisabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragEnd()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    :cond_0
    return-void
.end method

.method private onSystemDragStarted(Lcom/android/launcher3/BubbleTextView;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/p1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/p1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private setupReturnDragAnimator(FFLandroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->findTaskbarTargetForIconView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    instance-of v2, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    aget v3, v4, v2

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    aput v3, v4, v2

    const/4 v2, 0x1

    aget v3, v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    aput v3, v4, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    :cond_1
    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    int-to-float v2, v2

    div-float v6, v1, v2

    if-ne v0, p3, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    move v7, p3

    new-instance p3, Lcom/android/launcher3/taskbar/TaskbarDragController$5;

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/taskbar/TaskbarDragController$5;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;F[IFFFLcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z
    .locals 3
    .param p2    # Lcom/android/launcher3/graphics/DragPreviewProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowLongClick:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Main"

    const-string v1, "onTaskbarItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "b/262282528"

    const-string v2, "TaskbarDragController.startDragOnLongClick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragStart()V

    new-instance v0, Lcom/android/launcher3/taskbar/t1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/t1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 14
    .param p2    # Lcom/android/launcher3/graphics/DragPreviewProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v3, p1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    if-nez p2, :cond_0

    new-instance v4, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v4, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v10

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    aget v6, v4, v2

    const/4 v7, 0x1

    aget v4, v4, v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v8}, Lcom/android/launcher3/BubbleTextView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v7, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    new-instance v11, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v11}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v11, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v2

    iput-object v2, v11, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_1
    iget-object v2, v11, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarDragController$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    iput-object v2, v11, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_2
    const/4 v2, 0x0

    sget-object v9, Lcom/android/launcher3/taskbar/q1;->g:Lcom/android/launcher3/taskbar/q1;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    mul-float v13, v10, v1

    move-object v0, p0

    move-object v1, v5

    move-object v3, p1

    move v4, v6

    move v5, v7

    move-object v6, v9

    move-object v7, v12

    move v9, v13

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method

.method private startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V
    .locals 13

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/View;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v3, "android.intent.extra.USER"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    const-class v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    new-instance v7, Landroid/content/ClipDescription;

    iget-object v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-array v9, v5, [Ljava/lang/String;

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    const-string v10, "application/vnd.android.shortcut"

    goto :goto_0

    :cond_0
    const-string v10, "application/vnd.android.activity"

    :goto_0
    aput-object v10, v9, v4

    invoke-direct {v7, v8, v9}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v10, "android.intent.extra.PENDING_INTENT"

    if-ne v9, v11, :cond_1

    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v9, v6, v12}, Landroid/content/pm/LauncherApps;->getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v8, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ID"

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v9, v6, v11}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v7, Landroid/content/ClipDescription;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    const-string v8, "application/vnd.android.task"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v9, "android.intent.extra.TASK_ID"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    :goto_2
    invoke-virtual {v8, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    move-object v7, v6

    move-object v8, v7

    :goto_3
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/quickstep/util/LogUtils;->getShellShareableInstanceId()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logging/InstanceId;

    const-string v3, "android.intent.extra.LOGGING_INSTANCE_ID"

    invoke-virtual {v8, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v3

    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getLastDrawnTransientRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aget v2, v3, v4

    int-to-float v2, v2

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {v9, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    const-string v2, "DISALLOW_HIT_REGION"

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    new-instance v2, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    invoke-direct {v2, v7, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/16 v3, 0xb00

    invoke-virtual {p1, v2, v0, v6, v3}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->onSystemDragStarted(Lcom/android/launcher3/BubbleTextView;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0

    return-void
.end method

.method protected callOnDragEnd()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    return-void
.end method

.method protected callOnDragStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowGlobalDrag:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/high16 v0, 0x40000

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarDragController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmDragIconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmTempXY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmRegistrationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmRegistrationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmIsSystemDragInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisInternalDragInProgess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmDisallowGlobalDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowGlobalDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmDisallowLongClick="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowLongClick:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected endDrag()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowGlobalDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Landroid/view/View;

    new-instance v4, Lcom/android/launcher3/taskbar/s1;

    invoke-direct {v4, v3}, Lcom/android/launcher3/taskbar/s1;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setupReturnDragAnimator(FFLandroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragController$3;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/taskbar/TaskbarDragController$3;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    return-void
.end method

.method protected exitDrag()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowGlobalDrag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected getClampedDragLayerPos(FF)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method protected getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getX(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    return p0
.end method

.method protected getY(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public isDragging()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

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

.method public isSystemDragInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    return p0
.end method

.method public setDisallowGlobalDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowGlobalDrag:Z

    return-void
.end method

.method public setDisallowLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDisallowLongClick:Z

    return-void
.end method

.method protected startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 16
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int v4, v4, p4

    iput v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v3, p5

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    new-instance v6, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v7, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v7, p3

    iput-object v7, v6, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    iput-boolean v3, v6, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v6, v6, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v6, :cond_2

    const-wide/16 v7, 0x0

    invoke-interface {v6, v7, v8}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iput-boolean v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    iget v6, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v14, v6

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v15, Lcom/android/launcher3/taskbar/TaskbarDragView;

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iget v10, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    iget v11, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    move-object v7, v15

    move-object/from16 v9, p1

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/taskbar/TaskbarDragView;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Landroid/graphics/drawable/Drawable;IIFFF)V

    iput-object v15, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v15, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v3, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    add-int v4, p4, v4

    sub-int/2addr v8, v4

    iput v8, v6, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    add-int v5, p5, v5

    sub-int/2addr v4, v5

    iput v4, v6, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    sget-object v5, Lcom/android/launcher3/taskbar/u1;->g:Lcom/android/launcher3/taskbar/u1;

    invoke-static {v0, v4, v5}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v15}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    :cond_3
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v5, p6

    iput-object v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iput-object v1, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iput-object v1, v4, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v15, v1}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v15, v2, v1}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    iput v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    iget-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragStart()V

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    return-object v15
.end method

.method public startDragOnLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method protected startDragOnLongClick(Lcom/android/launcher3/shortcuts/DeepShortcutView;Landroid/graphics/Point;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method
