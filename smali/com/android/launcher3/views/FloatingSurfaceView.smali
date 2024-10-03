.class public Lcom/android/launcher3/views/FloatingSurfaceView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# instance fields
.field private mContract:Lcom/android/launcher3/GestureNavContract;

.field private mIcon:Landroid/view/View;

.field private final mIconBounds:Landroid/graphics/Rect;

.field private final mIconPosition:Landroid/graphics/RectF;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPicture:Landroid/graphics/Picture;

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTmpPosition:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Picture;

    invoke-direct {p2}, Landroid/graphics/Picture;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    new-instance p2, Lcom/android/launcher3/views/q;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/q;-><init>(Lcom/android/launcher3/views/FloatingSurfaceView;)V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    const/4 v0, -0x3

    invoke-interface {p3, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    invoke-interface {p3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/FloatingSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewFromParent()V

    return-void
.end method

.method private drawOnSurface()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private removeViewFromParent()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method private removeViewImmediate()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewFromParent()V

    return-void
.end method

.method private sendIconInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/GestureNavContract;->sendEndPosition(Landroid/graphics/RectF;Lcom/android/launcher3/views/ActivityContext;Landroid/view/SurfaceControl;)V

    :cond_0
    return-void
.end method

.method private setCurrentIconVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static show(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/GestureNavContract;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    const v2, 0x7f0e0079

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/FloatingSurfaceView;

    iput-object p1, v0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-direct {v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewImmediate()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateIconLocation()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, -0x1

    iget-object v0, v0, Lcom/android/launcher3/GestureNavContract;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    iget-object v3, v3, Lcom/android/launcher3/GestureNavContract;->user:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/Launcher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-static {v3, v0, v4, v5, v6}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mTmpPosition:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->sendIconInfo()V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconPosition:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIconBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-direct {p0, v4}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v0, 0x7f0e0079

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mContract:Lcom/android/launcher3/GestureNavContract;

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mIcon:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mRemoveViewRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingSurfaceView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->updateIconLocation()V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->removeViewImmediate()V

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->setCurrentIconVisible(Z)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->updateIconLocation()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->sendIconInfo()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->drawOnSurface()V

    return-void
.end method
