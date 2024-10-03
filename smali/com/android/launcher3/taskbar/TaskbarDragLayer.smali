.class public Lcom/android/launcher3/taskbar/TaskbarDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final BG_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/taskbar/TaskbarDragLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

.field private mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

.field private final mTaskbarBackgroundAlpha:Lcom/android/launcher3/util/MultiPropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Lcom/android/launcher3/taskbar/TaskbarDragLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskbarBackgroundOffset:F

.field private final mTaskbarInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragLayer$1;

    const-string v1, "taskbarBgAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->BG_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/taskbar/x1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/x1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    iget-object p2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {p1, p2}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    new-instance p1, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->BG_ALPHA:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/taskbar/y1;->a:Lcom/android/launcher3/taskbar/y1;

    const/4 v3, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundAlpha:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    return-object p0
.end method

.method public static synthetic b(FF)F
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->lambda$new$0(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onComputeTaskbarInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method private static synthetic lambda$new$0(FF)F
    .locals 0

    mul-float/2addr p0, p1

    return p0
.end method

.method private onComputeTaskbarInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected canFindActiveController()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->getTaskbarBackgroundHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setBackgroundHeight(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canHandleBack()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected getBackgroundRendererAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundAlpha:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method protected getBackgroundRendererAlphaForStash()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundAlpha:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method protected getLastDrawnTransientRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getLastDrawnTransientRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->updateStashedHandleWidth(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->recreateControllers()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onDestroy(Z)V

    return-void
.end method

.method protected onDestroy(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onDestroy(Z)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onViewRemoved(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->onDragLayerViewRemoved()V

    :cond_0
    return-void
.end method

.method public recreateControllers()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->getTouchControllers()[Lcom/android/launcher3/util/TouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    return-void
.end method

.method public setBackgroundHorizontalInsets(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setBackgroundHorizontalInsets(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setBackgroundTranslationYForStash(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setTranslationYForStash(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setBackgroundTranslationYForSwipe(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setTranslationYForSwipe(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setCornerRoundness(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setCornerRoundness(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setTaskbarBackgroundOffset(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->mTaskbarBackgroundOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
