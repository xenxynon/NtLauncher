.class Lcom/android/launcher3/views/ClipIconView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFZFFLcom/android/launcher3/DeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/ClipIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ClipIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView$1;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView$1;->this$0:Lcom/android/launcher3/views/ClipIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/views/ClipIconView;->access$002(Lcom/android/launcher3/views/ClipIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
