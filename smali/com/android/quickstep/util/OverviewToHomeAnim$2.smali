.class Lcom/android/quickstep/util/OverviewToHomeAnim$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OverviewToHomeAnim;->animateWithVelocity(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/OverviewToHomeAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$2;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$2;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/quickstep/util/OverviewToHomeAnim;->access$202(Lcom/android/quickstep/util/OverviewToHomeAnim;Z)Z

    iget-object p0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$2;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    invoke-static {p0}, Lcom/android/quickstep/util/OverviewToHomeAnim;->access$100(Lcom/android/quickstep/util/OverviewToHomeAnim;)V

    return-void
.end method