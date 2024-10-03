.class public final Lcom/android/quickstep/utils/TransitionSmoothHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/TransitionSmoothHelper;

.field public static final SMOOTH_FEATURE:Z

.field private static final TAG:Ljava/lang/String;

.field private static allAppsContentDataAlpha:F

.field private static duration:J

.field private static final hashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;",
            ">;"
        }
    .end annotation
.end field

.field private static inRecents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;

    invoke-direct {v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->INSTANCE:Lcom/android/quickstep/utils/TransitionSmoothHelper;

    const-string v0, "TransitionSmoothHelper"

    sput-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "NTF_SMOOTH_ANIM_LAUNCHER_FEATURE"

    invoke-static {v0}, Lh5/a;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildFinishTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    const-string v0, "transitionInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hasData()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->getData(I)Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    const/16 v8, 0x9

    new-array v8, v8, [F

    invoke-virtual {p1, v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getCornerRadius()F

    move-result v5

    invoke-virtual {p1, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjust leash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const-string v3, "show home leash /"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    sget-object p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildFinishTransaction: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static final buildStartTransaction(Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;Ljava/lang/StringBuilder;)V
    .locals 9

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    const/4 v1, 0x0

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, p1, v1

    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_4

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget v5, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->getData(I)Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    const/16 v8, 0x9

    new-array v8, v8, [F

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iget-object v6, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getCornerRadius()F

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjust anim leash "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " /"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_6

    sget-object p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildStartTransaction: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static final buildStartTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;)V
    .locals 13

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTargets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->INSTANCE:Lcom/android/quickstep/utils/TransitionSmoothHelper;

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hasData()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {v0, p0}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->isOpenHome(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "getTaskInfo()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset changeleash "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {p1, p2, v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->buildStartTransaction(Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    sget-object p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildStartTransaction: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic buildStartTransaction$default(Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->buildStartTransaction(Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final clear()V
    .locals 2

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->duration:J

    const/4 v0, 0x0

    sput v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->allAppsContentDataAlpha:F

    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final getAllAppsContentAlpha()F
    .locals 1

    sget v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->allAppsContentDataAlpha:F

    return v0
.end method

.method public static final getData(I)Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    return-object p0
.end method

.method public static final getDuration()J
    .locals 2

    sget-wide v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->duration:J

    return-wide v0
.end method

.method public static final hasData()Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final hasData(I)Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final inRecents()Z
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->inRecents:Z

    return v0
.end method

.method private final isOpenHome(Landroid/window/TransitionInfo;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "getTaskInfo()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static final putData(ILandroid/graphics/Matrix;Landroid/graphics/Rect;F)V
    .locals 3

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowCrop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-direct {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v1, p1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->setMatrix(Landroid/graphics/Matrix;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->setWindowCrop(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p3}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->setCornerRadius(F)V

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final removeData(I)V
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setInRecents(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->inRecents:Z

    return-void
.end method

.method public static final updateAllAppsContentAlpha(F)V
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->allAppsContentDataAlpha:F

    return-void
.end method

.method public static final updateDuration(J)V
    .locals 2

    const/4 v0, 0x2

    int-to-long v0, v0

    div-long/2addr p0, v0

    sput-wide p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->duration:J

    return-void
.end method
