.class public final Lcom/android/quickstep/util/SplitAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SplitAnimationController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/util/SplitAnimationController$Companion;


# instance fields
.field private final splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/SplitAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationController;->Companion:Lcom/android/quickstep/util/SplitAnimationController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 1

    const-string v0, "splitSelectStateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-void
.end method


# virtual methods
.method public final addInitialSplitFromPair(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/launcher3/DeviceProfile;IIZ)V
    .locals 7

    const-string p0, "taskIdAttributeContainer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "builder"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceProfile"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p1

    const-string v0, "taskIdAttributeContainer.iconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->SPLASH_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setShowSplashForSplitSelection(Z)V

    iget-boolean v0, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    sub-int p5, p4, p5

    int-to-float p5, p5

    div-float/2addr p5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p4, v5

    sget-object v5, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_X:Landroid/util/Property;

    new-array v6, v1, [F

    aput p5, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v1, [F

    neg-float v0, v0

    aput v0, v5, v3

    invoke-static {p1, p5, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array p5, v1, [F

    aput p4, p5, v3

    invoke-static {p0, p1, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v2, p1

    :goto_0
    sget-object p1, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_Y:Landroid/util/Property;

    new-array p3, v1, [F

    aput v2, p3, v3

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget p4, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr p5, p4

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int p4, p5, p4

    int-to-float p4, p4

    div-float/2addr p4, v5

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float p3, p3

    add-float/2addr p4, p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int p3, p5, p3

    int-to-float p3, p3

    div-float p4, p3, v5

    :goto_1
    int-to-float p3, p5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    sget-object p5, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_Y:Landroid/util/Property;

    new-array p6, v1, [F

    aput p4, p6, v3

    invoke-static {p0, p5, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p5, v1, [F

    aput v2, p5, v3

    invoke-static {p1, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p4, v1, [F

    aput p3, p4, v3

    invoke-static {p0, p1, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleX(F)V

    sget-object p1, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_X:Landroid/util/Property;

    new-array p3, v1, [F

    aput v2, p3, v3

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method public final getDrawable(Lcom/android/quickstep/views/IconView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const-string p0, "iconView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstAnimInitViews(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;",
            ">;)",
            "Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;"
        }
    .end annotation

    const-string v0, "taskViewSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitSelectSourceSupplier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isAnimateCurrentTaskDismissal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v1, p0

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v3, v1

    :goto_0
    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isDismissingFromSplitPair()Z

    move-result v0

    const-string v1, "taskViewSupplier.get()"

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p1

    const-string v0, "taskView.taskIdAttributeContainers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p1, v1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v5}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isTopAppLocked:Z

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    const-string v0, "container.thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Landroidx/core/view/ViewKt;->drawToBitmap(Landroid/view/View;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_2
    move-object v6, p1

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p1

    const-string v0, "container.iconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/SplitAnimationController;->getDrawable(Lcom/android/quickstep/views/IconView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to init split from existing split pair without a valid taskIdAttributeContainer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v0

    const-string v1, "taskView.iconView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/quickstep/util/SplitAnimationController;->getDrawable(Lcom/android/quickstep/views/IconView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isTopAppLocked:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    const-string p2, "taskView.thumbnail"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2}, Landroidx/core/view/ViewKt;->drawToBitmap(Landroid/view/View;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_6
    move-object v4, p0

    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0
.end method

.method public final getSplitSelectStateController()Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method
