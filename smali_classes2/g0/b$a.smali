.class public final Lg0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg0/i<",
        "Landroid/view/IRemoteAnimationFinishedCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg0/b$d;

.field private final b:Lg0/b$b;

.field private final c:Lg0/b$e;

.field private final d:Lg0/f;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Matrix;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/RectF;

.field private m:Z

.field private n:Z

.field private o:Lg0/f$a;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lg0/b$d;Lg0/b$b;Lg0/b$e;)V
    .locals 8

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lg0/b$a;-><init>(Lg0/b$d;Lg0/b$b;Lg0/b$e;Lg0/f;ILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Lg0/b$d;Lg0/b$b;Lg0/b$e;Lg0/f;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchAnimator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/b$a;->a:Lg0/b$d;

    iput-object p2, p0, Lg0/b$a;->b:Lg0/b$b;

    iput-object p3, p0, Lg0/b$a;->c:Lg0/b$e;

    iput-object p4, p0, Lg0/b$a;->d:Lg0/f;

    invoke-interface {p1}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lg0/b$a;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lg0/b$a;->f:Landroid/content/Context;

    invoke-interface {p1}, Lg0/f$c;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lg0/b$a;->g:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lg0/b$a;->h:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lg0/b$a;->j:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg0/b$a;->k:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    new-instance p1, Lg0/a;

    invoke-direct {p1, p0}, Lg0/a;-><init>(Lg0/b$a;)V

    iput-object p1, p0, Lg0/b$a;->p:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lg0/b$d;Lg0/b$b;Lg0/b$e;Lg0/f;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    invoke-static {}, Lg0/b;->b()Lg0/f;

    move-result-object p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lg0/b$a;-><init>(Lg0/b$d;Lg0/b$b;Lg0/b$e;Lg0/f;)V

    return-void
.end method

.method public static synthetic a(Lg0/b$a;)V
    .locals 0

    invoke-static {p0}, Lg0/b$a;->k(Lg0/b$a;)V

    return-void
.end method

.method public static final synthetic b(Lg0/b$a;Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg0/b$a;->f(Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V

    return-void
.end method

.method public static final synthetic c(Lg0/b$a;Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg0/b$a;->g(Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V

    return-void
.end method

.method public static final synthetic d(Lg0/b$a;)Lg0/b$e;
    .locals 0

    iget-object p0, p0, Lg0/b$a;->c:Lg0/b$e;

    return-object p0
.end method

.method public static final synthetic e(Lg0/b$a;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lg0/b$a;->i(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final f(Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V
    .locals 12

    iget-object v0, p0, Lg0/b$a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lg0/f;->e:Lg0/f$b;

    sget-object v8, Lg0/b;->b:Lg0/f$f;

    invoke-static {}, Lg0/b;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x85

    move-object v1, v0

    move-object v2, v8

    move v3, p3

    invoke-virtual/range {v1 .. v7}, Lg0/f$b;->a(Lg0/f$f;FJJ)F

    move-result v1

    new-instance v9, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v9, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v3, :cond_1

    iget-object p3, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lg0/f$e;->h()I

    move-result v0

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p3, v2, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lg0/b$a;->k:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lg0/f$e;->f()I

    move-result p3

    invoke-virtual {p2}, Lg0/f$e;->g()I

    move-result v0

    invoke-virtual {p2}, Lg0/f$e;->e()I

    move-result p2

    invoke-virtual {p1, p3, v11, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lg0/b;->d()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v9, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object p2, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object p2, p0, Lg0/b$a;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x85

    move-object v1, v0

    move-object v2, v8

    move v3, p3

    invoke-virtual/range {v1 .. v7}, Lg0/f$b;->a(Lg0/f$f;FJJ)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {}, Lg0/b;->e()Landroid/view/animation/PathInterpolator;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v9, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    :goto_0
    iget-object p0, p0, Lg0/b$a;->h:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p1, v10, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p2

    aput-object p2, p1, v11

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final g(Landroid/view/RemoteAnimationTarget;Lg0/f$e;F)V
    .locals 9

    iget-object v0, p0, Lg0/b$a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int v3, v1, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v5, v6

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-int/2addr v2, v1

    sub-int/2addr v6, v5

    invoke-virtual {p2}, Lg0/f$e;->k()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Lg0/f$e;->e()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v6

    div-float/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1, v3, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    mul-float v2, v5, v1

    sub-float/2addr v2, v5

    invoke-virtual {p2}, Lg0/f$e;->c()F

    move-result v5

    sub-float/2addr v5, v3

    invoke-virtual {p2}, Lg0/f$e;->h()I

    move-result v3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    iget-object v2, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p2}, Lg0/f$e;->f()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lg0/f$e;->h()I

    move-result v3

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lg0/f$e;->k()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lg0/f$e;->e()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lg0/b$a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lg0/b$a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lg0/b$a;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    iget-object v3, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, La6/a;->b(F)I

    move-result v3

    iget-object v4, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, La6/a;->b(F)I

    move-result v4

    iget-object v5, p0, Lg0/b$a;->l:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, La6/a;->b(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lg0/b$a;->a:Lg0/b$d;

    invoke-interface {v0}, Lg0/b$d;->isBelowAnimatingWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lg0/f;->e:Lg0/f$b;

    sget-object v3, Lg0/b;->b:Lg0/f$f;

    invoke-virtual {v3}, Lg0/f$f;->c()J

    move-result-wide v5

    invoke-virtual {v3}, Lg0/f$f;->d()J

    move-result-wide v7

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Lg0/f$b;->a(Lg0/f$f;FJJ)F

    move-result p3

    sget-object v0, Lg0/b;->a:Lg0/b$c;

    invoke-virtual {v0}, Lg0/b$c;->c()Lg0/f$d;

    move-result-object v0

    invoke-virtual {v0}, Lg0/f$d;->a()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    goto :goto_0

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2}, Lg0/f$e;->i()F

    move-result v0

    invoke-virtual {p2}, Lg0/f$e;->b()F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    div-float/2addr p2, v1

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object p3, p0, Lg0/b$a;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object p3, p0, Lg0/b$a;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    iget-object p0, p0, Lg0/b$a;->h:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p2, p2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final h([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/c;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iget v1, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private final i(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final j()V
    .locals 2

    iget-boolean v0, p0, Lg0/b$a;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg0/b$a;->m:Z

    iget-object p0, p0, Lg0/b$a;->a:Lg0/b$d;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lg0/b$d;->a(Lg0/b$d;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method private static final k(Lg0/b$a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg0/b$a;->j()V

    return-void
.end method

.method private final l()V
    .locals 1

    iget-object v0, p0, Lg0/b$a;->e:Landroid/view/ViewGroup;

    iget-object p0, p0, Lg0/b$a;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final m([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lg0/b$a;->h([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_1

    const-string v0, "ActivityLaunchAnimator"

    const-string v2, "Aborting the animation as no window is opening"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lg0/b$a;->l()V

    if-eqz v3, :cond_0

    invoke-direct {v6, v3}, Lg0/b$a;->i(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_0
    iget-object v0, v6, Lg0/b$a;->a:Lg0/b$d;

    invoke-static {v0, v1, v7, v1}, Lg0/b$d;->a(Lg0/b$d;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v5, 0x0

    move v8, v5

    :goto_0
    if-ge v8, v2, :cond_4

    aget-object v9, v0, v8

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v11, 0x7e3

    if-ne v10, v11, :cond_2

    move v10, v7

    goto :goto_1

    :cond_2
    move v10, v5

    :goto_1
    if-eqz v10, :cond_3

    move-object v5, v9

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object v5, v1

    :goto_2
    iget-object v0, v4, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    new-instance v2, Lg0/f$e;

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const/16 v16, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lg0/f$e;-><init>(IIIIFFILkotlin/jvm/internal/i;)V

    iget-object v0, v4, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_5

    iget-object v1, v6, Lg0/b$a;->b:Lg0/b$b;

    invoke-interface {v1, v0}, Lg0/b$b;->a(Landroid/app/TaskInfo;)I

    move-result v0

    goto :goto_3

    :cond_5
    iget v0, v4, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    :goto_3
    move v11, v0

    iget-object v0, v6, Lg0/b$a;->d:Lg0/f;

    iget-object v1, v6, Lg0/b$a;->a:Lg0/b$d;

    invoke-interface {v1}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lg0/f;->c(Landroid/view/View;Lg0/f$e;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lg0/b$a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Lg0/f$e;->q(F)V

    invoke-virtual {v2, v0}, Lg0/f$e;->m(F)V

    iget-object v1, v6, Lg0/b$a;->a:Lg0/b$d;

    new-instance v9, Lg0/b$a$a;

    move-object v0, v9

    move-object v10, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lg0/b$a$a;-><init>(Lg0/b$d;Lg0/b$a;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    iget-object v8, v6, Lg0/b$a;->d:Lg0/f;

    invoke-virtual {v9}, Lg0/b$a$a;->isBelowAnimatingWindow()Z

    move-result v0

    xor-int/lit8 v12, v0, 0x1

    invoke-virtual {v9}, Lg0/b$a$a;->isBelowAnimatingWindow()Z

    move-result v0

    xor-int/lit8 v13, v0, 0x1

    invoke-virtual/range {v8 .. v13}, Lg0/f;->d(Lg0/f$c;Lg0/f$e;IZZ)Lg0/f$a;

    move-result-object v0

    iput-object v0, v6, Lg0/b$a;->o:Lg0/f$a;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lg0/b$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg0/b$a;->n:Z

    invoke-direct {p0}, Lg0/b$a;->l()V

    iget-object v1, p0, Lg0/b$a;->o:Lg0/f$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lg0/f$a;->cancel()V

    :cond_1
    iget-object p0, p0, Lg0/b$a;->a:Lg0/b$d;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lg0/b$d;->a(Lg0/b$d;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Lg0/b$a;->l()V

    iget-boolean p1, p0, Lg0/b$a;->m:Z

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Lg0/b$a;->i(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lg0/b$a;->n:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p2, p4, p5}, Lg0/b$a;->m([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
