.class public final synthetic Lcom/android/launcher3/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:[F

.field public final synthetic h:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>([FLandroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/m3;->g:[F

    iput-object p2, p0, Lcom/android/launcher3/m3;->h:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/m3;->g:[F

    iget-object p0, p0, Lcom/android/launcher3/m3;->h:Landroid/animation/AnimatorSet;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->g([FLandroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method
