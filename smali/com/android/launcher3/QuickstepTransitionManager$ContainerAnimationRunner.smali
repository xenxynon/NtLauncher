.class Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerAnimationRunner"
.end annotation


# instance fields
.field private final mDelegate:Lg0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/i<",
            "Landroid/view/IRemoteAnimationFinishedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/i<",
            "Landroid/view/IRemoteAnimationFinishedCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->mDelegate:Lg0/i;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Landroid/app/TaskInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->lambda$from$0(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/view/View;Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Lcom/android/launcher3/util/RunnableList;)Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->from(Landroid/view/View;Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Lcom/android/launcher3/util/RunnableList;)Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;

    move-result-object p0

    return-object p0
.end method

.method private static findViewWithBackground(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static from(Landroid/view/View;Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Lcom/android/launcher3/util/RunnableList;)Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->findViewWithBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lg0/b$d;->b(Landroid/view/View;Ljava/lang/Integer;)Lg0/b$d;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$1;-><init>(Lg0/b$d;)V

    new-instance p0, Lcom/android/launcher3/a4;

    invoke-direct {p0, p1}, Lcom/android/launcher3/a4;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;)V

    new-instance p1, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;

    invoke-direct {p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    new-instance p2, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;

    new-instance v1, Lg0/b$a;

    invoke-direct {v1, v0, p0, p1}, Lg0/b$a;-><init>(Lg0/b$d;Lg0/b$b;Lg0/b$e;)V

    invoke-direct {p2, v1}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;-><init>(Lg0/i;)V

    return-object p2
.end method

.method private static synthetic lambda$from$0(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Landroid/app/TaskInfo;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->getBackgroundColor()I

    move-result p0

    const/16 p1, 0xff

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->mDelegate:Lg0/i;

    invoke-interface {p0}, Lg0/i;->onAnimationCancelled()V

    return-void
.end method

.method public bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    check-cast p5, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->mDelegate:Lg0/i;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lg0/i;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
