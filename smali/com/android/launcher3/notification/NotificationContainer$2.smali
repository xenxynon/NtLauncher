.class Lcom/android/launcher3/notification/NotificationContainer$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/notification/NotificationContainer;->onDragEnd(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationContainer;

.field final synthetic val$current:Lcom/android/launcher3/notification/NotificationMainView;

.field final synthetic val$willExit:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationContainer;ZLcom/android/launcher3/notification/NotificationMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->this$0:Lcom/android/launcher3/notification/NotificationContainer;

    iput-boolean p2, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$willExit:Z

    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$current:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->this$0:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationContainer;->access$200(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-boolean p1, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$willExit:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$current:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationMainView;->onChildDismissed()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->this$0:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationContainer;->access$300(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->showArrow(Z)V

    return-void
.end method
