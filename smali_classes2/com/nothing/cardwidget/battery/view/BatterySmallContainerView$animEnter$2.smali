.class final Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroid/animation/Animator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;->this$0:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;->this$0:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;

    invoke-static {v0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->access$getAttributeHelper(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryEnter()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;->this$0:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;

    invoke-static {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->access$getBatteryView$p(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;->invoke()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
