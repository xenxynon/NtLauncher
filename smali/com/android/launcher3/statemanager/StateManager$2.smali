.class Lcom/android/launcher3/statemanager/StateManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statemanager/StateManager;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/statemanager/StateManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$2;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    iput p2, p0, Lcom/android/launcher3/statemanager/StateManager$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$2;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {p1}, Lcom/android/launcher3/statemanager/StateManager;->access$400(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->access$300(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/statemanager/StateManager$2;->val$index:I

    const/4 v0, 0x0

    aput-object v0, p1, p0

    return-void
.end method
