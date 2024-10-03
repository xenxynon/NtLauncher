.class public Lcom/android/launcher3/notification/NotificationContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final DRAG_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/notification/NotificationContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private mDragTranslationX:F

.field private mIgnoreTouch:Z

.field private mIsAppLocked:Z

.field private final mLockedView:Lcom/nothing/launcher/notification/NotificationMainLockedView;

.field private final mNotificationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field private final mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

.field private final mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/notification/NotificationContainer$1;

    const-string v1, "notificationProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/notification/NotificationContainer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/notification/NotificationContainer;->DRAG_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationContainer;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mDragTranslationX:F

    iput-boolean p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIsAppLocked:Z

    new-instance p3, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p3, v0, p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 v0, 0x3

    invoke-virtual {p3, v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    sget-object p3, Lcom/android/launcher3/notification/NotificationContainer;->DRAG_TRANSLATION_X:Landroid/util/FloatProperty;

    const/4 v0, 0x1

    new-array v0, v0, [F

    aput p2, v0, p1

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0e00f8

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0e00f9

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nothing/launcher/notification/NotificationMainLockedView;

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mLockedView:Lcom/nothing/launcher/notification/NotificationMainLockedView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/notification/NotificationContainer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->setDragTranslationX(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/notification/NotificationContainer;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mDragTranslationX:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object p0
.end method

.method private isAppLocked(Lcom/android/launcher3/notification/NotificationInfo;)Z
    .locals 1

    invoke-static {}, Landroid/view/NtWindowManager;->getInstance()Landroid/view/NtWindowManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/launcher3/notification/NotificationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Landroid/view/NtWindowManager;->isAppLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private setDragTranslationX(F)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mDragTranslationX:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->onPrimaryDrag(F)V

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->onSecondaryDrag(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationInfo;

    const-string v3, "NotificationContainer"

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher3/notification/NotificationContainer;->isAppLocked(Lcom/android/launcher3/notification/NotificationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIsAppLocked:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyNotificationInfos package:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/notification/NotificationInfo;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsAppLocked:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIsAppLocked:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v4, "applyNotificationInfos mainNotification null"

    invoke-static {v3, v4}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIsAppLocked:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIsAppLocked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mLockedView:Lcom/nothing/launcher/notification/NotificationMainLockedView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mLockedView:Lcom/nothing/launcher/notification/NotificationMainLockedView;

    invoke-virtual {v0, v2}, Lcom/nothing/launcher/notification/NotificationMainLockedView;->b(Lcom/android/launcher3/notification/NotificationInfo;)V

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/notification/NotificationInfo;

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public onDrag(F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p1

    int-to-float p1, p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->onPrimaryDrag(F)V

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->onSecondaryDrag(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v2}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v2

    if-eqz v2, :cond_3

    cmpg-float v2, p1, v5

    if-gez v2, :cond_2

    :goto_0
    neg-float v2, v1

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    goto :goto_0

    :goto_2
    sub-float v6, v5, v0

    div-float/2addr v6, v1

    invoke-static {p1, v6}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v0, v1, v4

    aput v5, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/notification/NotificationContainer$2;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/launcher3/notification/NotificationContainer$2;-><init>(Lcom/android/launcher3/notification/NotificationContainer;ZLcom/android/launcher3/notification/NotificationMainView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->showArrow(Z)V

    return-void
.end method

.method public onInterceptSwipeEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/notification/NotificationContainer;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIsAppLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public onSwipeEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mIgnoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setPopupView(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPopupContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method

.method public trimNotifications(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v1, v1, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/notification/NotificationInfo;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->onPrimaryDrag(F)V

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->onSecondaryDrag(F)V

    return-void
.end method

.method public updateBackgroundColor(ILandroid/animation/AnimatorSet;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/notification/NotificationMainView;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/notification/NotificationMainView;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    return-void
.end method

.method public updateHeader(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mPrimaryView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->updateHeader(I)V

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer;->mSecondaryView:Lcom/android/launcher3/notification/NotificationMainView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->updateHeader(I)V

    return-void
.end method
