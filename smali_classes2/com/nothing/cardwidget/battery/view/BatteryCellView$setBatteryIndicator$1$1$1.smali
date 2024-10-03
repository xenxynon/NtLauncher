.class public final Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryIndicator(Landroid/widget/ImageView;Lm2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/battery/view/BatteryCellView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;->this$0:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;->this$0:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-static {p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->access$getBatteryIndicatorIv$p(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;->this$0:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-static {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->access$getBatteryDeviceIv$p(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, -0x3e500000    # -22.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;->this$0:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-static {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->access$getBatteryIndicatorIv$p(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
