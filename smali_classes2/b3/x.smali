.class public final Lb3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(DDLandroid/graphics/Point;ILandroid/graphics/PointF;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lb3/x;->g(DDLandroid/graphics/Point;ILandroid/graphics/PointF;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final b(Landroid/view/View;)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/nothing/cardhost/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/nothing/cardhost/e;

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getAppWidgetInfo()Lcom/nothing/cardservice/CardWidgetMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->o0()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getAppWidgetId()I

    move-result v2

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    :cond_3
    :goto_0
    return v2
.end method

.method public static final c(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aget v3, v0, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aget v4, v0, v3

    iput v4, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static final e(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/nothing/cardhost/e;

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

.method public static final f(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Point;DDILy5/l;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/Point;",
            "DDI",
            "Ly5/l<",
            "-",
            "Landroid/animation/Animator;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p8

    const-string v1, "<this>"

    move-object v10, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "end"

    move-object v9, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "center"

    move-object v7, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "play"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v11, Lb3/w;

    move-object v2, v11

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lb3/w;-><init>(DDLandroid/graphics/Point;ILandroid/graphics/PointF;Landroid/view/View;)V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "anim"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final g(DDLandroid/graphics/Point;ILandroid/graphics/PointF;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "$center"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$end"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_playCircleTranslation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p8

    sub-double/2addr p2, p0

    float-to-double v0, p8

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    iget p2, p4, Landroid/graphics/Point;->x:I

    int-to-double p2, p2

    int-to-double v0, p5

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    add-double/2addr p2, v2

    invoke-static {p2, p3}, La6/a;->a(D)I

    move-result p2

    int-to-float p2, p2

    iget p3, p6, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    iget p3, p4, Landroid/graphics/Point;->y:I

    int-to-double p3, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    sub-double/2addr p3, v0

    invoke-static {p3, p4}, La6/a;->a(D)I

    move-result p0

    int-to-float p0, p0

    iget p1, p6, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    invoke-virtual {p7, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p7, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static final h(Landroid/view/View;FFZLy5/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFZ",
            "Ly5/l<",
            "-",
            "Landroid/animation/Animator;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [F

    if-eqz p3, :cond_0

    aput p1, v4, v2

    aput v1, v4, v0

    goto :goto_0

    :cond_0
    aput v1, v4, v2

    aput p1, v4, v0

    :goto_0
    sget-object p1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v4, "transXAnim"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v3, [F

    if-eqz p3, :cond_1

    aput p2, p1, v2

    aput v1, p1, v0

    goto :goto_1

    :cond_1
    aput v1, p1, v2

    aput p2, p1, v0

    :goto_1
    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "transYAnim"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic i(Landroid/view/View;FFZLy5/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lb3/x;->h(Landroid/view/View;FFZLy5/l;)V

    return-void
.end method

.method public static final j(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lb3/x;->b(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_1

    instance-of v1, p0, Landroid/appwidget/AppWidgetHostView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0, v2, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    const/16 p2, 0xd

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lq2/m;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/nothing/launcher/card/r;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/nothing/launcher/card/r;

    invoke-virtual {p0}, Lcom/nothing/launcher/card/r;->getCardWidgetInfo()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0, v2, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forCardInfo(ILcom/nothing/launcher/card/CardWidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    move-object p2, p1

    check-cast p2, Lq2/m;

    invoke-virtual {p2}, Lq2/m;->getCardWidgetHost()Lcom/nothing/launcher/card/p;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x15

    invoke-virtual {p2, p1, v0, p0, v1}, Lcom/nothing/launcher/card/p;->P(Lcom/android/launcher3/BaseDraggingActivity;ILcom/nothing/cardservice/CardWidgetMetaInfo;I)V

    :cond_1
    :goto_0
    return-void
.end method
