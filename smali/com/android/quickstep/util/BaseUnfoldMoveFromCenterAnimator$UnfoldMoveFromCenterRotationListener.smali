.class Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnfoldMoveFromCenterRotationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;->this$0:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;-><init>(Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;->this$0:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;

    invoke-static {v0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->access$100(Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->updateDisplayProperties(I)V

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;->this$0:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->updateRegisteredViewsIfNeeded()V

    return-void
.end method
