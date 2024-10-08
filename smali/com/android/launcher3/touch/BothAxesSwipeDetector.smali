.class public Lcom/android/launcher3/touch/BothAxesSwipeDetector;
.super Lcom/android/launcher3/touch/BaseSwipeDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

.field private mScrollDirections:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    iput-object p2, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    return-void
.end method


# virtual methods
.method protected reportDragEndInternal(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;->onDragEnd(Landroid/graphics/PointF;)V

    return-void
.end method

.method protected reportDragStartInternal(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;->onDragStart(Z)V

    return-void
.end method

.method protected reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;->onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    iput-boolean p2, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    return-void
.end method

.method protected shouldScrollStart(Landroid/graphics/PointF;)Z
    .locals 7

    sget-boolean v0, Ly2/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BothAxesDetector: shouldScrollStart , displacement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchSlop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollDirections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchController"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    neg-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-lez v4, :cond_2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-lez v5, :cond_3

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    neg-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_4

    move p0, v3

    goto :goto_3

    :cond_4
    move p0, v2

    :goto_3
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method
