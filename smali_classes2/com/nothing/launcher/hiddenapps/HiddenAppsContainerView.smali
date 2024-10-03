.class public final Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/view/View$OnClickListener;
.implements Ls3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$a;
    }
.end annotation


# static fields
.field public static final D:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$a;

.field private static final E:Landroid/view/animation/PathInterpolator;

.field private static final F:Landroid/view/animation/PathInterpolator;


# instance fields
.field private A:I

.field private volatile B:Z

.field private final C:Lcom/nothing/launcher/hiddenapps/a;

.field private g:Landroid/widget/ImageButton;

.field private h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

.field private i:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "Lq2/m;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lq2/m;

.field private final k:Lcom/android/launcher3/allapps/AllAppsStore;

.field private l:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "Lq2/m;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/android/launcher3/pm/UserCache;

.field private o:Landroid/view/ViewGroup;

.field private p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field private final s:Landroid/graphics/Point;

.field private t:Z

.field private u:Landroid/animation/AnimatorSet;

.field private final v:Landroid/graphics/Rect;

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Paint;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->D:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->E:Landroid/view/animation/PathInterpolator;

    sput-object v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->F:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {p2}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    iput-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->s:Landroid/graphics/Point;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->v:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->w:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->x:Landroid/graphics/Paint;

    new-instance p3, Lcom/nothing/launcher/hiddenapps/a;

    invoke-direct {p3, p0}, Lcom/nothing/launcher/hiddenapps/a;-><init>(Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;)V

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->C:Lcom/nothing/launcher/hiddenapps/a;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    const-string v0, "lookupContext(context)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lq2/m;

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    iget-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->x:Landroid/graphics/Paint;

    invoke-static {p1}, Lz3/d;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07043e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->y:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->z:Z

    new-instance p3, Ll3/g;

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    invoke-direct {p3, v0, p2}, Ll3/g;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;)V

    iput-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->i:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    new-instance p2, Ll3/c;

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    invoke-direct {p2, v0, p3}, Ll3/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->l:Ll3/c;

    new-instance p2, Ll3/d;

    iget-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->i:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->l:Ll3/c;

    invoke-direct {p2, p3, v0, v1, v2}, Ll3/d;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V

    iput-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget-object p3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->i:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p3, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->l:Ll3/c;

    sget-object p3, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Ll3/c;->b(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "INSTANCE.get(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    iput-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->n:Lcom/android/launcher3/pm/UserCache;

    return-void
.end method

.method private final applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->v:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->w:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->d()V

    return-void
.end method

.method public static final synthetic b(Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;)Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    return-object p0
.end method

.method public static final synthetic c(Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;)Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    return-object p0
.end method

.method private final e()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const/4 v2, 0x0

    const-string v3, "rv"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->m()V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private final f(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->E:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$b;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p1, "ofFloat(view, \"alpha\", 1\u2026\n            })\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final g(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->E:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$c;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView$c;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p1, "ofFloat(view, \"alpha\", 0\u2026\n            })\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->B:Z

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private final l()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const/4 v1, 0x0

    const-string v2, "rv"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    instance-of v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_2

    const-class v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v0

    invoke-static {v0}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v0

    const-string v1, "sDefaultInterpolator"

    invoke-interface {v0, v1}, Ly2/g$f;->b(Ljava/lang/String;)Ly2/g$g;

    move-result-object v0

    sget-object v1, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->F:Landroid/view/animation/PathInterpolator;

    invoke-interface {v0, p0, v1}, Ly2/g$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final m()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const/4 v1, 0x0

    const-string v2, "rv"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->i:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-direct {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->l()V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->C:Lcom/nothing/launcher/hiddenapps/a;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_6
    invoke-direct {v0, v3}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v3, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->l:Ll3/c;

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    const-string v2, "focusedItemDecorator.focusListener"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ll3/c;->a(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->d()V

    return-void
.end method

.method private final o(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleView visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HiddenAppsContainerView"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->t:Z

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const-string v0, "rv"

    const-string v1, "headerView"

    const-string v2, "emptyView"

    const/4 v3, 0x0

    const-string v4, "scrimIcon"

    const-string v5, "hiddenAppsStore.apps"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v7

    :cond_1
    invoke-direct {p0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v4

    if-nez v4, :cond_2

    move v3, v6

    :cond_2
    xor-int/2addr v3, v6

    if-eqz v3, :cond_5

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v7

    :cond_3
    invoke-direct {p0, v3}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v3, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v7, v3

    :goto_0
    invoke-direct {p0, v7}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v7, v1

    :goto_1
    invoke-direct {p0, v7}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p1, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v7

    :cond_8
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    if-nez p1, :cond_9

    move v3, v6

    :cond_9
    xor-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_c

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    if-nez v2, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v7

    :cond_a
    invoke-direct {p0, v2}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v2, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v7, v2

    :goto_3
    invoke-direct {p0, v7}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    :cond_c
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v7, v0

    :goto_4
    invoke-direct {p0, v7}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_5
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    :goto_6
    return-void
.end method

.method private final q(Z)V
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    const-string v1, "headerView"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHiddenApps hasHiddenApps="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HiddenAppsContainerView"

    invoke-static {v3, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v3, "rv"

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_5
    const-string v0, "emptyView"

    if-eqz p1, :cond_9

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    if-nez v4, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v2

    :cond_6
    invoke-direct {p0, v4}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v4, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-direct {p0, v4}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o:Landroid/view/ViewGroup;

    if-nez v3, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_3

    :cond_9
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    if-nez v4, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v2

    :cond_a
    invoke-direct {p0, v4}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v4, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v2

    :cond_b
    invoke-direct {p0, v4}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o:Landroid/view/ViewGroup;

    if-nez v3, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_0

    const-string v0, "rv"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->v:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    const-string p1, "super.dispatchApplyWindowInsets(insets)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->z:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->w:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->A:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->A:I

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->w:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->y:I

    iget-object v7, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->x:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lb3/e;->d(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v0, "from(context)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p0, :cond_0

    const-string p0, "rv"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o(Z)V

    return-void
.end method

.method public final i(II)V
    .locals 7

    int-to-float p1, p1

    int-to-float p2, p2

    div-float p2, p1, p2

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v1, p2, v0

    const/4 v2, 0x0

    const-string v3, "scrimIcon"

    if-gez v1, :cond_1

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-gtz v1, :cond_9

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sub-float/2addr p2, v0

    const/4 v0, 0x4

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_5

    iget-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->t:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    iget-boolean p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->z:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p2, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_6
    div-float/2addr p1, v6

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p0, :cond_f

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p2, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_8
    div-float/2addr p1, v6

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p0, :cond_12

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j()V

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->u:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    move v4, v5

    :goto_2
    if-eqz v4, :cond_d

    iget-boolean p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->t:Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p2, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_b
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p2, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_d
    iget-boolean p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->z:Z

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p2, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_e
    div-float/2addr p1, v6

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p0, :cond_f

    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object v2, p0

    :goto_4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v6

    sub-float/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_7

    :cond_10
    iget-object p2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p2, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_11
    div-float/2addr p1, v6

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    if-nez p0, :cond_12

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move-object v2, p0

    :goto_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v6

    sub-float/2addr p1, p0

    neg-float p0, p1

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_7
    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->B:Z

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0b02a4

    if-eq p0, v0, :cond_0

    const v0, 0x7f0b02a9

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lz4/a;->i(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.empty_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->o:Landroid/view/ViewGroup;

    const v0, 0x7f0b02a7

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nt_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    iput-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    const v0, 0x7f0b02a9

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nt_hide_apps_edit_btn)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g:Landroid/widget/ImageButton;

    const v0, 0x7f0b01d2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.hidden_apps_scrim_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q:Landroid/widget/ImageView;

    const v0, 0x7f0b01d1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.hidden_apps_list_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    iput-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p:Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "headerView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsHeaderView;->setEditBtnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->g:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    const-string v0, "editBtnInEmptyView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->e()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v3, "rv"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->s:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    :cond_4
    iput-object v2, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_5
    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->s:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v1

    :cond_6
    return v1
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->x:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/d;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v3, "rv"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->s:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    :cond_4
    iput-object v4, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_5
    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->r:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->s:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    return v2

    :cond_6
    return v1
.end method

.method public final p([Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 3

    const-string v0, "hiddenAppInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-static {}, Lo5/d0;->f()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->t:Z

    if-eqz v0, :cond_1

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v2, v0

    :cond_0
    xor-int/lit8 p1, v2, 0x1

    invoke-direct {p0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->q(Z)V

    :cond_1
    return-void
.end method

.method public final r(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->A:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->j:Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    const-string v1, "activityContext.getDragLayer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const/4 v2, 0x0

    const-string v3, "rv"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->h:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    :goto_1
    return p0
.end method
