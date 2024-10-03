.class public final Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $new:Lm2/a;

.field final synthetic $this_crossFadeAnimation:Lcom/nothing/cardwidget/battery/view/BatteryCellView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Lm2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;->$this_crossFadeAnimation:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;->$new:Lm2/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;->$this_crossFadeAnimation:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;->$new:Lm2/a;

    invoke-virtual {p1, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    return-void
.end method
