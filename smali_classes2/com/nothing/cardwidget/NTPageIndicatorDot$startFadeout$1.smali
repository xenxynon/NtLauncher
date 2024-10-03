.class public final Lcom/nothing/cardwidget/NTPageIndicatorDot$startFadeout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/NTPageIndicatorDot;->startFadeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$startFadeout$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$startFadeout$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$hideIndicator(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
