.class public final Lv1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lkotlin/jvm/internal/z;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lv1/f;->d(Lkotlin/jvm/internal/z;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final b(Landroidx/viewpager2/widget/ViewPager2;JILandroid/animation/TimeInterpolator;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_0

    move p3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    :goto_0
    sub-int/2addr p3, v2

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v1

    aput p3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    new-instance v1, Lv1/e;

    invoke-direct {v1, v0, p0}, Lv1/e;-><init>(Lkotlin/jvm/internal/z;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lv1/f$a;

    invoke-direct {v0, p0}, Lv1/f$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic c(Landroidx/viewpager2/widget/ViewPager2;JILandroid/animation/TimeInterpolator;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    new-instance p4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lv1/f;->b(Landroidx/viewpager2/widget/ViewPager2;JILandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static final d(Lkotlin/jvm/internal/z;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$previousValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_scrollToNext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p0, Lkotlin/jvm/internal/z;->g:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->fakeDragBy(F)Z

    iput p2, p0, Lkotlin/jvm/internal/z;->g:I

    return-void
.end method
