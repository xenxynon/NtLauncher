.class public final Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;
.super Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/launcher/allapps/search/NTFloatingHeaderView$a;
.implements Ls3/d;


# instance fields
.field private final g:Landroid/graphics/Paint;

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lz3/d;->a:Lz3/d;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const-string v1, "mActivityContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lz3/d;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lz3/d;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, p1}, Lz3/d;->a(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07043e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->h:I

    return-void
.end method

.method public static final synthetic k(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic l(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic m(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public static final synthetic n(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    return p0
.end method

.method private final q()V
    .locals 2

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b0393

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lz3/d;->a:Lz3/d;

    invoke-virtual {v1}, Lz3/d;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->getMixedColorOnHeader()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v5

    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    if-lez v0, :cond_0

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v5

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v6, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->h:I

    int-to-float v7, v6

    aput v7, v2, v3

    const/4 v3, 0x1

    int-to-float v7, v6

    aput v7, v2, v3

    const/4 v3, 0x2

    int-to-float v7, v6

    aput v7, v2, v3

    const/4 v3, 0x3

    int-to-float v6, v6

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    const-string p0, "mHeaderPaint"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb3/e;->b(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->h:I

    iget-object v7, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->g:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lb3/e;->d(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getMixedColorOnHeader()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f06035c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public invalidateHeader()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected isNavBarScrimAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onAttachedToWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    sget-object v0, Lg4/g;->n:Lg4/g$a;

    new-instance v1, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$a;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$a;-><init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lg4/g$a;->c(Ly5/l;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onDetachedFromWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    sget-object p0, Lg4/g;->n:Lg4/g$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg4/g$a;->c(Ly5/l;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const-string v1, "mActivityContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b;-><init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->g:Landroid/graphics/Paint;

    sget-object v0, Lz3/d;->a:Lz3/d;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const-string v2, "mActivityContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lz3/d;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lz3/d;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lz3/d;->g(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->q()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public final p()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
