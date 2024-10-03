.class public Lcom/android/launcher3/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHasPerformedLongPress:Z

.field private mIsInMouseRightClick:Z

.field private final mListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressTimeoutFactor:F

.field private mPendingCheckForLongPress:Ljava/lang/Runnable;

.field private final mSlop:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f200000    # 0.625f

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mSlop:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/CheckLongPressHelper;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->lambda$onTouchEvent$0(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/CheckLongPressHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic lambda$onTouchEvent$0(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private postCheckForLongPress()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/q;

    invoke-direct {v0, p0}, Lcom/android/launcher3/q;-><init>(Lcom/android/launcher3/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    mul-float/2addr v2, p0

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private triggerLongPress()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->clearCallbacks()V

    :cond_3
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mIsInMouseRightClick:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->clearCallbacks()V

    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mIsInMouseRightClick:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/CheckLongPressHelper;->mSlop:F

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/launcher3/CheckLongPressHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    invoke-static {p1}, Lcom/android/launcher3/util/TouchUtil;->isMouseRightClickDownOrMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mIsInMouseRightClick:Z

    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    new-instance v1, Lcom/android/launcher3/r;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/r;-><init>(Lcom/android/launcher3/CheckLongPressHelper;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    invoke-static {p1}, Lcom/android/launcher3/CheckLongPressHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    return-void
.end method
