.class public final Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/PagedView<",
        "TT;>;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field public static final m:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;

.field private static final n:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Lcom/android/launcher3/Launcher;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Paint;

.field private j:I

.field private k:I

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->m:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;

    new-instance v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$a;

    invoke-direct {v0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$a;-><init>()V

    sput-object v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->n:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "lookupContext(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->h:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->i:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->k:I

    const v0, 0x1060017

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07043e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->j:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l:F

    return-void
.end method

.method public static final synthetic i()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->n:Landroid/util/FloatProperty;

    return-object v0
.end method

.method private final l(Landroid/view/View;FF)Z
    .locals 1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pointInView x="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",y="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rect="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NTHiddenAppsPagedView"

    invoke-static {v0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    div-float v4, v2, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "determineScrollingStart absDeltaX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NTHiddenAppsPagedView"

    invoke-static {v6, v5}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v6, v5

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_1

    int-to-float v1, v5

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    :cond_2
    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.nothing.launcher.allapps.search.NTLauncherAllAppsContainerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    iget-object v2, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    const-string v5, "activeRecyclerView"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionY()F

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l(Landroid/view/View;FF)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v2, :cond_4

    cmpl-float v2, v0, v3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-virtual {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_4
    cmpg-float v2, v0, v3

    if-gez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-virtual {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->p()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-virtual {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const v0, 0x7f0b032e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v1

    const v2, 0x7f0b0395

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const-string v2, "searchContainerLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionY()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "tabLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionY()F

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    const v0, 0x3f860a92

    cmpl-float v0, v4, v0

    if-lez v0, :cond_a

    return-void

    :cond_a
    const v0, 0x3f060a92

    cmpl-float v1, v4, v0

    if-lez v1, :cond_b

    sub-float/2addr v4, v0

    div-float/2addr v4, v0

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    int-to-float v1, v5

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    invoke-super {p0, p1, v1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_b
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getContentAlpha()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l:F

    return p0
.end method

.method protected isSignificantMove(FI)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->n()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPageBeginTransition()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->k:I

    const-string p0, "NTHiddenAppsPagedView"

    const-string v0, "onPageBeginTransition"

    invoke-static {p0, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPageEndTransition()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    const-string v0, "NTHiddenAppsPagedView"

    const-string v1, "onPageEndTransition"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->k:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->onScrollOverPageChanged()V

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k()V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    invoke-interface {p2, p3, p4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p2

    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p3

    add-int/2addr p2, p3

    sub-int p3, p2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    iget-object p4, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4, p3, p2}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->i(II)V

    :cond_1
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {p2, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onScrollOverPageChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollOverPageChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    iput v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollOverPageChanged destinationPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NTHiddenAppsPagedView"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h()V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iput p1, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l:F

    return-void
.end method

.method public final setContentAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->h:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.nothing.launcher.allapps.search.NTLauncherAllAppsContainerView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v3

    const-string v4, "activeRecyclerView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionY()F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->l(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {v2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {v2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    return-void
.end method
