.class public Lg0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/d$a;,
        Lg0/d$b;
    }
.end annotation


# static fields
.field public static final q:Lg0/d$a;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/Integer;

.field private d:Lcom/android/internal/jank/InteractionJankMonitor;

.field private e:Landroid/view/ViewGroup;

.field private final f:[I

.field private g:Landroid/view/GhostView;

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lg0/d$b;

.field private final l:Ln5/e;

.field private m:I

.field private final n:[I

.field private final o:Lg0/f$e;

.field private final p:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/d$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg0/d;->q:Lg0/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 9

    const-string v0, "ghostedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionJankMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/d;->b:Landroid/view/View;

    iput-object p2, p0, Lg0/d;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lg0/d;->d:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lg0/d;->f:[I

    const/16 p2, 0x9

    new-array p3, p2, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/4 v1, 0x0

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lg0/d;->h:[F

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lg0/d;->i:Landroid/graphics/Matrix;

    new-instance p2, Lg0/d$c;

    invoke-direct {p2, p0}, Lg0/d$c;-><init>(Lg0/d;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lg0/d;->l:Ln5/e;

    const/16 p2, 0xff

    iput p2, p0, Lg0/d;->m:I

    new-array p1, p1, [I

    iput-object p1, p0, Lg0/d;->n:[I

    new-instance p1, Lg0/f$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lg0/f$e;-><init>(IIIIFFILkotlin/jvm/internal/i;)V

    iput-object p1, p0, Lg0/d;->o:Lg0/f$e;

    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    instance-of p2, p1, Lg0/g;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lg0/d;->c(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lg0/d;->p:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A GhostedViewLaunchAnimatorController was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p3

    const-string p4, "getInstance()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lg0/d;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V

    return-void
.end method

.method private static final c(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic d(Lg0/d;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lg0/d;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final f()Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Lg0/d;->l:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Insets;

    return-object p0
.end method

.method private final i()Landroid/view/ViewGroupOverlay;
    .locals 1

    invoke-virtual {p0}, Lg0/d;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    const-string v0, "launchContainer.overlay"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public createAnimatorState()Lg0/f$e;
    .locals 10

    new-instance v9, Lg0/f$e;

    invoke-virtual {p0}, Lg0/d;->h()F

    move-result v5

    invoke-virtual {p0}, Lg0/d;->g()F

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lg0/f$e;-><init>(IIIIFFILkotlin/jvm/internal/i;)V

    invoke-virtual {p0, v9}, Lg0/d;->e(Lg0/f$e;)V

    return-object v9
.end method

.method public final e(Lg0/f$e;)V
    .locals 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg0/d;->b:Landroid/view/View;

    iget-object v1, p0, Lg0/d;->n:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-direct {p0}, Lg0/d;->f()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Lg0/d;->n:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lg0/f$e;->p(I)V

    iget-object v1, p0, Lg0/d;->n:[I

    aget v1, v1, v2

    iget-object v2, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lg0/f$e;->l(I)V

    iget-object v1, p0, Lg0/d;->n:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lg0/f$e;->n(I)V

    iget-object v1, p0, Lg0/d;->n:[I

    aget v1, v1, v2

    iget-object v2, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v2, p0

    invoke-static {v2}, La6/a;->b(F)I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, p0

    invoke-virtual {p1, v1}, Lg0/f$e;->o(I)V

    return-void
.end method

.method protected g()F
    .locals 3

    iget-object v0, p0, Lg0/d;->p:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lg0/d;->q:Lg0/d$a;

    invoke-virtual {v2, v0}, Lg0/d$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    :goto_0
    iget-object p0, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected h()F
    .locals 3

    iget-object v0, p0, Lg0/d;->p:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lg0/d;->q:Lg0/d$a;

    invoke-virtual {v2, v0}, Lg0/d$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    :goto_0
    iget-object p0, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method protected j(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lg0/d;->k:Lg0/d$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lg0/d$b;->f(FF)V

    :cond_0
    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 2

    iget-object p1, p0, Lg0/d;->g:Landroid/view/GhostView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lg0/d;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lg0/d;->d:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_1
    iget-object p1, p0, Lg0/d;->k:Lg0/d$b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lg0/d$b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lg0/d;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    invoke-direct {p0}, Lg0/d;->i()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lg0/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    instance-of v0, p1, Lg0/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lg0/g;

    invoke-interface {p1, v1}, Lg0/g;->setShouldBlockVisibilityChanges(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    return-void
.end method

.method public onLaunchAnimationProgress(Lg0/f$e;FF)V
    .locals 11

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lg0/d;->g:Landroid/view/GhostView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lg0/d;->j:Landroid/widget/FrameLayout;

    invoke-static {p3}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg0/f$e;->j()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/GhostView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/GhostView;->setVisibility(I)V

    iget-object p0, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/GhostView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/GhostView;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {p0, v0}, Lg0/d;->e(Lg0/f$e;)V

    invoke-virtual {p1}, Lg0/f$e;->f()I

    move-result v0

    iget-object v1, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v1}, Lg0/f$e;->f()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lg0/f$e;->g()I

    move-result v1

    iget-object v3, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v3}, Lg0/f$e;->g()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Lg0/f$e;->h()I

    move-result v3

    iget-object v4, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v4}, Lg0/f$e;->h()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Lg0/f$e;->a()I

    move-result v4

    iget-object v5, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v5}, Lg0/f$e;->a()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Lg0/f$e;->k()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v6}, Lg0/f$e;->k()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1}, Lg0/f$e;->e()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v7}, Lg0/f$e;->e()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0}, Lg0/d;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lg0/d;->i:Landroid/graphics/Matrix;

    invoke-static {v6, v7, v8}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_4
    invoke-virtual {p0}, Lg0/d;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lg0/d;->f:[I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v6, p0, Lg0/d;->i:Landroid/graphics/Matrix;

    iget-object v7, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v7}, Lg0/f$e;->c()F

    move-result v7

    iget-object v8, p0, Lg0/d;->f:[I

    aget v8, v8, v2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lg0/d;->o:Lg0/f$e;

    invoke-virtual {v8}, Lg0/f$e;->d()F

    move-result v8

    iget-object v9, p0, Lg0/d;->f:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v5, p0, Lg0/d;->i:Landroid/graphics/Matrix;

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lg0/d;->i:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lg0/d;->f()Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {p1}, Lg0/f$e;->h()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lg0/f$e;->f()I

    move-result v1

    iget v3, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Lg0/f$e;->g()I

    move-result v3

    iget v4, p2, Landroid/graphics/Insets;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lg0/f$e;->a()I

    move-result v4

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, p2

    iget-object p2, p0, Lg0/d;->f:[I

    aget p2, p2, v10

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTop(I)V

    iget-object p2, p0, Lg0/d;->f:[I

    aget p2, p2, v10

    sub-int/2addr v4, p2

    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->setBottom(I)V

    iget-object p2, p0, Lg0/d;->f:[I

    aget p2, p2, v2

    sub-int/2addr v1, p2

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setLeft(I)V

    iget-object p2, p0, Lg0/d;->f:[I

    aget p2, p2, v2

    sub-int/2addr v3, p2

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setRight(I)V

    iget-object p2, p0, Lg0/d;->k:Lg0/d$b;

    invoke-static {p2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lg0/d$b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lg0/f$e;->i()F

    move-result p3

    invoke-virtual {p1}, Lg0/f$e;->b()F

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lg0/d;->j(Landroid/graphics/drawable/Drawable;FF)V

    :cond_5
    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1

    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const-string p0, "GhostedViewLaunchAnimatorController"

    const-string p1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lg0/d;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg0/d;->j:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lg0/d;->i()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lg0/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object p1, p0, Lg0/d;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    :goto_0
    iput p1, p0, Lg0/d;->m:I

    new-instance p1, Lg0/d$b;

    iget-object v0, p0, Lg0/d;->p:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Lg0/d$b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lg0/d;->k:Lg0/d$b;

    iget-object v0, p0, Lg0/d;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    instance-of v0, p1, Lg0/g;

    if-eqz v0, :cond_3

    check-cast p1, Lg0/g;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lg0/g;->setShouldBlockVisibilityChanges(Z)V

    :cond_4
    iget-object p1, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {p0}, Lg0/d;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object p1

    iput-object p1, p0, Lg0/d;->g:Landroid/view/GhostView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_6
    iget-object v0, p0, Lg0/d;->h:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lg0/d;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lg0/d;->d:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object p0, p0, Lg0/d;->b:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_7
    return-void
.end method
