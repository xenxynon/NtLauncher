.class public final Lcom/nothing/launcher/setting/view/HomeScreenPreview;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/view/HomeScreenPreview$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/nothing/launcher/setting/view/HomeScreenPreview$a;


# instance fields
.field private g:Lg3/b;

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->i:Lcom/nothing/launcher/setting/view/HomeScreenPreview$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic a(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;Ly5/a;)Landroid/animation/ObjectAnimator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->f(Landroid/view/View;Ly5/a;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/nothing/launcher/setting/view/HomeScreenPreview;ILt4/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->i(ILt4/g;)V

    return-void
.end method

.method public static final synthetic c(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->j(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->h:Landroid/view/View;

    return-void
.end method

.method private final f(Landroid/view/View;Ly5/a;)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ly5/a<",
            "Ln5/t;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/nothing/launcher/setting/view/HomeScreenPreview$c;

    invoke-direct {p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$c;-><init>(Ly5/a;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p1, "ofFloat(scaledView, \"alp\u2026\n            })\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final g(Landroid/view/View;Ly5/a;)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ly5/a<",
            "Ln5/t;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/nothing/launcher/setting/view/HomeScreenPreview$d;

    invoke-direct {p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$d;-><init>(Ly5/a;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p1, "ofFloat(oldPreview, \"alp\u2026\n            })\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final h(ILt4/g;)Landroid/view/View;
    .locals 8

    new-instance v7, Lg3/b;

    invoke-virtual {p2}, Lt4/g;->c()Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    move-object v1, v0

    invoke-virtual {p2}, Lt4/g;->d()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg3/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;ILkotlin/jvm/internal/i;)V

    iput-object v7, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->g:Lg3/b;

    invoke-virtual {p2}, Lt4/g;->a()Lcom/android/launcher3/model/BgDataModel;

    move-result-object p0

    invoke-virtual {p2}, Lt4/g;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lt4/g;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lt4/g;->e()[I

    move-result-object p2

    aget p1, p2, p1

    invoke-virtual {v7, p0, v0, v1, p1}, Lg3/b;->f(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final i(ILt4/g;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->g:Lg3/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg3/b;->destroy()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->h(ILt4/g;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;

    invoke-direct {p2, p0, p1}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$f;-><init>(Lcom/nothing/launcher/setting/view/HomeScreenPreview;Landroid/view/View;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$e;

    invoke-direct {v0, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$e;-><init>(Ly5/a;)V

    invoke-direct {p0, p1, v0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->g(Landroid/view/View;Ly5/a;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    invoke-interface {p2}, Ly5/a;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final j(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleViewAndAdd width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenPreview"

    invoke-static {v2, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-static {v1, v2}, Le6/e;->d(FF)F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr p0, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr p0, v3

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object p2
.end method


# virtual methods
.method public final e(ILt4/g;)V
    .locals 1

    const-string v0, "previewData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->i(ILt4/g;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;-><init>(Landroid/view/View;Lcom/nothing/launcher/setting/view/HomeScreenPreview;ILt4/g;)V

    invoke-static {p0, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object p0

    const-string p1, "View.doOnPreDraw(\n    cr\u2026dd(this) { action(this) }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->g:Lg3/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg3/b;->q()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->g:Lg3/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg3/b;->destroy()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
