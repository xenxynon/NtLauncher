.class public final Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;,
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;,
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;
    }
.end annotation


# instance fields
.field private final progressProvider:Lm0/o;

.field private rootView:Landroid/view/ViewGroup;

.field private translationMax:F

.field private final viewsIdToTranslate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;"
        }
    .end annotation
.end field

.field private viewsToTranslate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Lm0/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;",
            "Lm0/o;",
            ")V"
        }
    .end annotation

    const-string v0, "viewsIdToTranslate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsIdToTranslate:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lm0/o;

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    return-void
.end method

.method private final registerViewsForAnimation(Landroid/view/ViewGroup;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lo5/j;->A(Ljava/lang/Iterable;)Lg6/g;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$registerViewsForAnimation$1;->INSTANCE:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$registerViewsForAnimation$1;

    invoke-static {p2, v0}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$registerViewsForAnimation$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$registerViewsForAnimation$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p2, v0}, Lg6/j;->p(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p1

    invoke-static {p1}, Lg6/j;->s(Lg6/g;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    return-void
.end method

.method private final translateViews(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, -0x1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component1()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component2()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component3()Ly5/p;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->getMultiplier()F

    move-result v3

    mul-float/2addr v3, p1

    int-to-float v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final init(Landroid/view/ViewGroup;F)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    iget-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lm0/o;

    invoke-interface {p1, p0}, Lt0/b;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionFinished()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translateViews(F)V

    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    invoke-super {p0}, Lm0/o$a;->onTransitionFinishing()V

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translateViews(F)V

    return-void
.end method

.method public onTransitionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsIdToTranslate:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->registerViewsForAnimation(Landroid/view/ViewGroup;Ljava/util/Set;)V

    return-void
.end method
